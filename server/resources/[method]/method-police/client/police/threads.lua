AddEventHandler("Characters:Client:Spawn", function()
	Citizen.Wait(5000)
	StartThreads()
end)

local _ignored = {
	[`WEAPON_PETROLCAN`] = true,
	[`WEAPON_FIREEXTINGUISHER`] = true,
	[`WEAPON_FLARE`] = true,
	[`WEAPON_TASER`] = true,
	[`WEAPON_STUNGUN`] = true,
	[`WEAPON_BALL`] = true,
	[`WEAPON_SNOWBALL`] = true,
	[`WEAPON_GRENADE`] = true,
	[`WEAPON_BZGAS`] = true,
	[`WEAPON_MOLOTOV`] = true,
	[`WEAPON_STICKYBOMB`] = true,
	[`WEAPON_PROXMINE`] = true,
	[`WEAPON_PIPEBOMB`] = true,
	[`WEAPON_SMOKEGRENADE`] = true,
	[`WEAPON_SNIPERRIFLE2`] = true, -- Hunting Rifle
}

function StartThreads()
	Citizen.CreateThread(function()
		while LocalPlayer.state.loggedIn do
			local cw = GetSelectedPedWeapon(LocalPlayer.state.ped)
			local isArmed = false
			local isOrigin = false
			if not _ignored[cw] then
				if not isArmed then
					if IsPedArmed(LocalPlayer.state.ped, 7) and not IsPedArmed(LocalPlayer.state.ped, 1) then
						cw = GetSelectedPedWeapon(LocalPlayer.state.ped)
						isArmed = true
					end
				end

				if IsPedShooting(LocalPlayer.state.ped) and not _ignored[cw] then
					if LocalPlayer.state.onDuty ~= "police" then
						local veh = GetVehiclePedIsIn(LocalPlayer.state.ped)
						if veh ~= 0 then
							local r, g, b = GetVehicleCustomPrimaryColour(veh)

							local vehModel = GetEntityModel(veh)
							local vehName = GetLabelText(GetDisplayNameFromVehicleModel(vehModel))
							if vehName == "NULL" then
								vehName = GetDisplayNameFromVehicleModel(vehModel)
							end

							local vehEnt = Entity(veh)
							if vehEnt and vehEnt.state and vehEnt.state.Make and vehEnt.state.Model then
								vehName = vehEnt.state.Make .. " " .. vehEnt.state.Model
							end

							EmergencyAlerts:CreateIfReported(500.0, "shotsfiredvehicle", true, {
								icon = "car",
								details = vehName,
								vehicleColor = {
									r = r,
									g = g,
									b = b,
								},
							})
						elseif IsPedCurrentWeaponSilenced(LocalPlayer.state.ped) then
							EmergencyAlerts:CreateIfReported(10.0, "shotsfired", true)
						else
							EmergencyAlerts:CreateIfReported(900.0, "shotsfired", true)
						end
					end
					Citizen.Wait(60000)
				end
			else
				Citizen.Wait(1000)
			end

			Citizen.Wait(50)
		end
	end)

	Citizen.CreateThread(function()
		while LocalPlayer.state.loggedIn do
			if LocalPlayer.state.GSR and IsPedSwimming(LocalPlayer.state.ped) then
				LocalPlayer.state:set("GSR", nil, true)
			end
			Citizen.Wait(3000)
		end
	end)
end

local timeOut, stressTimeout = false, false
AddEventHandler('CEventGunShot', function(entities, eventEntity, args)
	if timeOut then return end
	if _ignored[LocalPlayer.state.CurrentWeapon] then return end
	if eventEntity ~= LocalPlayer.state.ped then return end

	timeOut = true
	SetTimeout(1000, function()
		timeOut = false
	end)

	if not stressTimeout then
		stressTimeout = true
		SetTimeout(40000, function()
			Status.Modify:Add("PLAYER_STRESS", 1, false, true)
		end)
	end

	LocalPlayer.state:set("GSR", GetCloudTimeAsInt(), true)
end)