local previews = {
	vector4(682.282, 584.414, 129.461, 205.768),
	vector4(684.203, 585.349, 129.461, 194.392),
	vector4(680.347, 582.919, 129.461, 239.809),
	vector4(679.232, 585.493, 129.461, 236.240),
	vector4(682.157, 587.705, 129.461, 199.840),
}

local peds = {}
local _cam = nil

local cam = {
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

---------------

local Callbacks = exports["method-base"]:FetchComponent("Callbacks")

local fiTo = 0
function FadeOutWithTimeout(time, timeOut)
	DoScreenFadeOut(time or 500)
	foTo = 0
	while IsScreenFadingOut() and foTo < (timeOut or 3000) do
		foTo += 1
		Citizen.Wait(1)
	end
end

---------------

RegisterCommand('cam', function()
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
			_cam = cam:create(-1003.2799, -479.0881, 50.0268, 0.0, 0.0, 0.0, 50.0)

            SetTimeout(5000, function()
                cam:delete(_cam)
            end)

			-- for k, v in ipairs(characters) do
			-- 	if previews[k] then
			-- 		if v.Preview then
			-- 			loadModel(GetHashKey(v.Preview.model))
			-- 			local ped = CreatePed(
			-- 				5,
			-- 				GetHashKey(v.Preview.model),
			-- 				previews[k][1],
			-- 				previews[k][2],
			-- 				previews[k][3],
			-- 				previews[k][4],
			-- 				false,
			-- 				true
			-- 			)

			-- 			while not DoesEntityExist(ped) do
			-- 				Citizen.Wait(1)
			-- 			end

			-- 			SetEntityCoords(ped, previews[k][1], previews[k][2], previews[k][3], 0.0, 0.0, 0.0, false)
			-- 			FreezeEntityPosition(ped, true)
			-- 			Ped:Preview(ped, tonumber(v.Gender), v.Preview, false, v.GangChain)

			-- 			table.insert(peds, ped)
			-- 		else
			-- 			loadModel(tonumber(v.Gender) == 0 and `mp_m_freemode_01` or `mp_f_freemode_01`)
			-- 			local ped = CreatePed(
			-- 				5,
			-- 				tonumber(v.Gender) == 0 and `mp_m_freemode_01` or `mp_f_freemode_01`,
			-- 				previews[k][1],
			-- 				previews[k][2],
			-- 				previews[k][3],
			-- 				previews[k][4],
			-- 				false,
			-- 				true
			-- 			)

			-- 			while not DoesEntityExist(ped) do
			-- 				Citizen.Wait(1)
			-- 			end

			-- 			SetEntityCoords(ped, previews[k][1], previews[k][2], previews[k][3], 0.0, 0.0, 0.0, false)
			-- 			FreezeEntityPosition(ped, true)

			-- 			table.insert(peds, ped)
			-- 		end
			-- 	end
			-- end

			-- SendNUIMessage({
			-- 	type = "SET_DATA",
			-- 	data = {
			-- 		changelog = serverData.changelog,
			-- 		motd = serverData.motd,
			-- 		characters = characters,
			-- 		characterLimit = characterLimit,
			-- 	},
			-- })
			-- SendNUIMessage({ type = "LOADING_HIDE" })
			-- SendNUIMessage({
			-- 	type = "SET_STATE",
			-- 	data = { state = "STATE_CHARACTERS" },
			-- })

			-- FadeInWithTimeout(500)
		end)
	end)
end, false)