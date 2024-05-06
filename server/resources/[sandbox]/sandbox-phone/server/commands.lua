function RegisterChatCommands()
	Chat:RegisterAdminCommand("clearalias", function(source, args, rawCommand)
		if tonumber(args[1]) then
			local plyr = Fetch:SID(tonumber(args[1]))
			if plyr ~= nil then
				local char = plyr:GetData("Character")
				if char ~= nil then
					local aliases = char:GetData("Alias")
					aliases[args[2]] = nil
					char:SetData("Alias", aliases)
					Chat.Send.System:Single(
						source,
						string.format(
							"Alias Cleared For %s %s (%s) For %s",
							char:GetData("First"),
							char:GetData("Last"),
							char:GetData("SID"),
							args[2]
						)
					)
				else
					Chat.Send.System:Single(source, "Invalid Target")
				end
			else
				Chat.Send.System:Single(source, "Invalid Target")
			end
		else
			Chat.Send.System:Single(source, "Invalid Target")
		end
	end, {
		help = "[Admin] Clear Player App Alias",
		params = {
			{
				name = "SID",
				help = "Target State ID",
			},
			{
				name = "App ID",
				help = "App ID to reset the players alias for",
			},
		},
	}, 2)

	Chat:RegisterStaffCommand("ctwitter", function(source, args, rawCommand)
		ClearAllTweets(args[1])
		Chat.Send.System:Single(source, "All Tweets Removed")
	end, {
		help = "[Admin] Clear All Tweets",
		params = {
			{
				name = "SID",
				help = "(Optional) Target State ID",
			},
		},
	}, -1)

	Chat:RegisterStaffCommand("twitteraccount", function(source, args, rawCommand)
		local twitterName = args[1]

		Database.Game:findOne({
			collection = "characters",
			query = {
				["Alias.twitter.name"] = twitterName,
			},
		}, function(success, results)
			if success and #results > 0 then
				local char = results[1]
				Chat.Send.System:Single(
					source,
					string.format(
						"Twitter Account Found With Name: %s. %s %s (SID: %s) [User: %s]",
						twitterName,
						char.First,
						char.Last,
						char.SID,
						char.User
					)
				)
			else
				Chat.Send.System:Single(source, "No Twitter Account Found")
			end
		end)
	end, {
		help = "[Admin] Get Twitter Account Owner",
		params = {
			{
				name = "Account Name",
				help = "Account Name of User You Want to Find",
			},
		},
	}, 1)

	Chat:RegisterAdminCommand("govtweet", function(source, args, rawCommand)
		local accountName, accountAvatar, content, image = args[1], args[2], args[3], args[4]

		if accountName and accountAvatar and content then
			if image then
				image = {
					using = true,
					link = image,
				}
			else
				image = {
					using = false,
				}
			end

			Phone.Twitter:Post(
				-1, 
				-1, 
				{
					name = accountName,
					avatar = accountAvatar,
				},
				content,
				image,
				false,
				"government"
			)
			Chat.Send.System:Single(source, "Tweet Sent")
		end
	end, {
		help = "[Admin] Send GOVERNMENT ACCOUNT Tweet",
		params = {
			{
				name = "Account Name",
				help = "",
			},
			{
				name = "Account Avatar",
				help = "",
			},
			{
				name = "Tweet Content",
				help = "",
			},
			{
				name = "Tweet Image",
				help = "",
			},
		},
	}, -1)

	Chat:RegisterAdminCommand("reloadtracks", function(source, args, rawCommand)
		ReloadRaceTracks()
		Chat.Send.System:Single(source, "Reload Vroom Vrooms")
	end, {
		help = "[Admin] Reload Race Tracks",
	}, 0)
end
