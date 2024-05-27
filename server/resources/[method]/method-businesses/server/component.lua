_pickups = {}

AddEventHandler("Businesses:Shared:DependencyUpdate", RetrieveComponents)
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
	Jobs = exports["method-base"]:FetchComponent("Jobs")
	Vehicles = exports["method-base"]:FetchComponent("Vehicles")
	Inventory = exports["method-base"]:FetchComponent("Inventory")
	Wallet = exports["method-base"]:FetchComponent("Wallet")
	Crafting = exports["method-base"]:FetchComponent("Crafting")
	Banking = exports["method-base"]:FetchComponent("Banking")
	MDT = exports["method-base"]:FetchComponent("MDT")
	Laptop = exports["method-base"]:FetchComponent("Laptop")
	StorageUnits = exports["method-base"]:FetchComponent("StorageUnits")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("Businesses", {
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
		"Jobs",
		"Vehicles",
		"Inventory",
		"Wallet",
		"Crafting",
		"Banking",
		"MDT",
		"Laptop",
		"StorageUnits",
	}, function(error)
		if #error > 0 then
			exports["method-base"]:FetchComponent("Logger"):Critical("Businesses", "Failed To Load All Dependencies")
			return
		end
		RetrieveComponents()

		TriggerEvent("Businesses:Server:Startup")

		Middleware:Add("Characters:Spawning", function(source)
			TriggerClientEvent("Businesses:Client:CreatePoly", source, _pickups)
		end, 2)

		Startup()
	end)
end)

function Startup()
	for k, v in ipairs(Config.Businesses) do
		Logger:Trace("Businesses", string.format("Registering Business ^3%s^7", v.Name))
		if v.Benches then
			for benchId, bench in pairs(v.Benches) do
				Logger:Trace(
					"Businesses",
					string.format("Registering Crafting Bench ^2%s^7 For ^3%s^7", bench.label, v.Name)
				)

				if bench.targeting.manual then
					Crafting:RegisterBench(string.format("%s-%s", v.Job, benchId), bench.label, bench.targeting, {}, {
						job = {
							id = v.Job,
							onDuty = true,
						},
					}, bench.recipes)
				else
					Crafting:RegisterBench(string.format("%s-%s", k, benchId), bench.label, bench.targeting, {
						x = 0,
						y = 0,
						z = bench.targeting.poly.coords.z,
						h = bench.targeting.poly.options.heading,
					}, {
						job = {
							id = v.Job,
							onDuty = true,
						},
					}, bench.recipes)
				end
			end
		end

		if v.Storage then
			for _, storage in pairs(v.Storage) do
				Logger:Trace(
					"Businesses",
					string.format("Registering Poly Inventory ^2%s^7 For ^3%s^7", storage.id, v.Name)
				)
				Inventory.Poly:Create(storage)
			end
		end

		if v.Pickups then
			for num, pickup in pairs(v.Pickups) do
				table.insert(_pickups, pickup.id)
				pickup.num = num
				pickup.job = v.Job
				pickup.jobName = v.Name
				GlobalState[string.format("Businesses:Pickup:%s", pickup.id)] = pickup
			end
		end
	end
end
