AddEventHandler("Buffs:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Buffs = exports["method-base"]:FetchComponent("Buffs")
	Hud = exports["method-base"]:FetchComponent("Hud")
	Callbacks = exports["method-base"]:FetchComponent("Callbacks")
	Progress = exports["method-base"]:FetchComponent("Progress")
	Action = exports["method-base"]:FetchComponent("Action")
	Keybinds = exports["method-base"]:FetchComponent("Keybinds")
	ListMenu = exports["method-base"]:FetchComponent("ListMenu")
	Notification = exports["method-base"]:FetchComponent("Notification")
	Minigame = exports["method-base"]:FetchComponent("Minigame")
	Interaction = exports["method-base"]:FetchComponent("Interaction")
	Utils = exports["method-base"]:FetchComponent("Utils")
	Phone = exports["method-base"]:FetchComponent("Phone")
	Inventory = exports["method-base"]:FetchComponent("Inventory")
	Weapons = exports["method-base"]:FetchComponent("Weapons")
	Jail = exports["method-base"]:FetchComponent("Jail")
	Animations = exports["method-base"]:FetchComponent("Animations")
	Admin = exports["method-base"]:FetchComponent("Admin")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("Buffs", {
		"Buffs",
		"Hud",
		"Callbacks",
		"Action",
		"Progress",
		"Keybinds",
		"ListMenu",
		"Notification",
		"Minigame",
		"Interaction",
		"Utils",
		"Phone",
		"Inventory",
		"Weapons",
		"Jail",
		"Animations",
		"Admin",
	}, function(error)
		if #error > 0 then
			return
		end
		RetrieveComponents()
	end)
end)

local _runningIds = 1
local _buffDefs = {}

local _BUFFS = {
	RegisterBuff = function(self, id, icon, color, duration, type)
		_buffDefs[id] = {
			icon = icon,
			color = color,
			duration = duration,
			type = type,
		}
		SendNUIMessage({
			type = "REGISTER_BUFF",
			data = {
				id = id,
				data = {
					icon = icon,
					color = color,
					duration = duration,
					type = type,
				},
			},
		})
	end,
	ApplyBuff = function(self, buffId, val, override, options)
		SendNUIMessage({
			type = "BUFF_APPLIED",
			data = {
				instance = {
					buff = buffId,
					override = override,
					val = math.ceil(val),
					options = options or {},
					startTime = GetCloudTimeAsInt(),
				},
			},
		})
	end,
	ApplyUniqueBuff = function(self, buffId, val, override, options)
		SendNUIMessage({
			type = "BUFF_APPLIED_UNIQUE",
			data = {
				instance = {
					buff = buffId,
					override = override,
					val = math.ceil(val),
					options = options or {},
					startTime = GetCloudTimeAsInt(),
				},
			},
		})
	end,
	UpdateBuff = function(self, buffId, nVal)
		SendNUIMessage({
			type = "BUFF_UPDATED",
			data = {
				buff = buffId,
				val = nVal,
			},
		})
	end,
	IconOverride = function(self, buffId, override)
		SendNUIMessage({
			type = "BUFF_UPDATED",
			data = {
				buff = buffId,
				override = override,
			},
		})
	end,
	RemoveBuffType = function(self, buffId)
		SendNUIMessage({
			type = "REMOVE_BUFF_BY_TYPE",
			data = {
				type = buffId,
			},
		})
	end,
}

AddEventHandler("Proxy:Shared:RegisterReady", function()
	exports["method-base"]:RegisterComponent("Buffs", _BUFFS)
end)

RegisterNetEvent("Characters:Client:Spawned", function()
    _BUFFS:RegisterBuff("prog_mod", "mug-hot", "#D6451A", -1, "timed")
    _BUFFS:RegisterBuff("stress_ticks", "joint", "#de3333", -1, "timed")
    _BUFFS:RegisterBuff("heal_ticks", "suitcase-medical", "#52984a", -1, "timed")
    _BUFFS:RegisterBuff("armor_ticks", "dumbbell", "#4056b3", -1, "timed")
end)

RegisterNetEvent("Characters:Client:Logout", function()
    _BUFFS:RemoveBuffType("prog_mod")
    _BUFFS:RemoveBuffType("stress_ticks")
    _BUFFS:RemoveBuffType("heal_ticks")
    _BUFFS:RemoveBuffType("armor_ticks")
end)
