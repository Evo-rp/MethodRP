AddEventHandler("Arcade:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Fetch = exports["method-base"]:FetchComponent("Fetch")
	Database = exports["method-base"]:FetchComponent("Database")
	Callbacks = exports["method-base"]:FetchComponent("Callbacks")
	Logger = exports["method-base"]:FetchComponent("Logger")
	Chat = exports["method-base"]:FetchComponent("Chat")
	Middleware = exports["method-base"]:FetchComponent("Middleware")
	Execute = exports["method-base"]:FetchComponent("Execute")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("Arcade", {
		"Fetch",
		"Database",
		"Callbacks",
		"Logger",
		"Chat",
		"Middleware",
		"Execute",
	}, function(error)
		if #error > 0 then
			return
		end -- Do something to handle if not all dependencies loaded
		RetrieveComponents()

		Callbacks:RegisterServerCallback("Arcade:Open", function(source, data, cb)
			local char = Fetch:CharacterSource(source)
			if char ~= nil then
				if Player(source).state.onDuty == "avast_arcade" then
					GlobalState["Arcade:Open"] = true
				end
			end
		end)

		Callbacks:RegisterServerCallback("Arcade:Close", function(source, data, cb)
			local char = Fetch:CharacterSource(source)
			if char ~= nil then
				if Player(source).state.onDuty == "avast_arcade" then
					GlobalState["Arcade:Open"] = false
				end
			end
		end)
	end)
end)
