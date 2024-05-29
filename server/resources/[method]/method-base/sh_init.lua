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
__  __      _   _               _   _____  _____      
|  \/  |    | | | |             | | |  __ \|  __ \     
| \  / | ___| |_| |__   ___   __| | | |__) | |__) |    
| |\/| |/ _ \ __| '_ \ / _ \ / _` | |  _  /|  ___/     
| |  | |  __/ |_| | | | (_) | (_| | | | \ \| |         
|_|  |_|\___|\__|_| |_|\___/ \__,_| |_|  \_\_|    _    
|  ____|                                         | |   
| |__ _ __ __ _ _ __ ___   _____      _____  _ __| | __
|  __| '__/ _` | '_ ` _ \ / _ \ \ /\ / / _ \| '__| |/ /
| |  | | | (_| | | | | | |  __/\ V  V / (_) | |  |   < 
|_|  |_|  \__,_|_| |_| |_|\___| \_/\_/ \___/|_|  |_|\_\
^7]])
print("^1Method RP Framework " .. ver)
print("^0Made By ^6Alzar^0,^6 Dr Nick^0 & ^6Panda")
print("^3Contributors: ^1Jamey^0,^3 PixelRez^0,^3 Raven^0, ^3 akaLucifer^0 & ^3 Gellipapa")
				
print([[
^2=================================================================================================^7
]])
				
				TriggerEvent("Core:Shared:Watermark")
			end)
		end
	end)
				