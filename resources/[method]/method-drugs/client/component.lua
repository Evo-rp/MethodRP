AddEventHandler("Drugs:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Callbacks = exports["method-base"]:FetchComponent("Callbacks")
	Inventory = exports["method-base"]:FetchComponent("Inventory")
	Targeting = exports["method-base"]:FetchComponent("Targeting")
	Progress = exports["method-base"]:FetchComponent("Progress")
	Hud = exports["method-base"]:FetchComponent("Hud")
	Notification = exports["method-base"]:FetchComponent("Notification")
	ObjectPlacer = exports["method-base"]:FetchComponent("ObjectPlacer")
	Minigame = exports["method-base"]:FetchComponent("Minigame")
	ListMenu = exports["method-base"]:FetchComponent("ListMenu")
	PedInteraction = exports["method-base"]:FetchComponent("PedInteraction")
	Polyzone = exports["method-base"]:FetchComponent("Polyzone")
	Buffs = exports["method-base"]:FetchComponent("Buffs")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("Drugs", {
		"Callbacks",
		"Inventory",
		"Targeting",
		"Progress",
		"Hud",
		"Notification",
		"ObjectPlacer",
		"Minigame",
		"ListMenu",
		"PedInteraction",
		"Polyzone",
		"Buffs",
	}, function(error)
		if #error > 0 then
			exports["method-base"]:FetchComponent("Logger"):Critical("Drugs", "Failed To Load All Dependencies")
			return
		end
		RetrieveComponents()

		TriggerEvent("Drugs:Client:Startup")
	end)
end)
