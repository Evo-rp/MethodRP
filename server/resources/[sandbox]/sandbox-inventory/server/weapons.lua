_weaponModels = {}

local weaponCheaters = {
	[GetHashKey("WEAPON_ANIMAL")] = "Animal",
	[GetHashKey("WEAPON_COUGAR")] = "Cougar",
	[GetHashKey("WEAPON_ADVANCEDRIFLE")] = "Advanced Rifle",
	[GetHashKey("WEAPON_APPISTOL")] = "AP Pistol",
	[GetHashKey("WEAPON_ASSAULTRIFLE")] = "Assault Rifle",
	[GetHashKey("WEAPON_ASSAULTRIFLE_MK2")] = "Assault Rifke Mk2",
	[GetHashKey("WEAPON_ASSAULTSHOTGUN")] = "Assault Shotgun",
	[GetHashKey("WEAPON_ASSAULTSMG")] = "Assault SMG",
	[GetHashKey("WEAPON_AUTOSHOTGUN")] = "Automatic Shotgun",
	[GetHashKey("WEAPON_BULLPUPRIFLE")] = "Bullpup Rifle",
	[GetHashKey("WEAPON_BULLPUPRIFLE_MK2")] = "Bullpup Rifle Mk2",
	[GetHashKey("WEAPON_BULLPUPSHOTGUN")] = "Bullpup Shotgun",
	[GetHashKey("WEAPON_CARBINERIFLE")] = "Carbine Rifle",
	[GetHashKey("WEAPON_CARBINERIFLE_MK2")] = "PD .762",
	[GetHashKey("WEAPON_COMBATMG")] = "Combat MG",
	[GetHashKey("WEAPON_COMBATMG_MK2")] = "Combat MG Mk2",
	[GetHashKey("WEAPON_COMBATPDW")] = "Combat PDW",
	[GetHashKey("WEAPON_COMBATPISTOL")] = "Combat Pistol",
	[GetHashKey("WEAPON_COMPACTRIFLE")] = "Compact Rifle",
	[GetHashKey("WEAPON_DBSHOTGUN")] = "Double Barrel Shotgun",
	[GetHashKey("WEAPON_DOUBLEACTION")] = "Double Action Revolver",
	[GetHashKey("WEAPON_FLAREGUN")] = "Flare gun",
	[GetHashKey("WEAPON_GUSENBERG")] = "Gusenberg",
	[GetHashKey("WEAPON_HEAVYPISTOL")] = "Heavy Pistol",
	[GetHashKey("WEAPON_HEAVYSHOTGUN")] = "Heavy Shotgun",
	[GetHashKey("WEAPON_HEAVYSNIPER")] = "Heavy Sniper",
	[GetHashKey("WEAPON_HEAVYSNIPER_MK2")] = "Heavy Sniper",
	[GetHashKey("WEAPON_MACHINEPISTOL")] = "Machine Pistol",
	[GetHashKey("WEAPON_MARKSMANPISTOL")] = "Marksman Pistol",
	[GetHashKey("WEAPON_MARKSMANRIFLE")] = "Marksman Rifle",
	[GetHashKey("WEAPON_MARKSMANRIFLE_MK2")] = "Marksman Rifle Mk2",
	[GetHashKey("WEAPON_GLOCK19")] = "F19",
	[GetHashKey("WEAPON_GLOCK19_CIV")] = "F19",
	[GetHashKey("WEAPON_FNX")] = "FNX-45",
	[GetHashKey("WEAPON_HK416B")] = ".556 LR",
	[GetHashKey("WEAPON_BEANBAG")] = "PD Beanbag",
	[GetHashKey("WEAPON_TASER")] = "Taser",
	[GetHashKey("WEAPON_MG")] = "MG",
	[GetHashKey("WEAPON_MICROSMG")] = "Micro SMG",
	[GetHashKey("WEAPON_MINIGUN")] = "Minigun",
	[GetHashKey("WEAPON_MINISMG")] = "Mini SMG",
	[GetHashKey("WEAPON_MUSKET")] = "Musket",
	[GetHashKey("WEAPON_PISTOL")] = "Pistol",
	[GetHashKey("WEAPON_PISTOL_MK2")] = "PD 9MM",
	[GetHashKey("WEAPON_PISTOL50")] = "Pistol .50",
	[GetHashKey("WEAPON_PUMPSHOTGUN")] = "Pump Shotgun",
	[GetHashKey("WEAPON_PUMPSHOTGUN_MK2")] = "Pump Shotgun Mk2",
	[GetHashKey("WEAPON_RAILGUN")] = "Railgun",
	[GetHashKey("WEAPON_REVOLVER")] = "Revolver",
	[GetHashKey("WEAPON_REVOLVER_MK2")] = "Revolver Mk2",
	[GetHashKey("WEAPON_SAWNOFFSHOTGUN")] = "Sawnoff Shotgun",
	[GetHashKey("WEAPON_SMG")] = "SMG",
	[GetHashKey("WEAPON_SMG_MK2")] = "PD SMG",
	[GetHashKey("WEAPON_SNIPERRIFLE")] = "Sniper Rifle",
	[GetHashKey("WEAPON_SNSPISTOL")] = "SNS Pistol",
	[GetHashKey("WEAPON_SNSPISTOL_MK2")] = "SNS Pistol Mk2",
	[GetHashKey("WEAPON_SPECIALCARBINE")] = "Special Carbine",
	[GetHashKey("WEAPON_SPECIALCARBINE_MK2")] = "Special Carbine Mk2",
	[GetHashKey("WEAPON_STINGER")] = "Stinger",
	[GetHashKey("WEAPON_STUNGUN")] = "Stungun",
	[GetHashKey("WEAPON_VINTAGEPISTOL")] = "Vintage Pistol",
	[GetHashKey("VEHICLE_WEAPON_PLAYER_LASER")] = "Vehicle Lasers",
	[GetHashKey("WEAPON_FIRE")] = "Fire",
	[GetHashKey("WEAPON_FLARE")] = "Flare",
	[GetHashKey("WEAPON_FLAREGUN")] = "Flaregun",
	[GetHashKey("WEAPON_MOLOTOV")] = "Molotov",
	[GetHashKey("WEAPON_PETROLCAN")] = "Petrol Can",
	[GetHashKey("WEAPON_HELI_CRASH")] = "Helicopter Crash",
	[GetHashKey("WEAPON_RAMMED_BY_CAR")] = "Rammed by Vehicle",
	[GetHashKey("WEAPON_RUN_OVER_BY_CAR")] = "Ranover by Vehicle",
	[GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET")] = "Vehicle Space Rocket",
	[GetHashKey("VEHICLE_WEAPON_TANK")] = "Tank",
	[GetHashKey("WEAPON_AIRSTRIKE_ROCKET")] = "Airstrike Rocket",
	[GetHashKey("WEAPON_AIR_DEFENCE_GUN")] = "Air Defence Gun",
	[GetHashKey("WEAPON_COMPACTLAUNCHER")] = "Compact Launcher",
	[GetHashKey("WEAPON_EXPLOSION")] = "Explosion",
	[GetHashKey("WEAPON_FIREWORK")] = "Firework",
	[GetHashKey("WEAPON_GRENADE")] = "Grenade",
	[GetHashKey("WEAPON_GRENADELAUNCHER")] = "Grenade Launcher",
	[GetHashKey("WEAPON_HOMINGLAUNCHER")] = "Homing Launcher",
	[GetHashKey("WEAPON_PASSENGER_ROCKET")] = "Passenger Rocket",
	[GetHashKey("WEAPON_PIPEBOMB")] = "Pipe bomb",
	[GetHashKey("WEAPON_PROXMINE")] = "Proximity Mine",
	[GetHashKey("WEAPON_RPG")] = "RPG",
	[GetHashKey("WEAPON_STICKYBOMB")] = "Sticky Bomb",
	[GetHashKey("WEAPON_VEHICLE_ROCKET")] = "Vehicle Rocket",
	[GetHashKey("WEAPON_BZGAS")] = "BZ Gas",
	[GetHashKey("WEAPON_FIREEXTINGUISHER")] = "Fire Extinguisher",
	[GetHashKey("WEAPON_SMOKEGRENADE")] = "Smoke Grenade",
	[GetHashKey("WEAPON_BATTLEAXE")] = "Battleaxe",
	[GetHashKey("WEAPON_BOTTLE")] = "Bottle",
	[GetHashKey("WEAPON_KNIFE")] = "Knife",
	[GetHashKey("WEAPON_MACHETE")] = "Machete",
	[GetHashKey("WEAPON_SWITCHBLADE")] = "Switch Blade",
	[GetHashKey("OBJECT")] = "Object",
	[GetHashKey("VEHICLE_WEAPON_ROTORS")] = "Vehicle Rotors",
	[GetHashKey("WEAPON_BALL")] = "Ball",
	[GetHashKey("WEAPON_BAT")] = "Bat",
	[GetHashKey("WEAPON_CROWBAR")] = "Crowbar",
	[GetHashKey("WEAPON_FLASHLIGHT")] = "Flashlight",
	[GetHashKey("WEAPON_GOLFCLUB")] = "Golfclub",
	[GetHashKey("WEAPON_HAMMER")] = "Hammer",
	[GetHashKey("WEAPON_HATCHET")] = "Hatchet",
	[GetHashKey("WEAPON_HIT_BY_WATER_CANNON")] = "Water Cannon",
	[GetHashKey("WEAPON_KNUCKLE")] = "Knuckle",
	[GetHashKey("WEAPON_NIGHTSTICK")] = "Night Stick",
	[GetHashKey("WEAPON_POOLCUE")] = "Pool Cue",
	[GetHashKey("WEAPON_SNOWBALL")] = "Snowball",
	[GetHashKey("WEAPON_UNARMED")] = "Fist",
	[GetHashKey("WEAPON_WRENCH")] = "Wrench",
	[GetHashKey("WEAPON_DROWNING")] = "Drowned",
	[GetHashKey("WEAPON_DROWNING_IN_VEHICLE")] = "Drowned in Vehicle",
	[GetHashKey("WEAPON_BARBED_WIRE")] = "Barbed Wire",
	[GetHashKey("WEAPON_BLEEDING")] = "Bleed",
	[GetHashKey("WEAPON_ELECTRIC_FENCE")] = "Electric Fence",
	[GetHashKey("WEAPON_EXHAUSTION")] = "Exhaustion",
	[GetHashKey("WEAPON_FALL")] = "Falling",
	[GetHashKey("WEAPON_KATANA")] = "Katana",
	[GetHashKey("WEAPON_SHIV")] = "Shiv",
	[GetHashKey("WEAPON_AR15")] = "SB556A1",
	[GetHashKey("WEAPON_AR15_PD")] = "SB556A1",
	[GetHashKey("WEAPON_P90FM")] = "P90",
	[GetHashKey("WEAPON_SLEDGEHAMMER")] = "Sledge Hammer",
	[GetHashKey("WEAPON_LUCILLE")] = "Bat",
	[GetHashKey("WEAPON_DRBAT")] = "Bat",
	[GetHashKey("WEAPON_CRUTCH")] = "Crutch",
}

function tableContains(tbl, value)
	for k, v in ipairs(tbl or {}) do
		if v == value then
			return true
		end
	end
	return false
end

AddEventHandler("Weapons:Shared:DependencyUpdate", WeaponsComponents)
function WeaponsComponents()
	Fetch = exports["sandbox-base"]:FetchComponent("Fetch")
	Logger = exports["sandbox-base"]:FetchComponent("Logger")
	Inventory = exports["sandbox-base"]:FetchComponent("Inventory")
	Weapons = exports["sandbox-base"]:FetchComponent("Weapons")
	Middleware = exports["sandbox-base"]:FetchComponent("Middleware")
	Callbacks = exports["sandbox-base"]:FetchComponent("Callbacks")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["sandbox-base"]:RequestDependencies("Weapons", {
		"Fetch",
		"Logger",
		"Inventory",
		"Weapons",
		"Middleware",
		"Callbacks",
	}, function(error)
		if #error > 0 then
			return
		end
		WeaponsComponents()

		Middleware:Add("playerDropped", function(source)
			local plyr = Fetch:Source(source)
			local ped = GetPlayerPed(source)
			for k, v in ipairs(GetAllObjects()) do
				if GetEntityAttachedTo(v) == ped and _weaponModels[GetEntityModel(v)] then
					DeleteEntity(v)
				end
			end
		end, 2)

		Callbacks:RegisterServerCallback("Weapons:UseThrowable", function(source, data, cb)
			local plyr = Fetch:Source(source)
			if plyr ~= nil then
				local char = plyr:GetData("Character")
				if char ~= nil then
					if Inventory.Items:Remove(char:GetData("SID"), 1, data.Name, 1) then
						local slotUsed = Inventory:GetSlot(char:GetData("SID"), data.Slot, 1)
						if slotUsed == nil then
							TriggerClientEvent("Weapons:Client:ForceUnequip", source)
						end

						cb()
					end
				else
					cb()
				end
			else
				cb()
			end
		end)

		Callbacks:RegisterServerCallback("Weapons:PossibleCheaterWarning", function(source, data, cb)
			local plyr = Fetch:Source(source)
			if plyr then
				local char = plyr:GetData("Character")
				if char then
					Logger:Warn("Pwnzor", string.format("%s %s (%s) [%s] Had a Weapon They Weren't Supposed To (%s) (Known: %s)", char:GetData("First"), char:GetData("Last"), char:GetData("SID"), plyr:GetData("AccountID"), data.h, weaponCheaters[data.h] or "No"), {
						console = true,
						file = false,
						database = true,
						discord = {
							embed = true,
							type = 'error',
							webhook = GetConvar('discord_pwnzor_webhook', ''),
						}
					}, {
						data = data
					})
				end
			end
      cb()
		end)
	end)
end)

WEAPONS = {
	IsEligible = function(self, source)
		local char = Fetch:Source(source):GetData("Character")
		local licenses = char:GetData("Licenses")
		if licenses ~= nil and licenses.Weapons ~= nil then
			return licenses.Weapons.Active
		else
			return false
		end
	end,
	Save = function(self, source, id, ammo, clip)
		local char = Fetch:Source(source):GetData("Character")
		Inventory:UpdateMetaData(id, {
			ammo = ammo,
			clip = clip,
		})
	end,
	Purchase = function(self, sid, item, isScratched, isCompanyOwned)
		local p = promise.new()

		if not isCompanyOwned then
			local plyr = Fetch:SID(sid)
			if plyr ~= nil then
				local char = plyr:GetData("Character")
				if char ~= nil then
					local hash = GetHashKey(item.name)
					local sn = string.format("SA-%s-%s", math.abs(hash), Sequence:Get(item.name))
					local model = nil
					if itemsDatabase[item.name] then
						model = itemsDatabase[item.name].label
					end
	
					if isScratched == nil then
						isScratched = false
					end
	
					Database.Game:insertOne({
						collection = "firearms",
						document = {
							Serial = sn,
							Item = item.name,
							Model = model,
							Owner = {
								Char = char:GetData("ID"),
								SID = char:GetData("SID"),
								First = char:GetData("First"),
								Last = char:GetData("Last"),
							},
							PurchaseTime = (os.time() * 1000),
							Scratched = isScratched,
						},
					}, function(success)
						p:resolve(true)
					end)
	
					Citizen.Await(p)
					return sn
				end
			end
		else
			local hash = GetHashKey(item.name)
			local sn = string.format("SA-%s-%s", math.abs(hash), Sequence:Get(item.name))
			local model = nil
			if itemsDatabase[item.name] then
				model = itemsDatabase[item.name].label
			end

			if isScratched == nil then
				isScratched = false
			end

			local flags = nil
			if isCompanyOwned.stolen then
				flags = {
					{
						Date = os.time() * 1000,
						Type = "stolen",
						Description = "Stolen In Armed Robbery"
					}
				}
			end

			Database.Game:insertOne({
				collection = "firearms",
				document = {
					Serial = sn,
					Item = item.name,
					Model = model,
					Owner = {
						Company = isCompanyOwned.name,
					},
					PurchaseTime = (os.time() * 1000),
					Scratched = isScratched,
				},
			}, function(success)
				p:resolve(true)
			end)

			Citizen.Await(p)
			return sn
		end
	end,
	GetComponentItem = function(self, type, component)
		for k, v in pairs(itemsDatabase) do
			if v.component ~= nil and v.component.type == type and v.component.string == component then
				return v.name
			end
		end
		return nil
	end,
	EquipAttachment = function(self, source, item)
		local plyr = Fetch:Source(source)
		if plyr ~= nil then
			local char = plyr:GetData("Character")
			if char ~= nil then
				local p = promise.new()
				Callbacks:ClientCallback(source, "Weapons:Check", {}, function(data)
					if not data then
						Execute:Client(source, "Notification", "Error", "No Weapon Equipped")
						p:resolve(false)
					else
						local itemData = Inventory.Items:GetData(item.Name)
						local weaponData = Inventory.Items:GetData(data.item)
						if itemData ~= nil and itemData.component ~= nil then
							if itemData.component.strings[weaponData.weapon or weaponData.name] ~= nil then
								Callbacks:ClientCallback(
									source,
									"Weapons:EquipAttachment",
									itemData.label,
									function(notCancelled)
										if notCancelled then
											local slotData = Inventory:GetItem(data.id)

											if slotData ~= nil then
												slotData.MetaData = json.decode(slotData.MetaData or "{}")

												local unequipItem = nil
												local unequipCreated = nil
												if
													slotData.MetaData.WeaponComponents ~= nil
													and slotData.MetaData.WeaponComponents[itemData.component.type]
														~= nil
												then
													if
														slotData.MetaData.WeaponComponents[itemData.component.type].attachment
														== itemData.component.string
													then
														Execute:Client(
															source,
															"Notification",
															"Error",
															"Attachment Already Equipped"
														)
														return p:resolve(false)
													end
													unequipItem =
														slotData.MetaData.WeaponComponents[itemData.component.type].item
													unequipCreated =
														slotData.MetaData.WeaponComponents[itemData.component.type].created
												end
	
												local comps = table.copy(slotData.MetaData.WeaponComponents or {})
												comps[itemData.component.type] = {
													type = itemData.component.type,
													item = item.Name,
													created = item.CreateDate,
													attachment = itemData.component.strings[weaponData.weapon or weaponData.name],
												}
	
												Inventory.Items:RemoveSlot(item.Owner, item.Name, 1, item.Slot, 1)
												if unequipItem ~= nil then
													local returnData = Inventory.Items:GetData(unequipItem)
													if returnData?.component?.returnItem then
														Inventory:AddItem(item.Owner, unequipItem, 1, {}, 1, false, false, false, false, false, unequipCreated or os.time())
													end
												end
	
												Inventory:SetMetaDataKey(
													slotData.id,
													"WeaponComponents",
													comps,
													source
												)
	
												Citizen.Wait(400)
	
												TriggerClientEvent("Weapons:Client:UpdateAttachments", source, comps)
	
												return p:resolve(true)
											else
												return p:resolve(false)
											end
											
										else
											return p:resolve(false)
										end
									end
								)
							else
								Execute:Client(source, "Notification", "Error", "This Does Not Fit On This Weapon")
								return p:resolve(false)
							end
						else
							Execute:Client(source, "Notification", "Error", "Something Was Not Defined")
							return p:resolve(false)
						end
					end
				end)

				return Citizen.Await(p)
			else
				return false
			end
		else
			return false
		end
	end,
	RemoveAttachment = function(self, source, slotId, attachment)
		local plyr = Fetch:Source(source)
		if plyr ~= nil then
			local char = plyr:GetData("Character")
			if char ~= nil then
				local slot = Inventory:GetSlot(char:GetData("SID"), slotId, 1)
				if slot ~= nil then
					if slot.MetaData.WeaponComponents ~= nil and slot.MetaData.WeaponComponents[attachment] ~= nil then
						local itemData = Inventory.Items:GetData(slot.MetaData.WeaponComponents[attachment].item)
						if itemData ~= nil then
							Inventory:AddItem(char:GetData("SID"), itemData.name, 1, {}, 1, false, false, false, false, false, slot.MetaData.WeaponComponents[attachment].created or os.time())
							slot.MetaData.WeaponComponents[attachment] = nil	
							Inventory:SetMetaDataKey(
								slot.id,
								"WeaponComponents",
								slot.MetaData.WeaponComponents,
								source
							)
							TriggerClientEvent("Weapons:Client:UpdateAttachments", source, slot.MetaData.WeaponComponents)
						end
					end
				end
			end
		end
	end,
}

AddEventHandler("Proxy:Shared:RegisterReady", function()
	exports["sandbox-base"]:RegisterComponent("Weapons", WEAPONS)
end)

RegisterNetEvent("Weapon:Server:UpdateAmmo", function(slot, ammo, clip)
	Weapons:Save(source, slot, ammo, clip)
end)

RegisterNetEvent("Weapon:Server:UpdateAmmoDiff", function(diff, ammo, clip)
	local _src = source
	Inventory:UpdateMetaData(diff.id, {
		ammo = ammo,
		clip = clip,
	})
end)

RegisterNetEvent("Weapons:Server:RemoveAttachment", function(slotId, attachment)
	Weapons:RemoveAttachment(source, slotId, attachment)
end)

RegisterNetEvent("Weapons:Server:DoFlashFx", function(coords, netId)
	TriggerEvent("Particles:Server:DoFx", coords, "flash")
	TriggerClientEvent("Weapons:Client:DoFlashFx", -1, coords.x, coords.y, coords.z, 10000, 8, 20.0, netId, 25, 1.6)
end)