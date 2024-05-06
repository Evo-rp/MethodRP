function RegisterChatCommands()
    Chat:RegisterAdminCommand("boostingevent", function(source, args, rawCommand)
        if _boostingEvent then
            _boostingEvent = false
            Chat.Send.System:Single(source, "Boosting Event Disabled")
        else
            _boostingEvent = true
            Chat.Send.System:Single(source, "Boosting Event Enabled")
        end
	end, {
		help = "[Admin] Toggle Boosting Event Mode",
	}, 0)

    Chat:RegisterAdminCommand("boostingevent2", function(source, args, rawCommand)
        local plyr = Fetch:SID(tonumber(args[1]))
        if plyr then
            local char = plyr:GetData("Character")
            if char then
                local alias = char:GetData("Alias")
                if alias?.redline then
                    Chat.Send.System:Single(source, string.format("%s %s (%s) - Alias %s", char:GetData("First"), char:GetData("Last"), char:GetData("SID"), alias.redline))
                end
            end
        end
	end, {
		help = "[Admin] Get Racing Alias",
        params = {
			{
				name = "SID",
				help = "SID",
			},
		}
	}, 1)
end
