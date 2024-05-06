local _intIPL = "gabz_mba_milo_"
local _intCoords = { x = -324.22030000, y = -1968.49300000, z = 20.60336000 }
local _entitySets = {
    {
        name = "mba_tribune", 
        events = { 
            "basketball",
            "paintball",
            "concert",
            "fashion",
            "contest",
            "wrestling",
            "boxing",
            "mma",
            "icehockey",
            "rocketleague",
            "football",
			"rocketleague"
        }
    },

    {
        name = "mba_tarps",
        events = { 
            "basketball",
            "concert",
            "fashion",
            "contest",
            "wrestling",
            "boxing",
            "mma",
            "icehockey",
        } 
    },

    {
        name = "mba_jumbotron",
        events = {
            "basketball",
            "paintball",
            "concert",
            "fashion",
            "contest",
            "wrestling",
            "boxing",
            "mma",
        }
    },

    { name = "mba_basketball", events = { "basketball" } },
    { name = "mba_cover", events = { "derby", "trackmaniaa", "trackmaniab", "trackmaniac", "trackmaniad", "gokarta", "gokartb" } },
    { name = "mba_terrain", events = { "derby" } },
    { name = "mba_derby", events = { "derby" } },
    { name = "mba_ring_of_fire", events = { "derby" } },
    { name = "mba_paintball", events = { "paintball" } },
    { name = "mba_chairs", events = { "paintball", "concert", "basketball", "fashion", "contest", "wrestling", "boxing", "mma", "football", "icehockey", "rocketleague" } },
    { name = "mba_backstage", events = { "concert", "fashion", "contest" } },
    { name = "mba_concert", events = { "concert" } },
    { name = "mba_fashion", events = { "fashion" } },
    { name = "mba_fameorshame", events = { "contest" } },
    { name = "mba_fighting", events = { "wrestling", "boxing", "mma" } },
    { name = "mba_wrestling", events = { "wrestling" } },
    { name = "mba_boxing", events = { "boxing" } },
    { name = "mba_mma", events = { "mma" } },
    { name = "mba_curling", events = { "curling" } },
    { name = "mba_field", events = { "icehockey", "football" } },
    { name = "mba_soccer", events = { "football" } },
    { name = "mba_hockey", events = { "icehockey" } },
    { name = "mba_trackmania_01", events = { "trackmaniaa" } },
    { name = "mba_trackmania_02", events = { "trackmaniab" } },
    { name = "mba_trackmania_03", events = { "trackmaniac" } },
    { name = "mba_trackmania_04", events = { "trackmaniad" } },
    { name = "mba_rocketleague", events = { "rocketleague" } },
    { name = "mba_gokart_01", events = { "gokarta" } },
    { name = "mba_gokart_02", events = { "gokartb" } },
}

local _eventNames = {
    basketball = "Basketball",
    paintball = "Paintball",
    concert = "Concert",
    fashion = "Fashion",
    contest = "Contest",
    wrestling = "Wrestling",
    boxing = "Boxing",
    mma = "MMA",
    derby = "Demolition Derby",
    curling = "Curling",
    trackmaniaa = "Track Mania A",
    trackmaniab = "Track Mania B",
    trackmaniac = "Track Mania C",
    trackmaniad = "Track Mania D",
    gokarta = "Go Kart A",
    gokartb = "Go Kart B",
    icehockey = "Ice Hockey",
    football = "Football",
	rocketleague = "Rocket League"
}

function SetMBAInterior(e)
    RequestIpl(_intIPL)
    local interiorId = GetInteriorAtCoords(_intCoords.x, _intCoords.y, _intCoords.z)

    if IsValidInterior(interiorId) then
        for k,v in ipairs(_entitySets) do
            local found = false
            for _, event in ipairs(v.events) do
                if event == e then
                    found = true
                    break
                end
            end

            if found then
                EnableInteriorProp(interiorId, v.name)
            else
                DisableInteriorProp(interiorId, v.name)
            end
        end

        RefreshInterior(interiorId)
    end
end

RegisterNetEvent("Characters:Client:Spawn")
AddEventHandler("Characters:Client:Spawn", function()
    while GlobalState["MBA:Interior"] == nil do
        Citizen.Wait(5)
    end

    SetMBAInterior(GlobalState["MBA:Interior"])
end)

Citizen.CreateThread(function()
    if LocalPlayer.state.loggedIn then
        SetMBAInterior(GlobalState["MBA:Interior"])
    end
end)

RegisterNetEvent("Businesses:Client:MBA:InteriorUpdate", function(v)
    if LocalPlayer.state.loggedIn then
        SetMBAInterior(v)
    end
end)

AddEventHandler("Businesses:Client:Startup", function()

    Targeting.Zones:AddBox("mba-event-management", "wand-magic-sparkles", vector3(-288.47, -1949.26, 38.05), 5.0, 1.0, {
        heading = 50,
        --debugPoly=true,
        minZ = 37.05,
        maxZ = 39.05
	}, {
        {
            icon = "clipboard-check",
            text = "Clock In",
            event = "Businesses:Client:ClockIn",
			data = { job = "mba" },
			jobPerms = {
				{
					job = "mba",
					reqOffDuty = true,
				}
			},
        },
        {
            icon = "clipboard",
            text = "Clock Out",
            event = "Businesses:Client:ClockOut",
			data = { job = "mba" },
			jobPerms = {
				{
					job = "mba",
					reqDuty = true,
				}
			},
        },
        {
            icon = "wand-magic-sparkles",
            text = "Event Setup",
            event = "Businesses:Client:MBA:StartChangeInterior",
            data = {},
            jobPerms = {
				{
					job = "mba",
					reqDuty = true,
					permissionKey = 'JOB_SET_MBA',
				}
            },
        },
    }, 3.0, true)
end)

AddEventHandler("Businesses:Client:MBA:StartChangeInterior", function()
    local current = GlobalState["MBA:Interior"]

    local options = {}

    for k, v in pairs(_eventNames) do
        if k ~= current then
            table.insert(options, {
                label = v,
                value = k,
            })
        end
    end

    Input:Show(string.format("Change Event Floor - Current: %s", _eventNames[current]), "Match Configuration", {
		{
			id = "interior",
			type = "select",
			select = options,
			options = {},
		},
	}, "Businesses:Client:MBA:ChangeInterior", {})
end)

AddEventHandler("Businesses:Client:MBA:ChangeInterior", function(values)
    if values?.interior then
        Callbacks:ServerCallback("MBA:ChangeInterior", values.interior, function(success)
            if success then
                Notification:Success("Updated")
            else
                Notification:Error("Failed to Change Event Floor")
            end
        end)
    end
end)
