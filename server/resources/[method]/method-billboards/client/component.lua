AddEventHandler("Billboards:Shared:DependencyUpdate", RetrieveComponents)
function RetrieveComponents()
	Logger = exports["method-base"]:FetchComponent("Logger")
	Fetch = exports["method-base"]:FetchComponent("Fetch")
	Callbacks = exports["method-base"]:FetchComponent("Callbacks")
	Game = exports["method-base"]:FetchComponent("Game")
	Targeting = exports["method-base"]:FetchComponent("Targeting")
	Utils = exports["method-base"]:FetchComponent("Utils")
	Animations = exports["method-base"]:FetchComponent("Animations")
	Notification = exports["method-base"]:FetchComponent("Notification")
	Polyzone = exports["method-base"]:FetchComponent("Polyzone")
	Jobs = exports["method-base"]:FetchComponent("Jobs")
	Weapons = exports["method-base"]:FetchComponent("Weapons")
	Progress = exports["method-base"]:FetchComponent("Progress")
	Vehicles = exports["method-base"]:FetchComponent("Vehicles")
	Targeting = exports["method-base"]:FetchComponent("Targeting")
	ListMenu = exports["method-base"]:FetchComponent("ListMenu")
	Action = exports["method-base"]:FetchComponent("Action")
	Sounds = exports["method-base"]:FetchComponent("Sounds")
	PedInteraction = exports["method-base"]:FetchComponent("PedInteraction")
	Blips = exports["method-base"]:FetchComponent("Blips")
	Keybinds = exports["method-base"]:FetchComponent("Keybinds")
	Minigame = exports["method-base"]:FetchComponent("Minigame")
	Input = exports["method-base"]:FetchComponent("Input")
	Interaction = exports["method-base"]:FetchComponent("Interaction")
	Inventory = exports["method-base"]:FetchComponent("Inventory")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("Billboards", {
		"Logger",
		"Fetch",
		"Callbacks",
		"Game",
		"Menu",
		"Targeting",
		"Notification",
		"Utils",
		"Animations",
		"Polyzone",
		"Jobs",
		"Weapons",
		"Progress",
		"Vehicles",
		"Targeting",
		"ListMenu",
		"Action",
		"Sounds",
		"PedInteraction",
		"Blips",
		"Keybinds",
		"Minigame",
		"Input",
		"Interaction",
		"Inventory",
	}, function(error)
		if #error > 0 then
			return
		end
		RetrieveComponents()

		-- print('testing biatch')
		-- local dui = CreateBillboardDUI('https://i.imgur.com/Zlf40QZ.png', 1024, 512)
		-- AddReplaceTexture('ch2_03b_cg2_03b_bb', 'ch2_03b_bb_lowdown', dui.dictionary, dui.texture)

		-- Citizen.Wait(10000)

		-- print(dui.id)

		-- ReleaseBillboardDUI(dui.id)
		-- RemoveReplaceTexture('ch2_03b_cg2_03b_bb', 'ch2_03b_bb_lowdown')

		StartUp()
	end)
end)

local started = false
local _billboardDUIs = {}

function StartUp()
	if started then
		return
	end

	started = true

	for k, v in pairs(_billboardConfig) do
		v.url = GlobalState[string.format("Billboards:%s", k)]
	end
end

AddEventHandler("Characters:Client:Spawn", function()
	Citizen.CreateThread(function()
		Citizen.Wait(5000)

		while LocalPlayer.state.loggedIn do
			for k, v in pairs(_billboardConfig) do
				local dist = #(GetEntityCoords(LocalPlayer.state.ped) - v.coords)
				if dist <= v.range then
					if not _billboardDUIs[k] and v.url then
						local createdDui = CreateBillboardDUI(v.url, v.width, v.height)
						AddReplaceTexture(
							v.originalDictionary,
							v.originalTexture,
							createdDui.dictionary,
							createdDui.texture
						)

						_billboardDUIs[k] = createdDui
					end
				elseif _billboardDUIs[k] then
					ReleaseBillboardDUI(_billboardDUIs[k].id)
					RemoveReplaceTexture(v.originalDictionary, v.originalTexture)
					_billboardDUIs[k] = nil
				end
			end
			Citizen.Wait(1500)
		end
	end)
end)

RegisterNetEvent("Characters:Client:Logout")
AddEventHandler("Characters:Client:Logout", function()
	for k, v in pairs(_billboardConfig) do
		if _billboardDUIs[k] then
			ReleaseBillboardDUI(_billboardDUIs[k].id)
			RemoveReplaceTexture(v.originalDictionary, v.originalTexture)
			_billboardDUIs[k] = nil
		end
	end
end)

RegisterNetEvent("Billboards:Client:UpdateBoardURL", function(id, url)
	if not _billboardConfig[id] then
		return
	end

	if _billboardDUIs[id] then
		if url then
			UpdateBillboardDUI(_billboardDUIs[id].id, url)
			AddReplaceTexture(
				_billboardConfig[id].originalDictionary,
				_billboardConfig[id].originalTexture,
				_billboardDUIs[id].dictionary,
				_billboardDUIs[id].texture
			)
		else
			ReleaseBillboardDUI(_billboardDUIs[id].id)
			RemoveReplaceTexture(_billboardConfig[id].originalDictionary, _billboardConfig[id].originalTexture)
			_billboardDUIs[id] = nil
		end
	end

	_billboardConfig[id].url = url
end)
