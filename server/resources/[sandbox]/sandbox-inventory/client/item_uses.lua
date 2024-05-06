local _energyCd = false

function RegisterRandomItems() end

function RunSpeed(modifier, duration, cd, ss)
	Citizen.CreateThread(function()
		local c = 0
		if not ss then
			AnimpostfxPlay("DrugsTrevorClownsFight", 0, true)
		end
		while LocalPlayer.state.loggedIn and c < duration and not LocalPlayer.state.drugsRunSpeed do
			c += 1
			SetPedMoveRateOverride(PlayerPedId(), modifier)
			Citizen.Wait(1)
		end
		SetPedMoveRateOverride(PlayerPedId(), 0.0)
		AnimpostfxStop("DrugsTrevorClownsFight")
		Citizen.Wait(cd)
		_energyCd = false
	end)
end

RegisterNetEvent("Inventory:Client:UseVanityItem", function(sender, action, itemData)
	if not LocalPlayer.state.loggedIn then
		return
	end
	local senderClient = GetPlayerFromServerId(sender)

	local isMe = false
	if sender == LocalPlayer.state.ID then
		isMe = true
	end

	if action == "overlay" then
		Hud.Overlay:Show(itemData)
	elseif action == "overlayall" then
		if senderClient < 0 and not isMe then
			return
		end

		if not senderClient then
			return
		end
		local myPed = LocalPlayer.state.ped
		local senderPed = GetPlayerPed(senderClient)
		if DoesEntityExist(senderPed) then
			local dist = #(GetEntityCoords(senderPed) - GetEntityCoords(myPed))

			if dist <= 4.0 and HasEntityClearLosToEntity(myPed, senderPed, 17) then
				Hud.Overlay:Show(itemData)
			end
		end
	end
	Citizen.SetTimeout(10000, function()
		Hud.Overlay:Hide()
	end)
end)

RegisterNetEvent("Inventory:Client:SpeedyBoi", function(modifier, duration, cd, skipScreenEffects)
	if not _energyCd then
		_energyCd = true
		RunSpeed(modifier, duration, cd, skipScreenEffects)
	end
end)

RegisterNetEvent("Inventory:Client:HealthModifier", function(healthMod)
	local currentHealth = GetEntityHealth(LocalPlayer.state.ped)
	local newHealth = math.min(180, currentHealth + healthMod)

	if newHealth > currentHealth then
		SetEntityHealth(LocalPlayer.state.ped, math.floor(newHealth))
	end
end)

RegisterNetEvent("Inventory:Client:ArmourModifier", function(mod)
	if not LocalPlayer.state.armourModCooldown or LocalPlayer.state.armourModCooldown <= GetGameTimer() then
		local currentArmour = GetPedArmour(LocalPlayer.state.ped)
		local newArmour = math.min(60, currentArmour + mod)

		if newArmour > currentArmour then
			SetPedArmour(LocalPlayer.state.ped, math.floor(newArmour))
		end

		LocalPlayer.state.armourModCooldown = GetGameTimer() + ((60 * 1000) * 5)
	end
end)

RegisterNetEvent("Inventory:Client:RandomItems:BirthdayCake", function()
	Sounds.Play:Distance(20.0, "birthday.ogg", 0.2)
	Animations.Emotes:Play("cake", false, false, false)
end)

RegisterNetEvent("Inventory:Client:RandomItems:BriefcaseCash", function()
	Animations.Emotes:Play("suitcase2", false, false, false)
end)

RegisterNetEvent("Inventory:Client:ERP:ButtPlug", function(color)
	Animations.Emotes:Play(string.format("erp_buttplug_%s", color), false, false, false)
end)

RegisterNetEvent("Inventory:Client:ERP:Vibrator", function(color)
	Sounds.Play:Distance(20.0, "vibrator.ogg", 0.2)
	Animations.Emotes:Play(string.format("erp_vibrator_%s", color), false, false, false)
end)
