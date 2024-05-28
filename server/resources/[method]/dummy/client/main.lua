local previews = {
	-- {
	-- 	position = vector4(-1008.8504, -476.3, 49.0, 218.1057),
	-- 	anim = {
	-- 		dict = "timetable@reunited@ig_10",
	-- 		name = "base_amanda",
	-- 	}
	-- },
	-- {
	-- 	position = vector4(-1005.05, -474.75, 48.7, 211.8572),
	-- 	anim = {
	-- 		dict = "mini@prostitutes@sexlow_veh",
	-- 		name = "low_car_sex_loop_player",
	-- 	},
	-- 	prop = {
	-- 		{
	-- 			model = "prop_cs_beer_bot_01",
	-- 			bone = 28422,
	-- 			position = vector3(0.0, 0.0, 0.0),
	-- 			rotation = vector3(0.0, 0.0, 0.0),
	-- 		},
	-- 		{
	-- 			model = "prop_cs_beer_bot_01",
	-- 			bone = 60309,
	-- 			position = vector3(0.0, 0.0, 0.0),
	-- 			rotation = vector3(0.0, 0.0, 0.0),
	-- 		},
	-- 	}
	-- }
	-- {
	-- 	position = vector4(-1003.4730, -479.2334, 49.0269, 49.1729),
	-- 	anim = {
	-- 		dict = "anim@amb@clubhouse@bar@bartender@",
	-- 		name = "greeting_b_bartender",
	-- 	}
	-- },
	{
		position = vector4(-1009.6921, -480.2115, 49.0274, 338.2319),
		anim = {
			dict = "amb@world_human_leaning@male@wall@back@foot_up@idle_a",
			name = "idle_a",
		}
	},
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

local foTo = 0
function FadeOutWithTimeout(time, timeOut)
	DoScreenFadeOut(time or 500)
	foTo = 0
	while IsScreenFadingOut() and foTo < (timeOut or 3000) do
		foTo += 1
		Citizen.Wait(1)
	end
end

local fiTo = 0
function FadeInWithTimeout(time, timeOut)
	DoScreenFadeIn(time or 500)
	fiTo = 0
	while IsScreenFadingIn() and fiTo < (timeOut or 3000) do
		fiTo += 1
		Citizen.Wait(1)
	end
end

local function loadModel(model)
	if type(model) == "string" then
		model = joaat(model)
	end
	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(100)
	end
end

RegisterCommand('ped', function(source, args, rawCommand)
	loadModel(`mp_m_freemode_01`)

	print('1')

	local ped = CreatePed(
		4,
		`mp_m_freemode_01`,
		previews[1].position.x,
		previews[1].position.y,
		previews[1].position.z,
		previews[1].position.w,
		false,
		true
	)

	while not DoesEntityExist(ped) do
		Citizen.Wait(1)
	end

	SetEntityCoords(ped, previews[1].position.x, previews[1].position.y, previews[1].position.z, false, false, false, false)
	SetEntityHeading(ped, previews[1].position.w)
	RequestAnimDict(previews[1].anim.dict)
	while not HasAnimDictLoaded(previews[1].anim.dict) do
		Wait(100)
	end
	TaskPlayAnim(ped, previews[1].anim.dict, previews[1].anim.name, 8.0, 8.0, -1, 1, 0, false, false, false)
	FreezeEntityPosition(ped, true)

	SetTimeout(10000, function()
		DeleteEntity(ped)
	end)
end, false)
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
			_cam = cam:create(-1003.2799, -479.0881, 50.5268, 0.0, 0.0, 60.0, 50.0)

            SetTimeout(5000, function()
                cam:delete(_cam)
            end)

			for k, v in ipairs(characters) do

				if previews[k] then
					if v.Preview then
						loadModel(v.Preview.model)
						-- local _ped = CreatePed(
						-- 	5,
						-- 	GetHashKey(v.Preview.model),
						-- 	previews[k][1],
						-- 	previews[k][2],
						-- 	previews[k][3],
						-- 	previews[k][4],
						-- 	false,
						-- 	true
						-- )

						-- while not DoesEntityExist(ped) do
						-- 	Wait(1)
						-- end

			-- 			SetEntityCoords(ped, previews[k][1], previews[k][2], previews[k][3], 0.0, 0.0, 0.0, false)
			-- 			FreezeEntityPosition(ped, true)
			-- 			Ped:Preview(ped, tonumber(v.Gender), v.Preview, false, v.GangChain)

			-- 			table.insert(peds, ped)
					else
			-- 			loadModel(tonumber(v.Gender) == 0 and `mp_m_freemode_01` or `mp_f_freemode_01`)
						-- local ped = CreatePed(
						-- 	5,
						-- 	tonumber(v.Gender) == 0 and `mp_m_freemode_01` or `mp_f_freemode_01`,
						-- 	previews[k][1],
						-- 	previews[k][2],
						-- 	previews[k][3],
						-- 	previews[k][4],
						-- 	false,
						-- 	true
						-- )

						-- while not DoesEntityExist(ped) do
						-- 	Citizen.Wait(1)
						-- end

						-- SetEntityCoords(ped, previews[k][1], previews[k][2], previews[k][3], 0.0, 0.0, 0.0, false)
						-- FreezeEntityPosition(ped, true)

			-- 			table.insert(peds, ped)
					end
				end
			end

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

			FadeInWithTimeout(500)
		end)
	end)
end, false)