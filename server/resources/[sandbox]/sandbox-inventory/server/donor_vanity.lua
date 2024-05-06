function RegisterDonorVanityItemsCallbacks()
	Callbacks:RegisterServerCallback("Inventory:DonorSales:GetPending", function(source, data, cb)
		local plyr = Fetch:Source(source)
		if plyr then
			local pending = Inventory.Donator:GetPending(plyr:GetData("Identifier"), true)
			local mainMenuItems = {}
			for k, v in ipairs(pending) do
				if not v.redeemed then
					table.insert(mainMenuItems, {
						label = string.format("%sx Vanity Item", 1),
						description = string.format("UID: %s", v._id),
						disabled = v.redeemed,
					})
				end
			end

			for k, v in ipairs(pending) do
				if v.redeemed then
					table.insert(mainMenuItems, {
						label = string.format("%sx Vanity Item", 1),
						description = string.format("UID: %s", v._id),
						disabled = v.redeemed,
					})
				end
			end

			cb({
				main = {
					label = "Unredeemed Vanity Item Purchases",
					items = mainMenuItems,
				},
			})
			return
		end

		cb(false)
	end)
	Callbacks:RegisterServerCallback("Inventory:DonorSales:SubmitVanityItem", function(source, data, cb)
		local plyr = Fetch:Source(source)
		local char = plyr:GetData("Character")
		if plyr then
			local label = data.vanity_item_label
			local description = data.vanity_item_description
			local image = data.vanity_item_image
			local amount = tonumber(data.vanity_item_amount)
			local action = data.vanity_item_action or ""

			if label and description and image and amount and amount > 0 then
				local pending = Inventory.Donator:GetPending(plyr:GetData("Identifier"), true)
				if #pending > 0 then
					local foundToken = nil
					for k, v in ipairs(pending) do
						if not v.redeemed then
							foundToken = v._id
							break
						end
					end

					if Inventory.Donator:RemovePending(plyr:GetData("Identifier"), foundToken) then
						Inventory:AddItem(char:GetData("SID"), "vanityitem", amount, {
							CustomItemLabel = label,
							CustomItemImage = image,
							CustomItemText = description or "",
							CustomItemAction = action,
						}, 1)

						Execute:Client(source, "Notification", "Success", "Found unused vanity token!")
					else
						Execute:Client(source, "Notification", "Error", "Uh this shouldn't happen.")
					end
				else
					Execute:Client(source, "Notification", "Error", "No vanity tokens found.")
				end
			else
				Execute:Client(
					source,
					"Notification",
					"Error",
					"Something went wrong. Try again and make sure all fields are filled out properly!"
				)
			end

			cb(true)
			return
		end

		cb(false)
	end)
	Callbacks:RegisterServerCallback("Inventory:DonorSales:GetTokens", function(source, data, cb)
		local plyr = Fetch:Source(source)
        if plyr then
            local res = Inventory.Donator:GetPending(plyr:GetData("Identifier"))
            cb({available = #res or 0})
        else
            cb(false)
        end
	end)

	Chat:RegisterAdminCommand("adddonatoritem", function(source, args, rawCommand)
		local license = table.unpack(args)

		if license then
			local success = Inventory.Donator:AddPending(license)
			if success then
				Chat.Send.System:Single(source, "Successfully added donator vanity item token")
			else
				Chat.Send.System:Single(source, "Failed to add donator vanity item token")
			end
		end
	end, {
		help = "[Admin] Add a players donator item",
		params = {
			{
				name = "Player Identifier",
				help = "Player License",
			},
		},
	}, 1)

	Chat:RegisterAdminCommand("getdonatoritem", function(source, args, rawCommand)
		local license = table.unpack(args)

		if license then
			local res = Inventory.Donator:GetPending(license, true)
			if res then
				local message = string.format("Player Identifier: %s<br>", license)
				for k, v in ipairs(res) do
					message = message
						.. string.format("<br>ID: %s<br>Redeemed: %s<br>", v._id, v.redeemed and "Yes" or "No")
				end
				Chat.Send.System:Single(source, message)
			else
				Chat.Send.System:Single(source, "Failed")
			end
		end
	end, {
		help = "[Admin] Check donator vanity items",
		params = {
			{
				name = "Player Identifier",
				help = "Player License",
			},
		},
	}, 1)

	Chat:RegisterAdminCommand("removedonatoritem", function(source, args, rawCommand)
		local license, tokenId = table.unpack(args)
		if license and tokenId then
			local success = Inventory.Donator:DeletePending(license, tokenId)
			if success then
				Chat.Send.System:Single(source, "Successfully Removed Token")
			else
				Chat.Send.System:Single(source, "Failed to remove token")
			end
		end
	end, {
		help = "[Admin] Remove donator item",
		params = {
			{
				name = "Player Identifier",
				help = "Player License",
			},
			{
				name = "ID",
				help = "Donator Vanity Item Pending Token",
			},
		},
	}, 2)

	Inventory.Donator = {
		AddPending = function(self, playerIdentifier, itemName, itemCount, data)
			local p = promise.new()
			Database.Game:insertOne({
				collection = "donator_items",
				document = {
					player = playerIdentifier,
					redeemed = false,
					data = data,
				},
			}, function(success, inserted)
				p:resolve(success and inserted > 0)
			end)

			return Citizen.Await(p)
		end,
		GetPending = function(self, playerIdentifier, includeRedeemed)
			local p = promise.new()

			local stupid = false
			if includeRedeemed then
				stupid = nil
			end

			Database.Game:find({
				collection = "donator_items",
				query = {
					player = playerIdentifier,
					redeemed = stupid,
				},
			}, function(success, results)
				if success and #results > 0 then
					p:resolve(results)
				else
					p:resolve({})
				end
			end)

			return Citizen.Await(p)
		end,
		Check = function(self, playerIdentifier)
            local p = promise.new()
            Database.Game:findOne({
                collection = "donator_items",
                query = {
                    player = playerIdentifier,
                },
            }, function(success, results)
                if success then
                    p:resolve(results)
                else
                    p:resolve(false)
                end
            end)

            local res = Citizen.Await(p)

            if res and res[1]?.player and res[1]?.redeemed == false then
                return res[1]
            end
            return false
        end,
		RemovePending = function(self, playerIdentifier, id)
			local p = promise.new()

			Database.Game:updateOne({
				collection = "donator_items",
				query = {
					player = playerIdentifier,
					_id = id,
				},
				update = {
					["$set"] = {
						redeemed = true,
					},
				},
			}, function(success, updated)
				p:resolve(success)
			end)

			return Citizen.Await(p)
		end,
		DeletePending = function(self, playerIdentifier, id)
			local p = promise.new()

			Database.Game:deleteOne({
				collection = "donator_items",
				query = {
					player = playerIdentifier,
					_id = id,
				},
			}, function(success)
				p:resolve(success)
			end)

			return Citizen.Await(p)
		end,
	}
end

function TebexAddVanityItem(source, args)
	local sid = table.unpack(args)
	sid = tonumber(sid)
	if sid == nil or sid == 0 then
		Logger:Warn("Donator Vanity Item", "Provided SID (server ID) was empty.", {
			console = true,
			file = false,
			database = true,
			discord = {
				embed = true,
				type = "error",
				webhook = GetConvar("discord_donation_webhook", ""),
			},
		})
		return
	end
	local player = Fetch:Source(sid)
	if player then
		local license = player:GetData("Identifier")
		if license then
			local success = Inventory.Donator:AddPending(license)
			if success then
				Chat.Send.System:Single(sid, "Successfully Added Donator Vanity Item Token")
			else
				Chat.Send.System:Single(sid, "Failed")
			end
		end
	end
end
RegisterCommand("tebexaddvanityitem", TebexAddVanityItem, true)
