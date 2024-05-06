_trackingEmployees = {}

function StartAETrackingThreads()
    GlobalState.GovernmentTrackers = {}

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(2500)
            local fuckingData = {}
            for k, v in pairs(emergencyAlertsData) do
                if v ~= nil and v.Source and GetPlayerEndpoint(v.Source) then
                    fuckingData[k] = v
                    local tpCoords = Player(v.Source)?.state?.tpLocation
                    if tpCoords then
                        fuckingData[k].Coords = vector3(tpCoords.x, tpCoords.y, tpCoords.z)
                    else
                        fuckingData[k].Coords = GetEntityCoords(GetPlayerPed(k))
                    end
                end
            end

            GlobalState.GovernmentTrackers = fuckingData
        end
    end)
end