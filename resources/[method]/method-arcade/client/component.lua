AddEventHandler("Arcade:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Callbacks = exports["method-base"]:FetchComponent("Callbacks")
	Logger = exports["method-base"]:FetchComponent("Logger")
	Notification = exports["method-base"]:FetchComponent("Notification")
	Hud = exports["method-base"]:FetchComponent("Hud")
	Targeting = exports["method-base"]:FetchComponent("Targeting")
	Status = exports["method-base"]:FetchComponent("Status")
	Progress = exports["method-base"]:FetchComponent("Progress")
	PedInteraction = exports["method-base"]:FetchComponent("PedInteraction")
	Keybinds = exports["method-base"]:FetchComponent("Keybinds")
	Jail = exports["method-base"]:FetchComponent("Jail")
	Sounds = exports["method-base"]:FetchComponent("Sounds")
	Animations = exports["method-base"]:FetchComponent("Animations")
	Weapons = exports["method-base"]:FetchComponent("Weapons")
	Jobs = exports["method-base"]:FetchComponent("Jobs")
	Input = exports["method-base"]:FetchComponent("Input")
	Arcade = exports["method-base"]:FetchComponent("Arcade")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("Arcade", {
		"Callbacks",
		"Logger",
		"Notification",
		"Hud",
		"Targeting",
		"Status",
		"Progress",
		"PedInteraction",
		"Keybinds",
		"Jail",
		"Sounds",
		"Animations",
		"Weapons",
		"Jobs",
		"Input",
		"Arcade",
	}, function(error)
		if #error > 0 then
			return
		end
		RetrieveComponents()

		TriggerEvent("Arcade:Client:Setup")

		PedInteraction:Add("ArcadeMaster", `cs_jimmydisanto`, vector3(-1658.916, -1062.421, 11.160), 228.868, 25.0, {
			{
				icon = "clipboard-check",
				text = "Clock In",
				event = "Arcade:Client:ClockIn",
				data = { job = "avast_arcade" },
				jobPerms = {
					{
						job = "avast_arcade",
						reqOffDuty = true,
					},
				},
			},
			{
				icon = "clipboard",
				text = "Clock Out",
				event = "Arcade:Client:ClockOut",
				data = { job = "avast_arcade" },
				jobPerms = {
					{
						job = "avast_arcade",
						reqDuty = true,
					},
				},
			},
			{
				icon = "heart-pulse",
				text = "Open Arcade",
				event = "Arcade:Client:Open",
				jobPerms = {
					{
						job = "avast_arcade",
						reqDuty = true,
					},
				},
				isEnabled = function()
					return not GlobalState["Arcade:Open"]
				end,
			},
			{
				icon = "heart-pulse",
				text = "Close Arcade",
				event = "Arcade:Client:Close",
				jobPerms = {
					{
						job = "arcade",
						reqDuty = true,
					},
				},
				isEnabled = function()
					return GlobalState["Arcade:Open"]
				end,
			},
			{
				icon = "heart-pulse",
				text = "Create New Game",
				event = "Arcade:Client:CreateNew",
				isEnabled = function()
					return GlobalState["Arcade:Open"]
				end,
			},
		}, "joystick", "WORLD_HUMAN_STAND_IMPATIENT")
	end)
end)

AddEventHandler("Arcade:Client:ClockIn", function(_, data)
	if data and data.job then
		Jobs.Duty:On(data.job)
	end
end)

AddEventHandler("Arcade:Client:ClockOut", function(_, data)
	if data and data.job then
		Jobs.Duty:Off(data.job)
	end
end)

AddEventHandler("Arcade:Client:Open", function()
	Callbacks:ServerCallback("Arcade:Open", false, function() end)
end)

AddEventHandler("Arcade:Client:Close", function()
	Callbacks:ServerCallback("Arcade:Close", false, function() end)
end)

AddEventHandler("Arcade:Client:CreateNew", function(entity, data)
	Input:Show("Create New Match", "Match Configuration", {
		{
			id = "gamemode",
			type = "select",
			select = {
				{
					label = "Team Deathmatch",
					value = "tdm",
				},
			},
			options = {},
		},
		{
			id = "map",
			type = "select",
			select = {
				{
					label = "Random",
					value = "random",
				},
				{
					label = "Legion Square",
					value = "legionsquare",
				},
			},
			options = {},
		},
	}, "Arcade:Client:SubmitGame", data)
end)

_ARCADE = {
	Gamemode = {
		Register = function(self, id, label) end,
	},
}

AddEventHandler("Proxy:Shared:RegisterReady", function(component)
	exports["method-base"]:RegisterComponent("Arcade", _ARCADE)
end)
