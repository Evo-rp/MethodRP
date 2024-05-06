local _ran = false

function DefaultData()
	if _ran then
		return
	end
	local Default = exports["sandbox-base"]:FetchComponent("Default")
end
