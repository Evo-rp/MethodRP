AddEventHandler("Jobs:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Callbacks = exports["sandbox-base"]:FetchComponent("Callbacks")
	Logger = exports["sandbox-base"]:FetchComponent("Logger")
	Utils = exports["sandbox-base"]:FetchComponent("Utils")
	Notification = exports["sandbox-base"]:FetchComponent("Notification")
	Jobs = exports["sandbox-base"]:FetchComponent("Jobs")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["sandbox-base"]:RequestDependencies("Jobs", {
		"Callbacks",
		"Logger",
		"Utils",
		"Notification",
		"Jobs",
	}, function(error)
		if #error > 0 then
			return
		end
		RetrieveComponents()
	end)
end)
