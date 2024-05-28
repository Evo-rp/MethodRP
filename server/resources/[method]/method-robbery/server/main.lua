_accessCodes = {
	paleto = {},
}

function deepcopy(orig)
	local orig_type = type(orig)
	local copy
	if orig_type == "table" then
		copy = {}
		for orig_key, orig_value in next, orig, nil do
			copy[deepcopy(orig_key)] = deepcopy(orig_value)
		end
		setmetatable(copy, deepcopy(getmetatable(orig)))
	else -- number, string, boolean, etc
		copy = orig
	end
	return copy
end

AddEventHandler("Robbery:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Fetch = exports["method-base"]:FetchComponent("Fetch")
	Logger = exports["method-base"]:FetchComponent("Logger")
	Utils = exports["method-base"]:FetchComponent("Utils")
	Callbacks = exports["method-base"]:FetchComponent("Callbacks")
	Middleware = exports["method-base"]:FetchComponent("Middleware")
	Inventory = exports["method-base"]:FetchComponent("Inventory")
	Loot = exports["method-base"]:FetchComponent("Loot")
	Wallet = exports["method-base"]:FetchComponent("Wallet")
	Execute = exports["method-base"]:FetchComponent("Execute")
	Chat = exports["method-base"]:FetchComponent("Chat")
	Sounds = exports["method-base"]:FetchComponent("Sounds")
	Tasks = exports["method-base"]:FetchComponent("Tasks")
	EmergencyAlerts = exports["method-base"]:FetchComponent("EmergencyAlerts")
	Properties = exports["method-base"]:FetchComponent("Properties")
	Routing = exports["method-base"]:FetchComponent("Routing")
	Status = exports["method-base"]:FetchComponent("Status")
	WaitList = exports["method-base"]:FetchComponent("WaitList")
	Reputation = exports["method-base"]:FetchComponent("Reputation")
	Robbery = exports["method-base"]:FetchComponent("Robbery")
	Jobs = exports["method-base"]:FetchComponent("Jobs")
	Doors = exports["method-base"]:FetchComponent("Doors")
	Crypto = exports["method-base"]:FetchComponent("Crypto")
	Phone = exports["method-base"]:FetchComponent("Phone")
	Vehicles = exports["method-base"]:FetchComponent("Vehicles")
	Vendor = exports["method-base"]:FetchComponent("Vendor")
	CCTV = exports["method-base"]:FetchComponent("CCTV")
	Crafting = exports["method-base"]:FetchComponent("Crafting")
end

local _sellerLocs = {
	["0"] = vector4(728.761, 2522.836, 77.993, 93.041), -- Sunday
	["1"] = vector4(-106.182, 6215.862, 31.382, 47.518), -- Monday
	["2"] = vector4(1000.842, 101.158, 83.991, 68.931), -- Tuesday
	["3"] = vector4(440.960, -2206.147, 25.769, 61.780), -- Wednesday
	["4"] = vector4(1576.270, 2260.446, 72.965, 270.368), -- Thursday
	["5"] = vector4(-106.182, 6215.862, 31.382, 47.518), -- Friday
	["6"] = vector4(440.960, -2206.147, 25.769, 61.780), -- Saturday
}

local _robTools = {
	{ id = 1, item = "sequencer", coin = "MALD", price = 15, qty = 10, vpn = false },
	{ id = 2, item = "thermite", coin = "MALD", price = 50, qty = 10, vpn = false },
	{ id = 3, item = "adv_electronics_kit", coin = "MALD", price = 100, qty = 10, vpn = true },
	{ id = 3, item = "adv_electronics_kit", coin = "HEIST", price = 15, qty = 10, vpn = true, requireCurrency = true },
}

local _toolsForSale = {
	{ id = 1, item = "vpn", coin = "PLEB", price = 100, qty = 10, vpn = false },
}

local _heistTools = {
	{ id = 1, item = "cyan_dongle", coin = "HEIST", price = 10, qty = 5, vpn = true, requireCurrency = true },
	{ id = 2, item = "blue_dongle", coin = "HEIST", price = 25, qty = 5, vpn = true, requireCurrency = true },
	{ id = 3, item = "red_dongle", coin = "HEIST", price = 40, qty = 5, vpn = true, requireCurrency = true },
	{ id = 4, item = "purple_dongle", coin = "HEIST", price = 50, qty = 5, vpn = true, requireCurrency = true },
	{ id = 5, item = "yellow_dongle", coin = "HEIST", price = 65, qty = 5, vpn = true, requireCurrency = true },
}

local _schemSellerLocs = {
	["0"] = vector4(-528.146, -800.314, 29.672, 318.919), -- Sunday
	["1"] = vector4(-528.146, -800.314, 29.672, 318.919), -- Monday
	["2"] = vector4(-528.146, -800.314, 29.672, 318.919), -- Tuesday
	["3"] = vector4(-528.146, -800.314, 29.672, 318.919), -- Wednesday
	["4"] = vector4(-528.146, -800.314, 29.672, 318.919), -- Thursday
	["5"] = vector4(-528.146, -800.314, 29.672, 318.919), -- Friday
	["6"] = vector4(-528.146, -800.314, 29.672, 318.919), -- Saturday
}

local _schemSeller = {
	{
		id = 1,
		item = "schematic_thermite",
		coin = "MALD",
		price = 420,
		qty = 1,
		vpn = false,
		limited = {
			id = 1,
			qty = 1,
		},
	},
	{
		id = 2,
		item = "schematic_blindfold",
		coin = "MALD",
		price = 200,
		qty = 1,
		vpn = false,
		limited = {
			id = 1,
			qty = 1,
		},
	},
	{
		id = 2,
		item = "schematic_radio_extendo",
		coin = "MALD",
		price = 200,
		qty = 2,
		vpn = false,
		limited = {
			id = 1,
			qty = 1,
		},
	},
}

function table.copy(t)
	local u = {}
	for k, v in pairs(t) do
		u[k] = v
	end
	return setmetatable(u, getmetatable(t))
end

function hasValue(tbl, value)
	for k, v in ipairs(tbl) do
		if v == value or (type(v) == "table" and hasValue(v, value)) then
			return true
		end
	end
	return false
end

local function dumbFuckingShitCuntFucker(type, amount)
	if not amount or amount > 1 then
		return type .. "s"
	end
	return type
end

function GetFormattedTimeFromSeconds(seconds)
	local days = 0
	local hours = Utils:Round(seconds / 3600, 0)
	if hours >= 24 then
		days = math.floor(hours / 24)
		hours = math.ceil(hours - (days * 24))
	end

	local timeString
	if days > 0 or hours > 0 then
		if days > 1 then
			if hours > 0 then
				timeString = string.format(
					"%d %s and %d %s",
					days,
					dumbFuckingShitCuntFucker("day", days),
					hours,
					dumbFuckingShitCuntFucker("hour", hours)
				)
			else
				timeString = string.format("%d %s", days, dumbFuckingShitCuntFucker("day", days))
			end
		else
			timeString = string.format("%d %s", hours, dumbFuckingShitCuntFucker("hour", hours))
		end
	else
		local minutes = Utils:Round(seconds / 60, 0)
		timeString = string.format("%d %s", minutes, dumbFuckingShitCuntFucker("minute", minutes))
	end
	return timeString
end

AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("Robbery", {
		"Fetch",
		"Logger",
		"Utils",
		"Callbacks",
		"Middleware",
		"Inventory",
		"Loot",
		"Wallet",
		"Execute",
		"Chat",
		"Sounds",
		"Tasks",
		"EmergencyAlerts",
		"Properties",
		"Routing",
		"Status",
		"WaitList",
		"Reputation",
		"Robbery",
		"Jobs",
		"Doors",
		"Crypto",
		"Phone",
		"Vehicles",
		"Vendor",
		"CCTV",
		"Crafting",
	}, function(error)
		if #error > 0 then
			return
		end
		RetrieveComponents()
		RegisterCommands()
		SetupQueues()
		TriggerEvent("Robbery:Server:Setup")

		GlobalState["RobberiesDisabled"] = false

		_accessCodes.paleto = {}
		table.insert(_accessCodes.paleto, {
			label = "Office #1",
			code = math.random(1000, 9999),
		})
		table.insert(_accessCodes.paleto, {
			label = "Office #2",
			code = math.random(1000, 9999),
		})
		table.insert(_accessCodes.paleto, {
			label = "Office #3",
			code = math.random(1000, 9999),
		})
		table.insert(_accessCodes.paleto, {
			label = "Office #3 Safe",
			code = math.random(1000, 9999),
		})

		local pos = _sellerLocs[tostring(os.date("%w"))]
		Vendor:Create("HeistBlocks", "ped", "Devices", GetHashKey("HC_Hacker"), {
			coords = vector3(700.381, -2185.477, 28.796),
			heading = 352.880,
			scenario = "WORLD_HUMAN_TOURIST_MOBILE",
		}, _heistTools, "badge-dollar", "View Offers", false, 1)

		Vendor:Create("HeistShit", "ped", "Rob Tools", GetHashKey("CS_NervousRon"), {
			coords = vector3(pos.x, pos.y, pos.z),
			heading = pos.w,
		}, _toolsForSale, "badge-dollar", "View Offers", 1)

		Vendor:Create("HeistTools", "ped", "Tools", GetHashKey("IG_MONEY"), {
			coords = vector3(-1985.437, -285.549, 47.106),
			heading = 239.583,
			anim = {
				animDict = "mp_fbi_heist",
				anim = "loop",
			},
		}, _robTools, "badge-dollar", "View Offers", false, 1)

		local pos2 = _schemSellerLocs[tostring(os.date("%w"))]
		Vendor:Create("ScamSchemSeller", "ped", "Dom's Deals", GetHashKey("a_m_m_eastsa_02"), {
			coords = vector3(pos2.x, pos2.y, pos2.z),
			heading = pos2.w,
		}, _schemSeller, "badge-dollar", "View Offers")

		Crypto.Coin:Create("HEIST", "HEIST", 100, false, false)

		Middleware:Add("Characters:Spawning", function(source)
			TriggerClientEvent("Robbery:Client:State:Init", source, _bankStates)
		end)

		Callbacks:RegisterServerCallback("Robbery:Holdup:Do", function(source, data, cb)
			local pChar = Fetch:CharacterSource(source)
			local tChar = Fetch:CharacterSource(data)

			if pChar ~= nil and tChar ~= nil then
				local pPed = GetPlayerPed(source)
				local pLoc = GetEntityCoords(pPed)
				local tPed = GetPlayerPed(data)
				local tLoc = GetEntityCoords(pPed)

				if #(vector3(pLoc.x, pLoc.y, pLoc.z) - vector3(tLoc.x, tLoc.y, tLoc.z)) <= 3.0 then
					local amt = tChar:GetData("Cash")
					if amt == 0 or Wallet:Modify(data, -amt) then
						if amt == 0 or Wallet:Modify(source, amt) then
							cb({
								invType = 1,
								owner = tChar:GetData("SID"),
							})
						end
					end
				end
			else
				cb(false)
			end
		end)

		Callbacks:RegisterServerCallback("Robbery:Pickup", function(source, data, cb)
			local char = Fetch:CharacterSource(source)
			if char ~= nil then
				if #(_pickups[char:GetData("SID")] or {}) > 0 then
					for i = #_pickups[char:GetData("SID")], 1, -1 do
						local v = _pickups[char:GetData("SID")][i]
						local givingItem = Inventory.Items:GetData(v.giving)
						local receivingItem = Inventory.Items:GetData(v.receiving)

						if Inventory.Items:Remove(char:GetData("SID"), 1, v.giving, 1) then
							if Inventory:AddItem(char:GetData("SID"), v.receiving, 1, {}, 1) then
								table.remove(_pickups[char:GetData("SID")], i)
							else
								Inventory:AddItem(char:GetData("SID"), v.giving, 1, {}, 1)
								Execute:Client(
									source,
									"Notification",
									"Error",
									string.format("Failed Adding x1 %s", receivingItem.label),
									6000
								)
							end
						else
							Execute:Client(
								source,
								"Notification",
								"Error",
								string.format("Failed Taking x1 %s", givingItem.label),
								6000
							)
						end
					end
					for k, v in pairs(_pickups[char:GetData("SID")]) do
					end

					Execute:Client(source, "Notification", "Success", "You've Picked Up All Available Items", 6000)
				else
					Execute:Client(source, "Notification", "Error", "You Have Nothing To Pickup", 6000)
				end
			end
		end)
	end)
end)

AddEventHandler("Proxy:Shared:RegisterReady", function()
	exports["method-base"]:RegisterComponent("Robbery", _ROBBERY)
end)

_ROBBERY = {
	TriggerPDAlert = function(self, source, coords, code, title, blip, description, cameraGroup, isArea)
		Callbacks:ClientCallback(source, "EmergencyAlerts:GetStreetName", coords, function(location)
			EmergencyAlerts:Create(
				code,
				title,
				1,
				location,
				description,
				false,
				blip,
				false,
				isArea or false,
				cameraGroup or false
			)
		end)
	end,
	GetAccessCodes = function(self, bankId)
		return _accessCodes[bankId]
	end,
	State = {
		Set = function(self, bank, state)
			_bankStates[bank] = state
			TriggerClientEvent("Robbery:Client:State:Set", -1, bank, state)
		end,
		Update = function(self, bank, key, value, tableId)
			if _bankStates[bank] ~= nil then
				if tableId then
					_bankStates[bank][tableId] = _bankStates[bank][tableId] or {}
					_bankStates[bank][tableId][key] = value
				else
					_bankStates[bank][key] = value
				end
				TriggerClientEvent("Robbery:Client:State:Update", -1, bank, key, value, tableId)
			end
		end,
	},
}

RegisterNetEvent("Robbery:Server:Idiot", function(id)
	local src = source
	local char = Fetch:CharacterSource(src)
	if char ~= nil then
		Logger:Info(
			"Exploit",
			string.format(
				"%s %s (%s) Exploited Into A Kill Zone (%s) That Was Still Active, They're Now Dead As Fuck",
				char:GetData("First"),
				char:GetData("Last"),
				char:GetData("SID"),
				id
			),
			{
				console = true,
				file = true,
				database = true,
				discord = {
					embed = true,
					type = "info",
					webhook = GetConvar("discord_kill_webhook", ""),
				},
			}
		)
	end
end)
