AddEventHandler("Characters:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Middleware = exports["sandbox-base"]:FetchComponent("Middleware")
	Database = exports["sandbox-base"]:FetchComponent("Database")
	Callbacks = exports["sandbox-base"]:FetchComponent("Callbacks")
	DataStore = exports["sandbox-base"]:FetchComponent("DataStore")
	Logger = exports["sandbox-base"]:FetchComponent("Logger")
	Database = exports["sandbox-base"]:FetchComponent("Database")
	Fetch = exports["sandbox-base"]:FetchComponent("Fetch")
	Logger = exports["sandbox-base"]:FetchComponent("Logger")
	Chat = exports["sandbox-base"]:FetchComponent("Chat")
	GlobalConfig = exports["sandbox-base"]:FetchComponent("Config")
	Routing = exports["sandbox-base"]:FetchComponent("Routing")
	Sequence = exports["sandbox-base"]:FetchComponent("Sequence")
	Reputation = exports["sandbox-base"]:FetchComponent("Reputation")
	Apartment = exports["sandbox-base"]:FetchComponent("Apartment")
	RegisterCommands()
	_spawnFuncs = {}
end

AddEventHandler("Core:Shared:Ready", function()
	exports["sandbox-base"]:RequestDependencies("Characters", {
		"Callbacks",
		"Database",
		"Middleware",
		"DataStore",
		"Logger",
		"Database",
		"Fetch",
		"Logger",
		"Chat",
		"Config",
		"Routing",
		"Sequence",
		"Reputation",
		"Apartment",
	}, function(error)
		if #error > 0 then
			return
		end -- Do something to handle if not all dependencies loaded
		RetrieveComponents()
		RegisterCallbacks()
		RegisterMiddleware()
		Startup()
	end)
end)
