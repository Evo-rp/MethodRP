AddEventHandler("Finance:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Fetch = exports["method-base"]:FetchComponent("Fetch")
	Utils = exports["method-base"]:FetchComponent("Utils")
	Execute = exports["method-base"]:FetchComponent("Execute")
	Database = exports["method-base"]:FetchComponent("Database")
	Middleware = exports["method-base"]:FetchComponent("Middleware")
	Callbacks = exports["method-base"]:FetchComponent("Callbacks")
	Chat = exports["method-base"]:FetchComponent("Chat")
	Logger = exports["method-base"]:FetchComponent("Logger")
	Generator = exports["method-base"]:FetchComponent("Generator")
	Phone = exports["method-base"]:FetchComponent("Phone")
	Crypto = exports["method-base"]:FetchComponent("Crypto")
	Banking = exports["method-base"]:FetchComponent("Banking")
	Billing = exports["method-base"]:FetchComponent("Billing")
	Loans = exports["method-base"]:FetchComponent("Loans")
	Wallet = exports["method-base"]:FetchComponent("Wallet")
	Tasks = exports["method-base"]:FetchComponent("Tasks")
	Jobs = exports["method-base"]:FetchComponent("Jobs")
	Vehicles = exports["method-base"]:FetchComponent("Vehicles")
	Inventory = exports["method-base"]:FetchComponent("Inventory")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("Finance", {
		"Fetch",
		"Utils",
		"Execute",
		"Chat",
		"Database",
		"Middleware",
		"Callbacks",
		"Logger",
		"Generator",
		"Phone",
		"Wallet",
		"Banking",
		"Billing",
		"Loans",
		"Crypto",
		"Jobs",
		"Tasks",
		"Vehicles",
		"Inventory",
	}, function(error)
		if #error > 0 then
			exports["method-base"]:FetchComponent("Logger"):Critical("Finance", "Failed To Load All Dependencies")
			return
		end
		RetrieveComponents()

		TriggerEvent("Finance:Server:Startup")
	end)
end)
