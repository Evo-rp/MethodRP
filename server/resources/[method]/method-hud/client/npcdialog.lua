NPCDialog = {
    isOpen = false,

    Open = function(entity, data)
        NPCDialog.isOpen = true
        local coords = GetOffsetFromEntityInWorldCoords(entity, 0, 1.5, 0.3)
        local NPCCam = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)
        SetEntityLocallyInvisible(PlayerPedId())
        SetCamActive(NPCCam, true)
        RenderScriptCams(true, true, 500, true, true)
        SetCamCoord(NPCCam, coords.x, coords.y, coords.z + 0.2)
        SetCamRot(NPCCam, 0.0, 0.0, GetEntityHeading(entity) + 180, 5)
        SetCamFov(NPCCam, 40.0)
        SetNuiFocus(true, true)
        TriggerEvent('Weapons:Client:AttachToggle', true)

        SendNUIMessage({
			type = "NPCState",
            data = {
                showing = true,
                firstName = data.first_name,
                lastName = data.last_name,
                tag = data.Tag,
                description = data.description,
                buttons = data.buttons
			},
		})
        SetNuiFocus(true, true)
        NPCDialog:Invisible()
    end,

    Close = function()
        NPCDialog.isOpen = false
        TriggerEvent('Weapons:Client:AttachToggle', false)
        RenderScriptCams(false, true, 500, true, true)
        DestroyCam(NPCCam)
        SendNUIMessage({
            type = 'NPCClose'
        })
        SetNuiFocus(false, false)
    end,

    Invisible = function()
        while NPCDialog.isOpen do
            SetEntityLocallyInvisible(PlayerPedId())
            Wait(1)
        end
    end
}

RegisterNUICallback('NPCResponse', function(data, cb)
    print(json.encode(data, {indent = true}))
    if data.close then
        NPCDialog:Close()
    end

    if data.event then
        TriggerEvent(data.event, data.params)
    end
end)

AddEventHandler("Proxy:Shared:RegisterReady", function()
	exports["evo-base"]:RegisterComponent("NPCDialog", NPCDialog)
end)
