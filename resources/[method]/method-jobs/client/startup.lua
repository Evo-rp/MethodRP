AddEventHandler("Jobs:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Callbacks = exports["method-base"]:FetchComponent("Callbacks")
	Logger = exports["method-base"]:FetchComponent("Logger")
	Utils = exports["method-base"]:FetchComponent("Utils")
	Notification = exports["method-base"]:FetchComponent("Notification")
	Jobs = exports["method-base"]:FetchComponent("Jobs")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("Jobs", {
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
