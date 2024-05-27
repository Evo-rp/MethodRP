--[[

	player stash
	public stash

]]

RegisterNetEvent("Characters:Client:Spawn")
AddEventHandler("Characters:Client:Spawn", function()
	while not GlobalState.JailStashLocations do
		Citizen.Wait(100)
	end

	if GlobalState.JailStashLocations ~= nil then
		for key, data in ipairs(GlobalState.JailStashLocations) do
			Targeting.Zones:AddBox(
				string.format("prison_stash_%s", key),
				"lock",
				data.coords,
				data.width,
				data.length,
				data.options,
				{
					{
						icon = "box",
						text = data.stashType == "self" and "Open Stash" or "Open Public Stash",
						event = "Prison:Client:Target:Stash",
						data = {
							stashType = data.stashType,
						},
					},
				},
				2.0,
				true
			)
		end
	end
end)

AddEventHandler("Prison:Client:Target:Stash", function(entity, data)
	Callbacks:ServerCallback("Inventory:PrisonStash:Open", data.stashType)
end)
