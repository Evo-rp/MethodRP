VEHICLE_INSIDE = nil
LOCAL_CACHED_EVIDENCE = {}

_ammoNames = {
	AMMO_STUNGUN = "Stungun Ammo",
	AMMO_PISTOL = "Pistol Ammo",
	AMMO_SMG = "SMG Ammo",
	AMMO_RIFLE = "Rifle Ammo",
	AMMO_SHOTGUN = "Shotgun Ammo",
	AMMO_SNIPER = "Sniper Ammo",
	AMMO_FLARE = "Flare Ammo",
	AMMO_MG = "Machine Gun Ammo",
}

AddEventHandler("Evidence:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Logger = exports["sandbox-base"]:FetchComponent("Logger")
	Fetch = exports["sandbox-base"]:FetchComponent("Fetch")
	Callbacks = exports["sandbox-base"]:FetchComponent("Callbacks")
	Game = exports["sandbox-base"]:FetchComponent("Game")
	Targeting = exports["sandbox-base"]:FetchComponent("Targeting")
	Utils = exports["sandbox-base"]:FetchComponent("Utils")
	Keybinds = exports["sandbox-base"]:FetchComponent("Keybinds")
	Animations = exports["sandbox-base"]:FetchComponent("Animations")
	Notification = exports["sandbox-base"]:FetchComponent("Notification")
	Polyzone = exports["sandbox-base"]:FetchComponent("Polyzone")
	Jobs = exports["sandbox-base"]:FetchComponent("Jobs")
	Weapons = exports["sandbox-base"]:FetchComponent("Weapons")
	Progress = exports["sandbox-base"]:FetchComponent("Progress")
	Vehicles = exports["sandbox-base"]:FetchComponent("Vehicles")
	Targeting = exports["sandbox-base"]:FetchComponent("Targeting")
	ListMenu = exports["sandbox-base"]:FetchComponent("ListMenu")
	Action = exports["sandbox-base"]:FetchComponent("Action")
	Sounds = exports["sandbox-base"]:FetchComponent("Sounds")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["sandbox-base"]:RequestDependencies("Evidence", {
		"Logger",
		"Fetch",
		"Callbacks",
		"Game",
		"Menu",
		"Targeting",
		"Notification",
		"Utils",
		"Animations",
		"Keybinds",
		"Polyzone",
		"Jobs",
		"Weapons",
		"Progress",
		"Vehicles",
		"Targeting",
		"ListMenu",
		"Action",
		"Sounds",
	}, function(error)
		if #error > 0 then
			return
		end
		RetrieveComponents()

		Polyzone.Create:Box("evidence_ballistics_mrpd", vector3(483.41, -993.34, 30.69), 1.6, 2.4, {
			heading = 359,
			minZ = 29.69,
			maxZ = 31.89,
		}, {
			ballistics = true,
		})

		Polyzone.Create:Box("evidence_dna_mrpd", vector3(486.98, -993.51, 30.69), 1.0, 1.2, {
			heading = 0,
			minZ = 29.69,
			maxZ = 32.09,
		}, {
			dna = true,
		})

		Polyzone.Create:Box("evidence_ballistics_dpd", vector3(369.46, -1590.37, 25.45), 1.2, 1.6, {
			heading = 359,
			minZ = 24.45,
			maxZ = 27.25,
		}, {
			ballistics = true,
		})

		Polyzone.Create:Box("evidence_dna_dpd", vector3(367.9, -1592.18, 25.45), 1.2, 1.6, {
			heading = 0,
			minZ = 24.45,
			maxZ = 27.25,
		}, {
			dna = true,
		})

		Polyzone.Create:Box("evidence_ballistics_lmpd", vector3(849.52, -1311.05, 28.24), 1.8, 2, {
			heading = 0,
			--debugPoly=true,
			minZ = 27.24,
			maxZ = 29.84,
		}, {
			ballistics = true,
		})

		Polyzone.Create:Box("evidence_dna_guardius", vector3(-1066.9, -240.11, 49.85), 2.0, 1.6, {
			heading = 295,
			--debugPoly=true,
			minZ = 48.85,
			maxZ = 51.45,
		}, {
			dna = true,
		})

		Polyzone.Create:Box("evidence_ballistics_guardius", vector3(-1062.82, -237.75, 49.85), 2.0, 1.6, {
			heading = 295,
			--debugPoly=true,
			minZ = 48.85,
			maxZ = 51.45,
		}, {
			ballistics = true,
		})

		Polyzone.Create:Box("evidence_dna_lmpd", vector3(853.45, -1292.58, 28.24), 1.8, 1, {
			heading = 0,
			--debugPoly=true,
			minZ = 27.24,
			maxZ = 29.64,
		}, {
			dna = true,
		})

		Polyzone.Create:Box("evidence_dna_mt_zona_1", vector3(-444.11, -296.49, 34.91), 3.6, 1.6, {
			heading = 290,
			--debugPoly=true,
			minZ = 33.91,
			maxZ = 36.11,
		}, {
			dna = true,
		})

		Polyzone.Create:Box("evidence_dna_mt_zona_2", vector3(-442.69, -299.56, 34.91), 3.6, 1.6, {
			heading = 290,
			--debugPoly=true,
			minZ = 33.91,
			maxZ = 36.11,
		}, {
			dna = true,
		})

		Polyzone.Create:Box("evidence_dna_pb_hospital_1", vector3(312.110, -563.146, 42.284), 1.0, 2.0, {
			heading = 251.908,
			--debugPoly=true,
			minZ = 41.284,
			maxZ = 44.284,
		}, {
			dna = true,
		})

		Polyzone.Create:Box("evidence_dna_pb_hospital_2", vector3(309.074, -561.628, 42.284), 1.0, 2.0, {
			heading = 68.067,
			--debugPoly=true,
			minZ = 41.284,
			maxZ = 44.284,
		}, {
			dna = true,
		})

		Polyzone.Create:Box("evidence_dna_st_fiacre_1", vector3(1148.05, -1573.32, 35.03), 2, 2.8, {
			heading = 0,
			--debugPoly=true,
			minZ = 33.23,
			maxZ = 37.03,
		}, {
			dna = true,
		})

		Polyzone.Create:Box("evidence_dna_st_fiacre_2", vector3(1138.54, -1550.75, 39.5), 2.4, 3.4, {
			heading = 0,
			--debugPoly=true,
			minZ = 37.5,
			maxZ = 41.5,
		}, {
			dna = true,
		})
	end)
end)

AddEventHandler("Vehicles:Client:EnterVehicle", function(veh)
	VEHICLE_INSIDE = veh
end)

AddEventHandler("Vehicles:Client:ExitVehicle", function()
	VEHICLE_INSIDE = nil
end)

local pendingEvidenceUpdate = false

function UpdateCachedEvidence()
	if not pendingEvidenceUpdate then
		pendingEvidenceUpdate = true
		Citizen.SetTimeout(5000, function()
			pendingEvidenceUpdate = false
			SendCachedEvidence()
		end)
	end
end

function SendCachedEvidence()
	TriggerServerEvent("Evidence:Server:RecieveEvidence", LOCAL_CACHED_EVIDENCE)
	LOCAL_CACHED_EVIDENCE = {}
end
