AddEventHandler("Labor:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Logger = exports["method-base"]:FetchComponent("Logger")
	Callbacks = exports["method-base"]:FetchComponent("Callbacks")
	Game = exports["method-base"]:FetchComponent("Game")
	Phone = exports["method-base"]:FetchComponent("Phone")
	PedInteraction = exports["method-base"]:FetchComponent("PedInteraction")
	Interaction = exports["method-base"]:FetchComponent("Interaction")
	Progress = exports["method-base"]:FetchComponent("Progress")
	Minigame = exports["method-base"]:FetchComponent("Minigame")
	Notification = exports["method-base"]:FetchComponent("Notification")
	ListMenu = exports["method-base"]:FetchComponent("ListMenu")
	Blips = exports["method-base"]:FetchComponent("Blips")
	Polyzone = exports["method-base"]:FetchComponent("Polyzone")
	Targeting = exports["method-base"]:FetchComponent("Targeting")
	Hud = exports["method-base"]:FetchComponent("Hud")
	Inventory = exports["method-base"]:FetchComponent("Inventory")
	EmergencyAlerts = exports["method-base"]:FetchComponent("EmergencyAlerts")
	Status = exports["method-base"]:FetchComponent("Status")
	Labor = exports["method-base"]:FetchComponent("Labor")
	Sounds = exports["method-base"]:FetchComponent("Sounds")
	Properties = exports["method-base"]:FetchComponent("Properties")
	Action = exports["method-base"]:FetchComponent("Action")
	Sync = exports["method-base"]:FetchComponent("Sync")
	Confirm = exports["method-base"]:FetchComponent("Confirm")
	Utils = exports["method-base"]:FetchComponent("Utils")
	Keybinds = exports["method-base"]:FetchComponent("Keybinds")
	Reputation = exports["method-base"]:FetchComponent("Reputation")
	NetSync = exports["method-base"]:FetchComponent("NetSync")
	Vehicles = exports["method-base"]:FetchComponent("Vehicles")
	Animations = exports["method-base"]:FetchComponent("Animations")
	Weapons = exports["method-base"]:FetchComponent("Weapons")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("Labor", {
		"Logger",
		"Callbacks",
		"Game",
		"Phone",
		"PedInteraction",
		"Interaction",
		"Progress",
		"Minigame",
		"Notification",
		"ListMenu",
		"Blips",
		"Polyzone",
		"Targeting",
		"Hud",
		"Inventory",
		"EmergencyAlerts",
		"Status",
		"Labor",
		"Sounds",
		"Properties",
		"Action",
		"Sync",
		"Confirm",
		"Utils",
		"Keybinds",
		"Reputation",
		"NetSync",
		"Vehicles",
		"Animations",
		"Weapons",
	}, function(error)
		if #error > 0 then
			return
		end
		RetrieveComponents()
		TriggerEvent("Labor:Client:Setup")
	end)
end)

function Draw3DText(x, y, z, text)
	local onScreen, _x, _y = World3dToScreen2d(x, y, z)
	local px, py, pz = table.unpack(GetGameplayCamCoords())

	SetTextScale(0.25, 0.25)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 245)
	SetTextOutline(true)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x, _y)
end

function PedFaceCoord(pPed, pCoords)
	TaskTurnPedToFaceCoord(pPed, pCoords.x, pCoords.y, pCoords.z)

	Citizen.Wait(100)

	while GetScriptTaskStatus(pPed, 0x574bb8f5) == 1 do
		Citizen.Wait(0)
	end
end

AddEventHandler("Proxy:Shared:RegisterReady", function()
	exports["method-base"]:RegisterComponent("Labor", LABOR)
end)

AddEventHandler("Labor:Client:AcceptRequest", function(data)
	Callbacks:ServerCallback("Labor:AcceptRequest", data)
end)

AddEventHandler("Labor:Client:DeclineRequest", function(data)
	Callbacks:ServerCallback("Labor:DeclineRequest", data)
end)

LABOR = {
	Get = {
		Jobs = function(self)
			local p = promise.new()
			Callbacks:ServerCallback("Labor:GetJobs", {}, function(jobs)
				p:resolve(jobs)
			end)
			return Citizen.Await(p)
		end,
		Groups = function(self)
			local p = promise.new()
			Callbacks:ServerCallback("Labor:GetGroups", {}, function(groups)
				p:resolve(groups)
			end)
			return Citizen.Await(p)
		end,
		Reputations = function(self)
			local p = promise.new()
			Callbacks:ServerCallback("Labor:GetReputations", {}, function(jobs)
				p:resolve(jobs)
			end)
			return Citizen.Await(p)
		end,
	},
}
