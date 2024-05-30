_evald = {}

AddEventHandler("Police:Shared:DependencyUpdate", EMSComponents)
function EMSComponents()
	Callbacks = exports["method-base"]:FetchComponent("Callbacks")
	Damage = exports["method-base"]:FetchComponent("Damage")
	Inventory = exports["method-base"]:FetchComponent("Inventory")
	Progress = exports["method-base"]:FetchComponent("Progress")
	Notification = exports["method-base"]:FetchComponent("Notification")
	ListMenu = exports["method-base"]:FetchComponent("ListMenu")
	Interaction = exports["method-base"]:FetchComponent("Interaction")
	Animations = exports["method-base"]:FetchComponent("Animations")
end

local _calledForHelp = false
AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("EMS", {
		"Callbacks",
		"Damage",
		"Inventory",
		"Progress",
		"Notification",
		"ListMenu",
		"Interaction",
		"Animations",
	}, function(error)
		if #error > 0 then
			return
		end
		EMSComponents()

		Interaction:RegisterMenu("call-911", "Call For Help", "siren-on", function(data)
			Interaction:Hide()
			TriggerServerEvent("EMS:Server:RequestHelp")
			_calledForHelp = GetCloudTimeAsInt() + (60 * 5)
		end, function()
			return LocalPlayer.state.onDuty ~= "ems"
				and LocalPlayer.state.onDuty ~= "police"
				and LocalPlayer.state.isDead
				and GetCloudTimeAsInt() > LocalPlayer.state.isDeadTime + (60 * 2)
				and (not _calledForHelp or GetCloudTimeAsInt() > _calledForHelp)
		end)

		Interaction:RegisterMenu("ems", false, "siren-on", function(data)
			Interaction:ShowMenu({
				{
					icon = "siren-on",
					label = "13-A",
					action = function()
						Interaction:Hide()
						TriggerServerEvent("EMS:Server:Panic", true)
					end,
					shouldShow = function()
						return LocalPlayer.state.isDead
					end,
				},
				{
					icon = "siren",
					label = "13-B",
					action = function()
						Interaction:Hide()
						TriggerServerEvent("EMS:Server:Panic", false)
					end,
					shouldShow = function()
						return LocalPlayer.state.isDead
					end,
				},
			})
		end, function()
			return LocalPlayer.state.onDuty == "ems" and LocalPlayer.state.onDuty and LocalPlayer.state.isDead
		end)

		Interaction:RegisterMenu("ems-utils", "EMS Utilities", "tablet-rugged", function(data)
			Interaction:ShowMenu({
				{
					icon = "tablet-screen-button",
					label = "MDT",
					action = function()
						Interaction:Hide()
						TriggerEvent("MDT:Client:Toggle")
					end,
					shouldShow = function()
						return LocalPlayer.state.onDuty == "ems"
					end,
				},
				{
					icon = "camera-security",
					label = "Toggle Body Cam",
					action = function()
						Interaction:Hide()
						TriggerEvent("MDT:Client:ToggleBodyCam")
					end,
					shouldShow = function()
						return LocalPlayer.state.onDuty == "ems"
					end,
				},
			})
		end, function()
			return LocalPlayer.state.onDuty == "ems"
		end)

		Callbacks:RegisterClientCallback("EMS:ApplyBandage", function(data, cb)
			SetEntityHealth(LocalPlayer.state.ped, GetEntityHealth(LocalPlayer.state.ped) + 10)
			cb(true)
		end)

		Callbacks:RegisterClientCallback("EMS:Heal", function(data, cb)
			SetEntityHealth(LocalPlayer.state.ped, GetEntityHealth(LocalPlayer.state.ped) + data)
			cb(true)
		end)
	end)
end)

AddEventHandler("Proxy:Shared:RegisterReady", function()
	exports["method-base"]:RegisterComponent("EMS", _EMS)
end)

_EMS = {
	HaveEvaluated = function(self, id)
		return _evald[id] ~= nil and _evald[id] > GetGameTimer()
	end,
}

RegisterNetEvent("Characters:Client:Spawn", function()
	-- Blips:Add("st_fiacre", "Hospital", vector3(1149.516, -1531.912, 35.381), 61, 42, 0.8)
	Blips:Add("mt_zonah", "Hospital", vector3(-457.019, -333.263, 69.521), 61, 42, 0.8)
	-- Blips:Add("pb_hospital", "Hospital", vector3(297.840, -584.339, 43.261), 61, 42, 0.8)
end)
