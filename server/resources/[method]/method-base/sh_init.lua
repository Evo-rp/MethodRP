COMPONENTS = {}

AddEventHandler("onResourceStart", function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.CreateThread(function()
			local ver
			repeat
				Wait(0)
			until COMPONENTS.Convar.MFW_VERSION ~= nil

			if COMPONENTS.Convar.MFW_VERSION.value == "UNKNOWN" then
				ver = "^1Version Unknown"
			else
				ver = "^2v" .. COMPONENTS.Convar.MFW_VERSION.value
			end

			print([[
^2=================================================================================================^7

__    __  ______  ______  __  __  ______  _____                   
/\ "-./  \/\  ___\/\__  _\/\ \_\ \/\  __ \/\  __-.                 
\ \ \-./\ \ \  __\\/_/\ \/\ \  __ \ \ \/\ \ \ \/\ \                
 \ \_\ \ \_\ \_____\ \ \_\ \ \_\ \_\ \_____\ \____-                
 ______ \__________/  \/_______/\__________/\/_________  __  __    
/\  == \/\  __ \/\ \    /\  ___\/\  == \/\ \    /\  __ \/\ \_\ \   
\ \  __<\ \ \/\ \ \ \___\ \  __\\ \  _-/\ \ \___\ \  __ \ \____ \  
 \ \_\ \_\ \_____\ \_____\ \_____\ \_\   \ \_____\ \_\ \_\/\_____\ 
  \/_/ /_/\/_____/\/_____/\/_____/\/_/    \/_____/\/_/\/_/\/_____/ 

^7]])
			print("^3Method Framework " .. ver .. "^7 By ^6Blazer^7 & ^6Raven")

			print([[
^2=================================================================================================^7
]])

			TriggerEvent("Core:Shared:Watermark")
		end)
	end
end)
