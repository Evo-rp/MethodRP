local _houseLocs = {
	{
		coords = vector3(-80.075, -1237.664, 28.110),
		heading = 186.531,
	},
}

local rando = _houseLocs[math.random(#_houseLocs)]
local _locations = {
	houseRobbery = rando,
	oxy = _oxyStarts[tostring(os.date("%w"))],
	corner = {
		coords = vector3(214.396, -1841.479, 31.563),
		heading = 114.118,
	},
}

AddEventHandler("onResourceStart", function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(20)
		TriggerClientEvent("Labor:Client:GetLocs", -1, _locations)
	end
end)

AddEventHandler("Queue:Server:SessionActive", function(source, data)
	TriggerClientEvent("Labor:Client:GetLocs", source, _locations)
end)
