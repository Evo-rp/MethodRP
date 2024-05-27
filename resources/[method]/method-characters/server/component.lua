ONLINE_CHARACTERS = {}

AddEventHandler("Characters:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Middleware = exports["method-base"]:FetchComponent("Middleware")
	Database = exports["method-base"]:FetchComponent("Database")
	Callbacks = exports["method-base"]:FetchComponent("Callbacks")
	DataStore = exports["method-base"]:FetchComponent("DataStore")
	Logger = exports["method-base"]:FetchComponent("Logger")
	Database = exports["method-base"]:FetchComponent("Database")
	Fetch = exports["method-base"]:FetchComponent("Fetch")
	Logger = exports["method-base"]:FetchComponent("Logger")
	Chat = exports["method-base"]:FetchComponent("Chat")
	GlobalConfig = exports["method-base"]:FetchComponent("Config")
	Routing = exports["method-base"]:FetchComponent("Routing")
	Sequence = exports["method-base"]:FetchComponent("Sequence")
	Reputation = exports["method-base"]:FetchComponent("Reputation")
	Apartment = exports["method-base"]:FetchComponent("Apartment")
	Phone = exports["method-base"]:FetchComponent("Phone")
	Damage = exports["method-base"]:FetchComponent("Damage")
	RegisterCommands()
	_spawnFuncs = {}
end

AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("Characters", {
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
		"Phone",
		"Damage",
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

CHARACTERS = {
	GetLastLocation = function(self, source)
		return _tempLastLocation[source] or false
	end,
}

AddEventHandler("Proxy:Shared:RegisterReady", function()
	exports["method-base"]:RegisterComponent("Characters", CHARACTERS)
end)