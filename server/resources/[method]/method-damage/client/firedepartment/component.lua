AddEventHandler("Hospital:Shared:DependencyUpdate", SAFDComponents)
function SAFDComponents()
	Callbacks = exports["method-base"]:FetchComponent("Callbacks")
	Notification = exports["method-base"]:FetchComponent("Notification")
	Damage = exports["method-base"]:FetchComponent("Damage")
	Notification = exports["method-base"]:FetchComponent("Notification")
	Targeting = exports["method-base"]:FetchComponent("Targeting")
	Hospital = exports["method-base"]:FetchComponent("Hospital")
	Progress = exports["method-base"]:FetchComponent("Progress")
	Blips = exports["method-base"]:FetchComponent("Blips")
	PedInteraction = exports["method-base"]:FetchComponent("PedInteraction")
	Escort = exports["method-base"]:FetchComponent("Escort")
	Action = exports["method-base"]:FetchComponent("Action")
	Polyzone = exports["method-base"]:FetchComponent("Polyzone")
	Animations = exports["method-base"]:FetchComponent("Animations")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("Hospital", {
		"Callbacks",
		"Notification",
		"Damage",
		"Targeting",
		"Hospital",
		"Progress",
		"PedInteraction",
		"Escort",
		"Blips",
		"Polyzone",
		"Action",
		"Animations",
	}, function(error)
		if #error > 0 then
			return
		end
		SAFDComponents()
		SAFDInit()
	end)
end)
