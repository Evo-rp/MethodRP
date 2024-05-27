AddEventHandler("Damage:Shared:DependencyUpdate", PrisonHospitalComponents)
function PrisonHospitalComponents()
	Callbacks = exports["method-base"]:FetchComponent("Callbacks")
	Middleware = exports["method-base"]:FetchComponent("Middleware")
	Fetch = exports["method-base"]:FetchComponent("Fetch")
	Damage = exports["method-base"]:FetchComponent("Damage")
	Hospital = exports["method-base"]:FetchComponent("Hospital")
	Crypto = exports["method-base"]:FetchComponent("Crypto")
	Phone = exports["method-base"]:FetchComponent("Phone")
	Execute = exports["method-base"]:FetchComponent("Execute")
	Chat = exports["method-base"]:FetchComponent("Chat")
	Billing = exports["method-base"]:FetchComponent("Billing")
	Inventory = exports["method-base"]:FetchComponent("Inventory")
	Labor = exports["method-base"]:FetchComponent("Labor")
	Jobs = exports["method-base"]:FetchComponent("Jobs")
	Handcuffs = exports["method-base"]:FetchComponent("Handcuffs")
	Ped = exports["method-base"]:FetchComponent("Ped")
	Routing = exports["method-base"]:FetchComponent("Routing")
	Pwnzor = exports["method-base"]:FetchComponent("Pwnzor")
	Banking = exports["method-base"]:FetchComponent("Banking")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("PrisonHospital", {
		"Callbacks",
		"Middleware",
		"Fetch",
		"Damage",
		"Hospital",
		"Crypto",
		"Phone",
		"Execute",
		"Chat",
		"Billing",
		"Inventory",
		"Labor",
		"Jobs",
		"Handcuffs",
		"Ped",
		"Routing",
		"Pwnzor",
		"Banking",
	}, function(error)
		if #error > 0 then
			return
		end -- Do something to handle if not all dependencies loaded
		PrisonHospitalComponents()
		PrisonHospitalCallbacks()
	end)
end)
