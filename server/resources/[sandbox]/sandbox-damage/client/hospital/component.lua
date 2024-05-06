_curBed = nil
_done = false

_healEnd = nil
_leavingBed = false

AddEventHandler("Hospital:Shared:DependencyUpdate", HospitalComponents)
function HospitalComponents()
	Callbacks = exports["sandbox-base"]:FetchComponent("Callbacks")
	Notification = exports["sandbox-base"]:FetchComponent("Notification")
	Damage = exports["sandbox-base"]:FetchComponent("Damage")
	Notification = exports["sandbox-base"]:FetchComponent("Notification")
	Targeting = exports["sandbox-base"]:FetchComponent("Targeting")
	Hospital = exports["sandbox-base"]:FetchComponent("Hospital")
	Progress = exports["sandbox-base"]:FetchComponent("Progress")
	PedInteraction = exports["sandbox-base"]:FetchComponent("PedInteraction")
	Escort = exports["sandbox-base"]:FetchComponent("Escort")
	Action = exports["sandbox-base"]:FetchComponent("Action")
	Polyzone = exports["sandbox-base"]:FetchComponent("Polyzone")
	Animations = exports["sandbox-base"]:FetchComponent("Animations")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["sandbox-base"]:RequestDependencies("Hospital", {
		"Callbacks",
		"Notification",
		"Damage",
		"Targeting",
		"Hospital",
		"Progress",
		"PedInteraction",
		"Escort",
		"Polyzone",
		"Action",
		"Animations",
	}, function(error)
		if #error > 0 then
			return
		end
		HospitalComponents()
		Init()

		while GlobalState["HiddenHospital"] == nil do
			Citizen.Wait(5)
		end

		PedInteraction:Add("HiddenHospital", `s_m_m_doctor_01`, GlobalState["HiddenHospital"].coords, GlobalState["HiddenHospital"].heading, 25.0, {
			{
				icon = "heart-pulse",
				text = "Revive Escort (20 $PLEB)",
				event = "Hospital:Client:HiddenRevive",
				data = LocalPlayer.state.isEscorting or {},
				isEnabled = function()
					if LocalPlayer.state.isEscorting ~= nil and not LocalPlayer.state.isDead then
						local ps = Player(LocalPlayer.state.isEscorting).state
						return ps.isDead and not ps.deadData?.isMinor
					else
						return false
					end
				end,
			},
		}, 'suitcase-medical', 'CODE_HUMAN_MEDIC_KNEEL')

		Polyzone.Create:Box('hospital-check-in-zone', vector3(-436.09, -326.23, 34.91), 2.0, 3.0, {
			heading = 338,
			--debugPoly=true,
			minZ = 33.91,
			maxZ = 36.31
		}, {})

		Targeting.Zones:AddBox("icu-checkout", "bell-concierge", vector3(-492.49, -336.15, 69.52), 0.8, 7.2, {
			name = "hospital",
			heading = 353,
			--debugPoly=true,
			minZ = 68.52,
			maxZ = 70.52
		}, {
			{
				icon = "bell-concierge",
				text = "Request Personnel",
				event = "Hospital:Client:RequestEMS",
				isEnabled = function()
					return (LocalPlayer.state.Character:GetData("ICU") ~= nil and not LocalPlayer.state.Character:GetData("ICU").Released) and (not _done or _done < GetCloudTimeAsInt())
				end,
			}
		})

		-- Polyzone.Create:Poly("hospital-icu-area", {
		-- 	vector2(354.17932128906, -574.37493896484),
		-- 	vector2(348.17727661133, -590.24188232422),
		-- 	vector2(342.99060058594, -588.28936767578),
		-- 	vector2(339.7565612793, -597.43585205078),
		-- 	vector2(343.75970458984, -603.55010986328),
		-- 	vector2(357.34606933594, -608.74798583984),
		-- 	vector2(371.61782836914, -574.05297851562),
		-- 	vector2(356.18313598633, -570.21020507812)
		-- }, {
		-- 	--debugPoly=true,
		-- 	-- minZ = 45.279621124268,
		-- 	-- maxZ = 40.288124084473
		-- })
	end)
end)

AddEventHandler("Hospital:Client:RequestEMS", function()
	if not _done or _done < GetCloudTimeAsInt() then
		TriggerServerEvent("EmergencyAlerts:Server:DoPredefined", "icurequest")
		_done = GetCloudTimeAsInt() + (60 * 10)
	end
end)

AddEventHandler('Proxy:Shared:RegisterReady', function()
    exports['sandbox-base']:RegisterComponent('Hospital', HOSPITAL)
end)

local _bedId = nil
HOSPITAL = {
	CheckIn = function(self)
		Callbacks:ServerCallback('Hospital:Treat', {}, function(bed)
			if bed ~= nil then
				_countdown = Config.HealTimer
				LocalPlayer.state:set("isHospitalized", true, true)
				Hospital:SendToBed(Config.Beds[bed], false, bed)
			else
				Notification:Error('No Beds Available')
			end
		end)
	end,
	SendToBed = function(self, bed, isRp, bedId)
		local fuck = false

		if bedId then
			local p = promise.new()
			Callbacks:ServerCallback('Hospital:OccupyBed', bedId, function(s)
				p:resolve(s)
			end)

			fuck = Citizen.Await(p)
		else
			fuck = true
		end

		_bedId = bedId

		if bed ~= nil and fuck then
			SetBedCam(bed)
			if isRp then
				_healEnd = GetCloudTimeAsInt()
				Hud.DeathTexts:Show("hospital_rp", GetCloudTimeAsInt(), _healEnd, "primary_action")
			else
				_healEnd = GetCloudTimeAsInt() + (60 * 1)
				Hud.DeathTexts:Show("hospital", GetCloudTimeAsInt(), _healEnd, "primary_action")
				Citizen.SetTimeout(((_healEnd - GetCloudTimeAsInt()) - 10) * 1000, function()
					if LocalPlayer.state.loggedIn and LocalPlayer.state.isHospitalized then
						Damage:Revive()
					end
				end)
			end
		else
			Notification:Error('Invalid Bed or Bed Occupied')
		end
	end,
	FindBed = function(self, object)
		local coords = GetEntityCoords(object)
		Callbacks:ServerCallback('Hospital:FindBed', coords, function(bed)
			if bed ~= nil then
				Hospital:SendToBed(Config.Beds[bed], true, bed)
			else
				Hospital:SendToBed({
					x = coords.x,
					y = coords.y,
					z = coords.z,
					h = GetEntityHeading(object),
					freeBed = true,
				}, true)
			end
		end)
	end,
	LeaveBed = function(self)
		Callbacks:ServerCallback('Hospital:LeaveBed', _bedId, function()
			_bedId = nil
		end)
	end,
}

local _inCheckInZone = false

AddEventHandler('Polyzone:Enter', function(id, point, insideZone, data)
    if id == 'hospital-check-in-zone' then
        _inCheckInZone = true

		if not LocalPlayer.state.isEscorted and (GlobalState["ems:pmc:doctor"] == nil or GlobalState["ems:pmc:doctor"] == 0) then
			if not GlobalState["Duty:ems"] or GlobalState["Duty:ems"] == 0 then
				Action:Show('{keybind}primary_action{/keybind} Check In {key}$150{/key}')
			else
				Action:Show('{keybind}primary_action{/keybind} Check In {key}$5000{/key}')
			end
		end
    end
end)

AddEventHandler('Polyzone:Exit', function(id, point, insideZone, data)
    if id == 'hospital-check-in-zone' then
        _inCheckInZone = false
		Action:Hide()
	elseif id == "hospital-icu-area" and LocalPlayer.state.loggedIn then
		if LocalPlayer.state.Character:GetData("ICU") and not LocalPlayer.state.Character:GetData("ICU").Released then
			TriggerEvent("Hospital:Client:ICU:Enter")
		end
    end
end)

AddEventHandler('Keybinds:Client:KeyUp:primary_action', function()
    if _inCheckInZone then
		if not LocalPlayer.state.doingAction and not LocalPlayer.state.isEscorted and (GlobalState["ems:pmc:doctor"] == nil or GlobalState["ems:pmc:doctor"] == 0) then
			TriggerEvent('Hospital:Client:CheckIn')
		end
	else
		if _curBed ~= nil and LocalPlayer.state.isHospitalized and GetCloudTimeAsInt() > _healEnd and not _leavingBed then
			_leavingBed = true
			Hud.DeathTexts:Release()
			LeaveBed()
		end
	end
end)