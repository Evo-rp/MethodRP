Config = Config or {}
_itemsSource = _itemsSource or {}

function hasValue(tbl, value)
	for k, v in ipairs(tbl or {}) do
		if v == value or (type(v) == "table" and hasValue(v, value)) then
			return true
		end
	end
	return false
end

Config.StartItems = {
	{ name = "water", count = 5 },
	{ name = "expresso", count = 3 },
	{ name = "chocolate_bar", count = 5 },
	{ name = "sandwich", count = 3 },
	{ name = "bandage", count = 3 },
	{ name = "ifak", count = 1 },
	{ name = "lockpick", count = 1 },
	{ name = "phone", count = 1 },
	{ name = "govid", count = 1 },
	{ name = "cigarette_pack", count = 1 },
}

Config.ShopItemSets = {
	[1] = {
		"sandwich",
		"sandwich_egg",
		"water",
		"bandage",
		"cigarette_pack",
		"coffee",
		"soda",
		"energy_pepe",
		"chocolate_bar",
		-- "donut",
		"crisp",
		"rolling_paper",
	}, -- General Stores like 24/7 etc..
	[2] = {
		"screwdriver",
		"WEAPON_HAMMER",
		"WEAPON_CROWBAR",
		"WEAPON_GOLFCLUB",
		"repairkit",
		"fertilizer_nitrogen",
		"fertilizer_phosphorus",
		"fertilizer_potassium",
		"gascan",
		"redlight",
		-- "camping_chair",
		-- "beanbag",
		"plastic_wrap",
		"baggy",
		"binoculars",
		"WEAPON_SHOVEL",
		"cloth",
		"pipe",
		"nails",
		"drill",
	}, -- Hardware
	[3] = { "cup", "bun", "patty", "pickle" }, -- Burger Shot Supplies
	[4] = { "armor", "heavyarmor", "WEAPON_PISTOL", "WEAPON_COMBATPISTOL", "WEAPON_FNX", "AMMO_PISTOL", "WEAPON_BAT" }, -- Ammunation
	[5] = { -- Electronics Store
		"phone",
		"radio_shitty",
		"camera",
		"electronics_kit",
		"laptop",
		"gps",
		-- "case_black",
		-- "case_blue",
		-- "case_pink",
		-- "case_white",
		-- "case_gold",
	},
	[6] = {
		"armor",
		"heavyarmor",
		"ifak",
		"handcuffs",
		"spikes",
		"WEAPON_FLASHLIGHT",
		"WEAPON_TASER",
		"WEAPON_G17",
		"WEAPON_HKUMP_PD",
		-- "WEAPON_AR15_PD",
		"AMMO_PISTOL_PD",
		"AMMO_SMG_PD",
		"AMMO_RIFLE_PD",
		"AMMO_STUNGUN",
		"radio",
		"binoculars",
		"camera",
		"phone",
		"WEAPON_FLASHBANG",
		"WEAPON_SMOKEGRENADE",
	}, -- Police Armory
	[7] = { "traumakit", "medicalkit", "firstaid", "bandage", "morphine", "radio", "phone", "scuba_gear" },
	[8] = {
		"WEAPON_SNIPERRIFLE2",
		"AMMO_SNIPER",
		"WEAPON_KNIFE",
		"hunting_bait",
		"hunting_map_light",
		"hunting_map_dark",
		-- "deer_bait",
		-- "boar_bait",
		-- "pig_bait",
		-- "chicken_bait",
		-- "rabbit_bait",
		-- "exotic_bait",
	},
	[9] = {
		"pdarmor",
		"traumakit",
		"ifak",
		"handcuffs",
		"WEAPON_FLASHLIGHT",
		"WEAPON_TASER",
		"WEAPON_BEANBAG",
		"WEAPON_GLOCK19",
		"WEAPON_HKUMP_PD",
		-- "WEAPON_AR15_PD",
		"AMMO_PISTOL_PD",
		"AMMO_SHOTGUN_PD",
		"AMMO_SMG_PD",
		-- "AMMO_RIFLE_PD",
		"AMMO_STUNGUN",
		"radio",
		"binoculars",
		"megaphone",
		"camera",
		"phone",
		"WEAPON_FLASHBANG",
		"WEAPON_SMOKEGRENADE",
	}, -- DOC Armory
	[10] = { "water" }, -- Water Machine
	[11] = { "coffee" }, -- Coffee Machine
	[12] = { -- Drinks Vending Machines
		"water",
		"soda",
		"energy_pepe",
	},
	[13] = { -- Food Vending Machines
		"chocolate_bar",
		-- "donut",
		"crisp",
	},
	[14] = {
		"firstaid",
		"bandage",
	},
	[15] = {
		"WEAPON_PETROLCAN",
	},
	[16] = {
		{ item = "dough", count = 1000, price = 3 },
		{ item = "eggs", count = 1000, price = 3 },
		{ item = "loaf", count = 1000, price = 3 },
		{ item = "sugar", count = 1000, price = 3 },
		{ item = "flour", count = 1000, price = 3 },
		{ item = "rice", count = 1000, price = 3 },
		{ item = "icing", count = 1000, price = 3 },
		{ item = "tea_leaf", count = 1000, price = 3 },
		{ item = "plastic_cup", count = 1000, price = 3 },
		{ item = "coffee_beans", count = 1000, price = 3 },
		{ item = "burgershot_cup", count = 1000, price = 3 },
		{ item = "bun", count = 1000, price = 3 },
		{ item = "cheese", count = 1000, price = 3 },
		{ item = "pineapple", count = 1000, price = 3 },
		{ item = "raspberry", count = 1000, price = 3 },
		{ item = "peach_juice", count = 1000, price = 3 },
		{ item = "coconut_milk", count = 1000, price = 3 },
		{ item = "yeast", count = 1000, price = 3 },
		{ item = "grain", count = 1000, price = 3 },
		{ item = "hobs", count = 1000, price = 3 },
		{ item = "ginger", count = 1000, price = 3 },
		{ item = "hotdog_single", count = 1000, price = 3 },
		{ item = "popcorn_kernal", count = 1000, price = 3 },
		{ item = "popcorn_bucket", count = 1000, price = 3 },
		{ item = "water" },
		{ item = "milk_can", count = 1000, price = 3 },
		{ item = "rusty_empty", count = 1000, price = 3, job = "rustybrowns" },

		{ item = "jaeger", count = 10, price = 3 },
		{ item = "raspberry_liqueur", count = 30, price = 3 },
		{ item = "sparkling_wine", count = 30, price = 3 },
		{ item = "rum", count = 50, price = 3 },
		{ item = "whiskey", count = 50, price = 3 },
		{ item = "vodka", count = 50, price = 3 },
		{ item = "tequila", count = 50, price = 3 },

		{ item = "keg", count = 1, price = 3 },

		{ item = "bento_box", job = "uwu" },
		{ item = "burgershot_bag", job = "burgershot" },

		{ item = "foodbag" },
		{ item = "cardboard_box" },
		{ item = "paper_bag" },
		{ item = "coffee_holder" },
		-- BELOW WILL NEED
		-- REMOVED AFTER
		-- SERVER POPULATES
		-- "peas",
		-- "orange",
		-- "tomato",
		-- "lettuce",
		-- "beef",
		-- "chicken",
		-- "cucumber",
		-- "potato",
		-- "unk_meat",
		-- "vension",
	},
	[17] = {
		"weed_joint",
		"rolling_paper",
	},
	[18] = { -- Liquor Stores
		"vodka",
		"beer",
		"water",
		"bandage",
		"cigarette_pack",
		"coffee",
		"soda",
		"energy_pepe",
		"chocolate_bar",
		-- "donut",
		"crisp",
		"rolling_paper",
	},
	[19] = {
		"wine_bottle",
	},
	[20] = {
		"fishing_rod",
		"fishing_bait_worm",
		"fishing_bait_lugworm",
		"WEAPON_KNIFE",
	},
	[21] = {
		"fishing_rod",
		"fishing_net",
		"fishing_bait_worm",
		"fishing_bait_lugworm",
		"WEAPON_KNIFE",
	},
	[22] = {
		--"personal_plates",
	},
	[23] = {
		"hotdog",

		"water",
	},
	[24] = {
		"cheeseburger",
		"water",
	},
}
