local _DumpsterEntities = {
	{
		objectID = 666561306,
		description = "Blue Dumpster",
	},
	{
		objectID = 218085040,
		description = "Light Blue Dumpster",
	},
	{
		objectID = -58485588,
		description = "Gray Dumpster",
	},
	{
		objectID = 682791951,
		description = "Big Blue Dumpster",
	},
	{
		objectID = -206690185,
		description = "Big Green Dumpster",
	},
	{
		objectID = 364445978,
		description = "Big Green Skip Bin",
	},
	-- {
	-- 	objectID = 143369,
	-- 	description = "Small Bin",
	-- },
	-- {
	-- 	objectID = -329415894,
	-- 	description = "Small Trash Can",
	-- },
	-- {
	-- 	objectID = 1614656839,
	-- 	description = "Small Trash Can",
	-- },
	-- {
	-- 	objectID = 1437508529,
	-- 	description = "Small Trash Can",
	-- },
	-- {
	-- 	objectID = -1096777189,
	-- 	description = "Small Trash Can",
	-- },
	-- {
	-- 	objectID = -228596739,
	-- 	description = "Small Trash Can",
	-- },
	-- {
	-- 	objectID = 1329570871,
	-- 	description = "Small Trash Can",
	-- },
}

local _searching = false

AddEventHandler("Labor:Client:Setup", function()
	RegisterDumpsterStartup()
end)

function RegisterDumpsterStartup()
	for k, v in ipairs(_DumpsterEntities) do
		Targeting:AddObject(v.objectID, "dumpster", {
			{
				icon = "magnifying-glass",
				isEnabled = function(data, entityData)
					if entityData ~= nil and v.objectID == entityData.model then
						return true
					end
					return false
				end,
				text = "Search Trash",
				event = "Inventory:Client:SearchDumpster",
				data = {},
				minDist = 1.5,
			},
			{
				icon = "box-open",
				isEnabled = function(data, entityData)
					if entityData ~= nil and v.objectID == entityData.model then
						return true
					end
					return false
				end,
				text = "Open Trash",
				event = "Inventory:Client:OpenDumpster",
				data = {},
				minDist = 1.5,
			},
		}, 2.0)
	end
end

AddEventHandler("Inventory:Client:OpenDumpster", function(entity, data)
	-- print(entity.endCoords, entity.entity, data)
	local _invData = {
		identifier = string.format(
			"dumpster|%s|%s",
			tostring(math.floor(entity.endCoords.x + 10000)),
			tostring(math.floor(entity.endCoords.y + 10000))
		),
	}
	Callbacks:ServerCallback("Inventory:Dumpster:Open", _invData, function(s) end)
end)

AddEventHandler("Inventory:Client:SearchDumpster", function(entity, data)
	-- print(entity.endCoords, entity.entity, data)

	Callbacks:ServerCallback("Inventory:Server:AvailableDumpster", entity, function(s)
		if s and entity then
			if entity.entity == nil or type(entity.entity) == "boolean" then
				Notification:Error("This is not a dumpster. Try again.")
				return
			end
			if not _searching then
				_searching = true
				TaskTurnPedToFaceEntity(LocalPlayer.state.ped, entity.entity, 3000)
				Wait(2000)
				Progress:Progress({
					name = "inv_dumpster_search",
					duration = math.random(20, 25) * 1000,
					label = "Searching Trash",
					useWhileDead = false,
					canCancel = true,
					ignoreModifier = true,
					controlDisables = {
						disableMovement = true,
						disableCarMovement = true,
						disableMouse = false,
						disableCombat = true,
					},
					animation = {
						animDict = "amb@prop_human_bum_bin@base",
						anim = "base",
						flag = 49,
					},
				}, function(status)
					if not status then
						Callbacks:ServerCallback("Inventory:Server:SearchDumpster", entity, function(s) end)
					end
					_searching = false
				end)
			end
		else
			Notification:Error("This dumpster has been searched.")
		end
	end)
end)
