local previews = {
	vector4(682.282, 584.414, 129.461, 205.768),
	vector4(684.203, 585.349, 129.461, 194.392),
	vector4(680.347, 582.919, 129.461, 239.809),
	vector4(679.232, 585.493, 129.461, 236.240),
	vector4(682.157, 587.705, 129.461, 199.840),
}

local peds = {}
local _cam = nil

local camMod = {
	create = function(self, x, y, z, rx, ry, rz, fov)
		local cam = CreateCamWithParams(
			"DEFAULT_SCRIPTED_CAMERA",
			x,
			y,
			z,
			rx,
			ry,
			rz,
			fov,
			false,
			0
		)
		SetCamActive(cam, true)
		RenderScriptCams(true, false, 1, true, true)
		return cam
	end,
	delete = function(self, cam)
		DestroyCam(cam, true)
	end,
	move = function(self, cam, x, y, z, rx, ry, rz, fov)
		SetCamCoord(cam, x, y, z)
		SetCamRot(cam, rx, ry, rz, 2)
		SetCamFov(cam, fov)
	end,

}

CreateThread(function()
	while GetIsLoadingScreenActive() do
		Wait(0)
	end
	SendNUIMessage({
		type = "APP_SHOW",
	})
end)

local function loadModel(model)
	if type(model) == "string" then
		model = joaat(model)
	end
	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(100)
	end
end

RegisterNUICallback("GetData", function(data, cb)
	cb("ok")

	while LocalPlayer.state.ID == nil do
		Wait(1)
	end

	for _, v in ipairs(peds) do
		DeleteEntity(v)
	end

	Callbacks:ServerCallback("Characters:GetServerData", {}, function(serverData)
		SendNUIMessage({
			type = "LOADING_SHOW",
			data = { message = "Getting Character Data" },
		})

		FadeOutWithTimeout(500)

		Callbacks:ServerCallback("Characters:GetCharacters", {}, function(characters, characterLimit)
			print(json.encode(characters ,{indent=true}))
			local ped = PlayerPedId()

			SetEntityCoords(ped, -1001.0034, -476.1071, 50.0276, false, false, false, false)
			FreezeEntityPosition(ped, true)
			SetEntityVisible(ped, false, false)
			SetPlayerVisibleLocally(ped, false)

			local interior = GetInteriorFromEntity(ped)
			if interior ~= 0 then
				local roomHash = GetRoomKeyFromEntity(ped)
				ForceRoomForEntity(ped, interior, roomHash)
			end

			Wait(250)
			_cam = camMod:create(-1003.2799, -479.0881, 50.0268, 0.0, 0.0, 0.0, 50.0)

			SetCamActiveWithInterp(_cam, cam, 1000, true, true)
			RenderScriptCams(true, false, 1, true, true)

			TriggerScreenblurFadeOut(500)
			cam = _cam

			for k, v in ipairs(characters) do
				if previews[k] then
					if v.Preview then
						loadModel(GetHashKey(v.Preview.model))
						local ped = CreatePed(
							5,
							GetHashKey(v.Preview.model),
							previews[k][1],
							previews[k][2],
							previews[k][3],
							previews[k][4],
							false,
							true
						)

						while not DoesEntityExist(ped) do
							Citizen.Wait(1)
						end

						SetEntityCoords(ped, previews[k][1], previews[k][2], previews[k][3], 0.0, 0.0, 0.0, false)
						FreezeEntityPosition(ped, true)
						Ped:Preview(ped, tonumber(v.Gender), v.Preview, false, v.GangChain)

						table.insert(peds, ped)
					else
						loadModel(tonumber(v.Gender) == 0 and `mp_m_freemode_01` or `mp_f_freemode_01`)
						local ped = CreatePed(
							5,
							tonumber(v.Gender) == 0 and `mp_m_freemode_01` or `mp_f_freemode_01`,
							previews[k][1],
							previews[k][2],
							previews[k][3],
							previews[k][4],
							false,
							true
						)

						while not DoesEntityExist(ped) do
							Citizen.Wait(1)
						end

						SetEntityCoords(ped, previews[k][1], previews[k][2], previews[k][3], 0.0, 0.0, 0.0, false)
						FreezeEntityPosition(ped, true)

						table.insert(peds, ped)
					end
				end
			end

			SendNUIMessage({
				type = "SET_DATA",
				data = {
					changelog = serverData.changelog,
					motd = serverData.motd,
					characters = characters,
					characterLimit = characterLimit,
				},
			})
			SendNUIMessage({ type = "LOADING_HIDE" })
			SendNUIMessage({
				type = "SET_STATE",
				data = { state = "STATE_CHARACTERS" },
			})

			FadeInWithTimeout(500)
		end)
	end)
end)

RegisterNUICallback("CreateCharacter", function(data, cb)
	cb("ok")
	Callbacks:ServerCallback("Characters:CreateCharacter", data, function(character)
		if character ~= nil then
			SendNUIMessage({
				type = "CREATE_CHARACTER",
				data = { character = character },
			})
		end

		SendNUIMessage({
			type = "SET_STATE",
			data = { state = "STATE_CHARACTERS" },
		})
		SendNUIMessage({ type = "LOADING_HIDE" })
	end)
end)

RegisterNUICallback("DeleteCharacter", function(data, cb)
	cb("ok")
	Callbacks:ServerCallback("Characters:DeleteCharacter", data.id, function(status)
		if status then
			SendNUIMessage({
				type = "DELETE_CHARACTER",
				data = { id = data.id },
			})
		end
		SendNUIMessage({ type = "LOADING_HIDE" })
	end)
end)

RegisterNUICallback("SelectCharacter", function(data, cb)
	cb("ok")
	Callbacks:ServerCallback("Characters:GetSpawnPoints", data.id, function(spawns)
		if spawns then
			SendNUIMessage({
				type = "SET_SPAWNS",
				data = { spawns = spawns },
			})
			SendNUIMessage({
				type = "SET_STATE",
				data = { state = "STATE_SPAWN" },
			})
		end

		SendNUIMessage({ type = "LOADING_HIDE" })
	end)

	DestroyCam(cam)

	SetEntityCoordsNoOffset(PlayerPedId(), -3972.28, 2017.22, 500.92, false, false, false)

	FreezeEntityPosition(PlayerPedId(), true)

	while not HasCollisionLoadedAroundEntity(PlayerPedId()) do
		Wait(0)
	end

	cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", 1)

	SetCamRot(cam, -90.0, 0.0, 250.0, 2)
	SetCamCoord(cam, -3968.85, 2015.93, 502.22)
	StopCamShaking(cam, true)
	SetCamFov(cam, 50.0)
	SetCamActive(cam, true)
	RenderScriptCams(true, false, 0, true, true)
end)

RegisterNUICallback("PlayCharacter", function(data, cb)
	cb("ok")

	FadeOutWithTimeout(500)

	Callbacks:ServerCallback("Characters:GetCharacterData", data.character.ID, function(cData)
		cData.spawn = data.spawn
		TriggerEvent("Characters:Client:SetData", -1, cData, function()
			exports["method-base"]:FetchComponent("Spawn"):SpawnToWorld(cData, function()
				LocalPlayer.state.canUsePhone = true
				if data.spawn.event ~= nil then
					Callbacks:ServerCallback(data.spawn.event, data.spawn, function()
						LocalPlayer.state.Char = cData.ID
						TriggerServerEvent("Characters:Server:Spawning")


						FadeInWithTimeout(500)
					end)
				else
					LocalPlayer.state.Char = cData.ID
					TriggerServerEvent("Characters:Server:Spawning")

					FadeInWithTimeout(500)
				end
			end)
		end)

		for k, v in ipairs(peds) do
			DeleteEntity(v)
		end
	end)
end)

RegisterNUICallback("FocusCharacter", function(data, cb)
	cb("ok")

	print(json.encode(data ,{indent=true}))
	local characterID = data.id
end)

RegisterNetEvent("Characters:Client:Spawned", function()
	TriggerEvent("Characters:Client:Spawn")
	TriggerServerEvent("Characters:Server:Spawn")
	SetNuiFocus(false)
	SendNUIMessage({ type = "APP_HIDE" })
	SendNUIMessage({ type = "LOADING_HIDE" })
	LocalPlayer.state.loggedIn = true
end)