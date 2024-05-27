_DRUGS = _DRUGS or {}
local _addictionTemplate = {
	Meth = {
		LastUse = false,
		Factor = 0.0,
	},
	Coke = {
		LastUse = false,
		Factor = 0.0,
	},
}

AddEventHandler("Drugs:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Fetch = exports["method-base"]:FetchComponent("Fetch")
	Logger = exports["method-base"]:FetchComponent("Logger")
	Callbacks = exports["method-base"]:FetchComponent("Callbacks")
	Middleware = exports["method-base"]:FetchComponent("Middleware")
	Execute = exports["method-base"]:FetchComponent("Execute")
	Chat = exports["method-base"]:FetchComponent("Chat")
	Inventory = exports["method-base"]:FetchComponent("Inventory")
	Crypto = exports["method-base"]:FetchComponent("Crypto")
	Vehicles = exports["method-base"]:FetchComponent("Vehicles")
	Drugs = exports["method-base"]:FetchComponent("Drugs")
	Vendor = exports["method-base"]:FetchComponent("Vendor")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("Drugs", {
		"Fetch",
		"Logger",
		"Callbacks",
		"Middleware",
		"Execute",
		"Chat",
		"Inventory",
		"Crypto",
		"Vehicles",
		"Drugs",
		"Vendor",
	}, function(error)
		if #error > 0 then
			exports["method-base"]:FetchComponent("Logger"):Critical("Drugs", "Failed To Load All Dependencies")
			return
		end
		RetrieveComponents()
		RegisterItemUse()
		RunDegenThread()

		Middleware:Add("Characters:Spawning", function(source)
			local char = Fetch:CharacterSource(source)
			if char ~= nil then
				if char:GetData("Addiction") == nil then
					char:SetData("Addiction", _addictionTemplate)
				end
			end
		end, 1)

		TriggerEvent("Drugs:Server:Startup")
	end)
end)

AddEventHandler("Proxy:Shared:RegisterReady", function()
	exports["method-base"]:RegisterComponent("Drugs", _DRUGS)
end)
