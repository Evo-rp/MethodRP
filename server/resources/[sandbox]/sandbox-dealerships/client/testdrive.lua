AddEventHandler("Vehicles:Client:BecameDriver", function(vehicle, seat)
	local vehState = Entity(vehicle).state
	if vehState and vehState.testDrive then
		local timeRemaining = vehState.testDrive - GetCloudTimeAsInt()
		TriggerServerEvent("Vehicles:Server:TestDriveTime", vehState.testDriveDealership, timeRemaining)
	end
end)
