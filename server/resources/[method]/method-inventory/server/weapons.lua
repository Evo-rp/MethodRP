_weaponModels = {}

local weaponCheaters = {
	[`WEAPON_ANIMAL`] = "Animal",
	[`WEAPON_COUGAR`] = "Cougar",
	[`WEAPON_ADVANCEDRIFLE`] = "Kel-Tec RFB",
	[`WEAPON_APPISTOL`] = "Glock 18C",
	[`WEAPON_ASSAULTRIFLE`] = "AK-47",
	[`WEAPON_ASSAULTRIFLE_MK2`] = "AK-12",
	[`WEAPON_ASSAULTSHOTGUN`] = "UTS-15",
	[`WEAPON_ASSAULTSMG`] = "P90",
	[`WEAPON_AUTOSHOTGUN`] = "Auto Shotgun",
	[`WEAPON_BULLPUPRIFLE`] = "Bullpup Rifle",
	[`WEAPON_BULLPUPRIFLE_MK2`] = "Bullpup Rifle MK2",
	[`WEAPON_BULLPUPSHOTGUN`] = "Kel-Tec KSG",
	[`WEAPON_CARBINERIFLE`] = "M4A1",
	[`WEAPON_CARBINERIFLE_MK2`] = "AR-15",
	[`WEAPON_COMBATMG`] = "LMG",
	[`WEAPON_COMBATMG_MK2`] = "M60E4",
	[`WEAPON_COMBATPDW`] = "Combat PDW",
	[`WEAPON_COMBATPISTOL`] = "Combat Pistol",
	[`WEAPON_COMPACTRIFLE`] = "Draco",
	[`WEAPON_DBSHOTGUN`] = "Double Barrel Shotgun",
	[`WEAPON_DOUBLEACTION`] = "Colt M1892",
	[`WEAPON_FLAREGUN`] = "Flare Pistol",
	[`WEAPON_GUSENBERG`] = "Tommy Gun",
	[`WEAPON_HEAVYPISTOL`] = "Heavy Pistol",
	[`WEAPON_HEAVYSHOTGUN`] = "Heavy Shotgun",
	[`WEAPON_HEAVYSNIPER`] = "Barrett M82",
	[`WEAPON_HEAVYSNIPER_MK2`] = "Serbu BFG-50A",
	[`WEAPON_MACHINEPISTOL`] = "Tec-9",
	[`WEAPON_MARKSMANPISTOL`] = "Marksman Pistol",
	[`WEAPON_MARKSMANRIFLE`] = "M39 EMR",
	[`WEAPON_MARKSMANRIFLE_MK2`] = "MK-12",
	[`WEAPON_GLOCK19`] = "Glock 19",
	[`WEAPON_GLOCK19_CIV`] = "Glock 19",
	[`WEAPON_FNX45`] = "FNX-45",
	[`WEAPON_HK416B`] = ".556 LR",
	[`WEAPON_BEANBAG`] = "Beanbag Shotgun",
	[`WEAPON_TASER`] = "Taser",
	[`WEAPON_MG`] = "PKM",
	[`WEAPON_MICROSMG`] = "MAC-10",
	[`WEAPON_MINIGUN`] = "Minigun",
	[`WEAPON_MINISMG`] = "Skorpion",
	[`WEAPON_MUSKET`] = "Musket",
	[`WEAPON_PISTOL`] = "Berretta M92",
	[`WEAPON_PISTOL_MK2`] = "Pistol MK2",
	[`WEAPON_PISTOL50`] = "Desert Eagle",
	[`WEAPON_PUMPSHOTGUN`] = "Mossberg 590",
	[`WEAPON_PUMPSHOTGUN_MK2`] = "Remington 870",
	[`WEAPON_RAILGUN`] = "Railgun",
	[`WEAPON_REVOLVER`] = "Colt Python",
	[`WEAPON_REVOLVER_MK2`] = "Chiappa Rhino",
	[`WEAPON_SAWNOFFSHOTGUN`] = "Sawn Off Shotgun",
	[`WEAPON_SMG`] = "SMG",
	[`WEAPON_SMG_MK2`] = "SMG MK2",
	[`WEAPON_SNIPERRIFLE`] = "L96A1",
	[`WEAPON_SNIPERRIFLE2`] = "Hunting Rifle",
	[`WEAPON_SNSPISTOL`] = "SNS Pistol",
	[`WEAPON_SNSPISTOL_MK2`] = "SNS Pistol Mk2",
	[`WEAPON_SPECIALCARBINE`] = "G36C",
	[`WEAPON_SPECIALCARBINE_MK2`] = "G36K",
	[`WEAPON_STINGER`] = "Stinger",
	[`WEAPON_STUNGUN`] = "Stungun",
	[`WEAPON_VINTAGEPISTOL`] = "Vintage Pistol",
	[`VEHICLE_WEAPON_PLAYER_LASER`] = "Vehicle Lasers",
	[`WEAPON_FIRE`] = "Fire",
	[`WEAPON_FLARE`] = "Flare",
	[`WEAPON_FLAREGUN`] = "Flaregun",
	[`WEAPON_MOLOTOV`] = "Molotov",
	[`WEAPON_PETROLCAN`] = "Petrol Can",
	[`WEAPON_HELI_CRASH`] = "Helicopter Crash",
	[`WEAPON_RAMMED_BY_CAR`] = "Rammed by Vehicle",
	[`WEAPON_RUN_OVER_BY_CAR`] = "Ranover by Vehicle",
	[`VEHICLE_WEAPON_SPACE_ROCKET`] = "Vehicle Space Rocket",
	[`VEHICLE_WEAPON_TANK`] = "Tank",
	[`WEAPON_AIRSTRIKE_ROCKET`] = "Airstrike Rocket",
	[`WEAPON_AIR_DEFENCE_GUN`] = "Air Defence Gun",
	[`WEAPON_COMPACTLAUNCHER`] = "Compact Launcher",
	[`WEAPON_EXPLOSION`] = "Explosion",
	[`WEAPON_FIREWORK`] = "Firework",
	[`WEAPON_GRENADE`] = "Grenade",
	[`WEAPON_GRENADELAUNCHER`] = "Grenade Launcher",
	[`WEAPON_HOMINGLAUNCHER`] = "Homing Launcher",
	[`WEAPON_PASSENGER_ROCKET`] = "Passenger Rocket",
	[`WEAPON_PIPEBOMB`] = "Pipe bomb",
	[`WEAPON_PROXMINE`] = "Proximity Mine",
	[`WEAPON_RPG`] = "RPG",
	[`WEAPON_STICKYBOMB`] = "Sticky Bomb",
	[`WEAPON_VEHICLE_ROCKET`] = "Vehicle Rocket",
	[`WEAPON_BZGAS`] = "BZ Gas",
	[`WEAPON_FIREEXTINGUISHER`] = "Fire Extinguisher",
	[`WEAPON_SMOKEGRENADE`] = "Smoke Grenade",
	[`WEAPON_BATTLEAXE`] = "Battleaxe",
	[`WEAPON_BOTTLE`] = "Bottle",
	[`WEAPON_KNIFE`] = "Knife",
	[`WEAPON_MACHETE`] = "Machete",
	[`WEAPON_SWITCHBLADE`] = "Switch Blade",
	[`OBJECT`] = "Object",
	[`VEHICLE_WEAPON_ROTORS`] = "Vehicle Rotors",
	[`WEAPON_BALL`] = "Ball",
	[`WEAPON_BAT`] = "Bat",
	[`WEAPON_CROWBAR`] = "Crowbar",
	[`WEAPON_FLASHLIGHT`] = "Flashlight",
	[`WEAPON_GOLFCLUB`] = "Golfclub",
	[`WEAPON_HAMMER`] = "Hammer",
	[`WEAPON_HATCHET`] = "Hatchet",
	[`WEAPON_HIT_BY_WATER_CANNON`] = "Water Cannon",
	[`WEAPON_KNUCKLE`] = "Knuckle",
	[`WEAPON_NIGHTSTICK`] = "Night Stick",
	[`WEAPON_POOLCUE`] = "Pool Cue",
	[`WEAPON_SNOWBALL`] = "Snowball",
	[`WEAPON_UNARMED`] = "Fist",
	[`WEAPON_WRENCH`] = "Wrench",
	[`WEAPON_DROWNING`] = "Drowned",
	[`WEAPON_DROWNING_IN_VEHICLE`] = "Drowned in Vehicle",
	[`WEAPON_BARBED_WIRE`] = "Barbed Wire",
	[`WEAPON_BLEEDING`] = "Bleed",
	[`WEAPON_ELECTRIC_FENCE`] = "Electric Fence",
	[`WEAPON_EXHAUSTION`] = "Exhaustion",
	[`WEAPON_FALL`] = "Falling",
	[`WEAPON_KATANA`] = "Katana",
	[`WEAPON_SHIV`] = "Shiv",
	[`WEAPON_AR15`] = "AR-15",
	[`WEAPON_AR15_PD`] = "PD SB556A1",
	[`WEAPON_P90FM`] = "P90 FM",
	[`WEAPON_SLEDGEHAMMER`] = "Sledge Hammer",
	[`WEAPON_LUCILLE`] = "Bat",
	[`WEAPON_DRBAT`] = "Bat",
	[`WEAPON_CRUTCH`] = "Crutch",
	[`WEAPON_PONY`] = "Pony",
	[`WEAPON_SHOVEL`] = "Shovel",
	[`WEAPON_FIVESEVEN`] = "Five Seven",
	[`WEAPON_BENELLIM2`] = "Benelli M2",
	[`WEAPON_BENELLIM2_PD`] = "Benelli M2",
	[`WEAPON_DOUBLEBARRELFM`] = "Double Barrel FM",
	[`WEAPON_M249`] = "M249",
	[`WEAPON_FM1_HK416`] = "HK-416 FM2",
	[`WEAPON_FM2_HK416`] = "HK-416 FM2",
	[`WEAPON_HK417`] = "HK-417",
	[`WEAPON_FM1_M9A3`] = "M9A3 FM1",
	[`WEAPON_FM1_HONEYBADGER`] = "Honey Badger",
	[`WEAPON_AK74`] = "AK-74",
	[`WEAPON_AK74_1`] = "AK-74",
	[`WEAPON_AK74_2`] = "AK-74",
	[`WEAPON_ASVAL`] = "AS-VAL",
	[`WEAPON_MCXRATTLER`] = "MCX Rattler",
	[`WEAPON_MCXSPEAR`] = "MCX Spear",
	[`WEAPON_MK14`] = "MK14 EBR",
	[`WEAPON_MK47BANSHEE2`] = "MK-47 Banshee A",
	[`WEAPON_MK47BANSHEE`] = "MK-47 Banshee S",
	[`WEAPON_MK47FM`] = "MK-47 Mutant",
	[`WEAPON_NSR9`] = "NSR9",
	[`WEAPON_PM4`] = "PM4A1",
	[`WEAPON_RFB`] = "RFB",
	[`WEAPON_AK47`] = "AK-47",
	[`WEAPON_SA80`] = "L95",
	[`WEAPON_MB47`] = "AK-47M",
	[`WEAPON_G36`] = "G36",
	[`WEAPON_PP19`] = "PP-19",
	[`WEAPON_MPX`] = "MPX",
	[`WEAPON_MINIUZI`] = 'Mini Uzi',
	[`WEAPON_MP9A`] = 'MP9',
	[`WEAPON_MP5`] = "SB54",
	[`WEAPON_VECTOR`] = "Fennec",
	[`WEAPON_HKUMP`] = "UMP-45",
	[`WEAPON_HKUMP_PD`] = "UMP-45",
	[`WEAPON_L5`] = "Desert Eagle L5",
	[`WEAPON_2011`] = "STI DVC 2011",
	[`WEAPON_38SNUBNOSE`] = ".38 Snubnose",
	[`WEAPON_38SNUBNOSE2`] = ".38 Snubnose",
	[`WEAPON_38SNUBNOSE2`] = ".38 Snubnose",
	[`WEAPON_38SPECIAL`] = ".38 Special",
	[`WEAPON_44MAGNUM`] = ".44 Magnum",
	[`WEAPON_44MAGNUM_PD`] = ".44 Magnum",
	[`WEAPON_FM1_CZ75`] = "CZ75 FM1",
	[`WEAPON_FN509`] = "P226 FM1",
	[`WEAPON_SWMP9`] = "SW MP9",
	[`WEAPON_FM1_P226`] = "FN-226",
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
	Fetch = exports["method-base"]:FetchComponent("Fetch")
	Logger = exports["method-base"]:FetchComponent("Logger")
	Inventory = exports["method-base"]:FetchComponent("Inventory")
	Weapons = exports["method-base"]:FetchComponent("Weapons")
	Middleware = exports["method-base"]:FetchComponent("Middleware")
	Callbacks = exports["method-base"]:FetchComponent("Callbacks")
	Pwnzor = exports["method-base"]:FetchComponent("Pwnzor")
end

AddEventHandler("Core:Shared:Ready", function()
	exports["method-base"]:RequestDependencies("Weapons", {
		"Fetch",
		"Logger",
		"Inventory",
		"Weapons",
		"Middleware",
		"Callbacks",
		"Pwnzor",
	}, function(error)
		if #error > 0 then
			return
		end
		WeaponsComponents()

		Callbacks:RegisterServerCallback("Weapons:UseThrowable", function(source, data, cb)
			local char = Fetch:CharacterSource(source)
			if char ~= nil then
				if INVENTORY.Items:RemoveSlot(char:GetData("SID"), data.Name, 1, data.Slot, 1) then
					local slotExists = INVENTORY:SlotExists(char:GetData("SID"), data.Slot, 1)
					if not slotExists then
						TriggerClientEvent("Weapons:Client:ForceUnequip", source)
					end

					cb()
				end
			else
				cb()
			end
		end)

		Callbacks:RegisterServerCallback("Weapons:PossibleCheaterWarning", function(source, data, cb)
			local char = Fetch:CharacterSource(source)
			if char then
				Logger:Warn("Pwnzor", string.format("%s %s (%s) Had a Weapon They Weren't Supposed To (%s) (Known: %s)", char:GetData("First"), char:GetData("Last"), char:GetData("SID"), data.h, weaponCheaters[data.h] or "No"), {
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
				Pwnzor:Screenshot(char:GetData("SID"), "Potential Weapon Exploit")
			end
      		cb()
		end)
	end)
end)

AddEventHandler("Characters:Server:PlayerDropped", function(source)
	local plyr = Fetch:Source(source)
	local ped = GetPlayerPed(source)
	for k, v in ipairs(GetAllObjects()) do
		if GetEntityAttachedTo(v) == ped and _weaponModels[GetEntityModel(v)] then
			DeleteEntity(v)
		end
	end
end)

WEAPONS = {
	IsEligible = function(self, source)
		local char = Fetch:CharacterSource(source)
		local licenses = char:GetData("Licenses")
		if licenses ~= nil and licenses.Weapons ~= nil then
			return licenses.Weapons.Active
		else
			return false
		end
	end,
	Save = function(self, source, id, ammo, clip)
		INVENTORY:UpdateMetaData(id, {
			ammo = ammo,
			clip = clip,
		})
	end,
	Purchase = function(self, sid, item, isScratched, isCompanyOwned)
		if not isCompanyOwned then
			local char = Fetch:SID(sid)
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

				MySQL.insert('INSERT INTO firearms (serial, scratched, model, item, owner_sid, owner_name) VALUES(?, ?, ?, ?, ?, ?)', {
					sn,
					isScratched,
					model,
					item.name,
					sid,
					string.format("%s %s", char:GetData("First"), char:GetData("Last"))
				})

				return sn
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

			MySQL.insert('INSERT INTO firearms (serial, scratched, model, item, owner_name) VALUES(?, ?, ?, ?, ?)', {
				sn,
				isScratched,
				model,
				item.name,
				isCompanyOwned.name
			})
			
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
		local char = Fetch:CharacterSource(source)
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
										local slotData = INVENTORY:GetItem(data.id)

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
													INVENTORY:AddItem(item.Owner, unequipItem, 1, {}, 1, false, false, false, false, false, unequipCreated or os.time())
												end
											end

											INVENTORY:SetMetaDataKey(
												slotData.id,
												"WeaponComponents",
												comps,
												source
											)

											Citizen.Wait(400)

											SetGunPropData(source, char:GetData("SID"), getInventory(source, char:GetData("SID"), 1, false), true)
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
	end,
	RemoveAttachment = function(self, source, slotId, attachment)
		local char = Fetch:CharacterSource(source)
		if char ~= nil then
			local slot = INVENTORY:GetSlot(char:GetData("SID"), slotId, 1)
			if slot ~= nil then
				if slot.MetaData.WeaponComponents ~= nil and slot.MetaData.WeaponComponents[attachment] ~= nil then
					local itemData = Inventory.Items:GetData(slot.MetaData.WeaponComponents[attachment].item)
					if itemData ~= nil then
						INVENTORY:AddItem(char:GetData("SID"), itemData.name, 1, {}, 1, false, false, false, false, false, slot.MetaData.WeaponComponents[attachment].created or os.time())
						slot.MetaData.WeaponComponents[attachment] = nil	
						INVENTORY:SetMetaDataKey(
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
	end,
}

AddEventHandler("Proxy:Shared:RegisterReady", function()
	exports["method-base"]:RegisterComponent("Weapons", WEAPONS)
end)

RegisterNetEvent("Weapon:Server:UpdateAmmo", function(slot, ammo, clip)
	Weapons:Save(source, slot, ammo, clip)
end)

RegisterNetEvent("Weapon:Server:UpdateAmmoDiff", function(diff, ammo, clip)
	local _src = source
	if diff?.id then
		INVENTORY:UpdateMetaData(diff.id, {
			ammo = ammo,
			clip = clip,
		})
	end
end)

RegisterNetEvent("Weapons:Server:RemoveAttachment", function(slotId, attachment)
	Weapons:RemoveAttachment(source, slotId, attachment)
end)

RegisterNetEvent("Weapons:Server:DoFlashFx", function(coords, netId)
	TriggerEvent("Particles:Server:DoFx", coords, "flash")
	TriggerClientEvent("Weapons:Client:DoFlashFx", -1, coords.x, coords.y, coords.z, 10000, 8, 20.0, netId, 25, 1.6)
end)