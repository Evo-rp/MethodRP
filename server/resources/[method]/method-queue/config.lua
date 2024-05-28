Config = {
	MaxPrio = 1000,
	ExcludeDrop = {
		"Disconnected",
		"cup-leopard-triple",
		"Kicked",
		"Banned",
		"Exiting",
	},
	Settings = {
		QueueDelay = 0.25,
		MaxTimeBoost = 30,
		Grace = 5,
		AllowedPerTick = 20,
	},
	Strings = {
		Add = "Added %s (Account: %s, Identifier: %s) To Queue %s/%s (Current Players: %s, Prio: %s, QueueLevel: %s)",
		Banned = "You're Banned. Appeal At https://forms.gle/uYDZpPBf7n2NtdoSA\n\nReason: %s\nExpires: %s\nID: %s",
		PermaBanned = "Permanently Banned, Appeal in Discord\n\nReason: %s\nID: %s",
		SiteBanned = "You're Banned From the Website. View Reason At https://discord.gg/methodrp",
		Checking = "Checking Whitelist Status",
		Disconnected = "%s (Account: %s, Identifier: %s) Disconnected From Queue",
		Crash = "%s (Account: %s, Identifier: %s) Crashed - Adding Crash Priority for 5 Minutes",
		Dropped = "Dropped From Server.",
		Joined = "%s (Account: %s, Identifier: %s) Joined The Server",
		Joining = "Joining Server...",
		NoIdentifier = "Could Not Find A License Identifier, Relaunch FiveM and try again.",
		NotReady = "The server has not yet finished loading, please try again in a few minutes.",
		NotWhitelisted = "You Are Not Whitelisted For This Server - Apply At https://discord.gg/methodrp",
		Queued = "Position %s of %s - Time In Queue: %s%s",
		Retrieving = "Retrieving Queue Information",
		Waiting = "Waiting For Queue To Open - %s %s %s %s",
		WaitingSeconds = "Waiting For Queue To Open - %s %s",
		PendingRestart = "Please Wait Before Reconnecting, A Restart Is Currently Being Processed...",

		WebLinkComplete = "Successfully Linked FiveM Account to Site. Joining the Queue",
		WebLinkError = "Failed to Link FiveM to Site. Make Sure That the Code Hasn't Expired."
	},
}



Config.Cards = {}
Config.Cards.NotWhitelisted = {
	body = {
		{
			size = "ExtraLarge",
			type = "TextBlock",
			weight = "Bolder",
			text = "You Are Not Whitelisted For This Server",
			style = "heading",
		},
		{
			size = "Medium",
			type = "TextBlock",
			wrap = true,
			text = "You are not whitelisted for this server or a connected account could not be found. Please apply at https://discord.gg/methodrp"
		},
		{
			actions = {
				{
					title = "Visit Site",
					type = "Action.OpenUrl",
					url = "https://discord.gg/methodrp",
				},
				{
					title = "Start Account Linking",
					type = "Action.Submit",
					data = {
						linking = true,
					}
				},
			},
			type = "ActionSet"
		}
	},
	type = "AdaptiveCard",
	version = "1.0",
	["$schema"] = "http://adaptivecards.io/schemas/adaptive-card.json"
}

Config.Cards.AccountLinking = {
	body = {
		{
			size = "ExtraLarge",
			type = "TextBlock",
			weight = "Bolder",
			text = "Link FiveM With Site",
			style = "heading",
		},
		{
			size = "Medium",
			type = "TextBlock",
			wrap = true,
			text = "Please enter the code generated on the site (in your user settings) below. Please note that you have to be whitelisted in order to link your FiveM to the site."
		},
		{
			placeholder = "One Time Code",
			type = "Input.Text",
			id = "code",
			title = "Test",
			style = "Password",
			maxLength = 16,
		},
		{
			actions = {
				{
					title = "Submit",
					type = "Action.Submit"
				},
				{
					title = "Cancel",
					type = "Action.Submit",
					data = {
						cancel = true,
					}
				},
			},
			type = "ActionSet"
		}
	},
	type = "AdaptiveCard",
	version = "1.0",
	["$schema"] = "http://adaptivecards.io/schemas/adaptive-card.json"
}