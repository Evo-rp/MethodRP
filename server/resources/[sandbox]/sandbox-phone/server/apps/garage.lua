AddEventHandler("Phone:Server:RegisterMiddleware", function()
	Middleware:Add("Characters:Spawning", function(source)
		TriggerClientEvent("Phone:Client:SetData", source, "garages", Vehicles.Garages:GetAll())
	end, 2)
end)

AddEventHandler("Phone:Server:RegisterCallbacks", function()
	Callbacks:RegisterServerCallback("Phone:Garage:GetCars", function(source, data, cb)
		local src = source
		local char = Fetch:Source(src):GetData("Character")
		Vehicles.Owned:GetAll(nil, 0, char:GetData("SID"), cb)
	end)

	Callbacks:RegisterServerCallback("Phone:Garage:TrackVehicle", function(source, data, cb)
		cb(Vehicles.Owned:Track(data))
	end)
end)
