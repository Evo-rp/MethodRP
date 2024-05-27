_entityTypes = {
	{
		id = 1,
		slots = 30,
		capacity = 200,
		name = "Personal Storage",
	},
	{
		id = 2,
		slots = 500,
		capacity = 2000,
		name = "Player Holding",
	},
	{
		id = 3,
		slots = 10,
		capacity = 150,
		name = "Secured Compartment",
		restriction = {
			job = {
				id = "police",
				duty = true,
			},
		},
	},
	{
		id = 4,
		slots = 20,
		capacity = 200,
		name = "Trunk",
		isVehicle = true,
		isTrunk = true,
	},
	{
		id = 5,
		slots = 5,
		capacity = 200,
		name = "Glovebox",
		isVehicle = true,
		isGlovebox = true,
	},
	{
		id = 6,
		slots = 40,
		capacity = 200,
		shop = true,
		itemSet = 18,
		name = "Liquor Store",
	},
	{
		id = 7,
		slots = 40,
		capacity = 200,
		shop = true,
		itemSet = 2,
		name = "Hardware Store",
	},
	{
		id = 8,
		slots = 30,
		capacity = 10000,
		name = "Police Evidence",
		restriction = {
			job = {
				id = "police",
				duty = true,
			},
		},
	},
	{
		id = 9,
		slots = 500,
		capacity = 200,
		name = "Police Trash",
		restriction = {
			job = {
				id = "police",
				duty = true,
			},
		},
	},
	{
		id = 10,
		slots = 40,
		capacity = 1000,
		name = "Dropzone",
	},
	{
		id = 11,
		slots = 40,
		capacity = 200,
		shop = true,
		itemSet = 1,
		name = "Shop",
	},
	{
		id = 12,
		slots = 40,
		capacity = 200,
		shop = true,
		itemSet = 4,
		name = "Ammunation",
	},
	{
		id = 13,
		slots = 20,
		capacity = 400,
		name = "Apartment Storage Tier 1",
	},
	{
		id = 14,
		slots = 25,
		capacity = 450,
		name = "Apartment Storage Tier 2",
	},
	{
		id = 15,
		slots = 30,
		capacity = 500,
		name = "Apartment Storage Tier 3",
	},
	{
		id = 16,
		slots = 50,
		capacity = 200,
		name = "Trash Container",
	},
	{
		id = 17,
		slots = 400,
		capacity = 200,
		name = "Shipping Container",
	},
	{
		id = 18,
		slots = 800,
		capacity = 200,
		name = "Warehouse",
	},
	{
		id = 19,
		slots = 5,
		capacity = 8,
		name = "Drinks Holder",
	},
	{
		id = 20,
		slots = 10,
		capacity = 10,
		name = "Small Food Bag",
	},
	{
		id = 21,
		slots = 10,
		capacity = 15,
		name = "Food Bag",
	},
	{
		id = 22,
		slots = 20,
		capacity = 50,
		name = "Box",
	},
	{
		id = 23,
		slots = 155,
		capacity = 2000,
		name = "Burger Shot Freezer",
		restriction = {
			job = {
				id = "burgershot",
			},
		},
	},
	{
		id = 140,
		slots = 60,
		capacity = 500,
		name = "Burger Shot Safe",
		restriction = {
			job = {
				id = "burgershot",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 24,
		slots = 80,
		capacity = 1000,
		name = "Burger Shot Food Warmer",
		restriction = {
			job = {
				id = "burgershot",
			},
		},
	},
	{
		id = 25,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 26,
		slots = 35,
		capacity = 200,
		name = "Medical Supply",
		shop = true,
		free = true,
		itemSet = 7,
		restriction = {
			job = {
				id = "ems",
				duty = true,
			},
		},
	},
	{
		id = 27,
		slots = 35,
		capacity = 200,
		name = "PD Armory",
		shop = true,
		free = true,
		itemSet = 6,
		restriction = {
			job = {
				id = "police",
				duty = true,
			},
		},
	},
	{
		id = 28,
		slots = 20,
		capacity = 100,
		name = "Hunting Supplies",
		shop = true,
		itemSet = 8,
	},
	{
		id = 29,
		slots = 2,
		capacity = 10,
		name = "Hidden Compartment",
		isVehicle = true,
	},
	{
		id = 30,
		slots = 50,
		capacity = 300,
		name = "Last Train Food Warmer",
		restriction = {
			job = {
				id = "lasttrain",
			},
		},
	},
	{
		id = 31,
		slots = 160,
		capacity = 3500,
		name = "Last Train Cold Storage",
		restriction = {
			job = {
				id = "lasttrain",
			},
		},
	},

	{
		id = 32,
		slots = 120,
		capacity = 8000,
		name = "Redline Part Storage",
		restriction = {
			job = {
				id = "redline",
			},
		},
	},
	{
		id = 33,
		slots = 60,
		capacity = 600,
		name = "Mirror Autos Part Storage",
		restriction = {
			job = {
				id = "mirror_autos",
			},
		},
	},
	{
		id = 34,
		slots = 60,
		capacity = 600,
		name = "Hayes Part Storage",
		restriction = {
			job = {
				id = "hayes_autos",
			},
		},
	},
	{
		id = 35,
		slots = 60,
		capacity = 600,
		name = "Harmony Part Storage",
		restriction = {
			job = {
				id = "harmony_repairs",
			},
		},
	},
	{
		id = 36,
		slots = 60,
		capacity = 600,
		name = "Paleto Garage Part Storage",
		restriction = {
			job = {
				id = "paleto_garage",
			},
		},
	},

	{
		id = 47,
		slots = 60,
		capacity = 4000,
		name = "Redline Mini Storage",
		restriction = {
			job = {
				id = "redline",
			},
		},
	},
	{
		id = 37,
		slots = 35,
		capacity = 200,
		name = "DOC Armory",
		shop = true,
		free = true,
		itemSet = 9,
		restriction = {
			job = {
				id = "prison",
				duty = true,
				workplace = "corrections",
			},
		},
	},
	{
		id = 38,
		slots = 10,
		capacity = 200,
		name = "Vending",
		shop = true,
		itemSet = 10,
	},
	{
		id = 39,
		slots = 10,
		capacity = 200,
		name = "Vending",
		shop = true,
		itemSet = 11,
	},
	{ -- Drinks
		id = 40,
		slots = 10,
		capacity = 200,
		name = "Vending",
		shop = true,
		itemSet = 12,
	},
	{ -- Food
		id = 41,
		slots = 10,
		capacity = 200,
		name = "Vending",
		shop = true,
		itemSet = 13,
	},
	{ -- Pharmacy
		id = 42,
		slots = 35,
		capacity = 200,
		name = "Pharmacy",
		shop = true,
		itemSet = 14,
	},
	{ -- Fuel Pump
		id = 43,
		slots = 10,
		capacity = 200,
		name = "Fuel Stations",
		shop = true,
		itemSet = 15,
	},
	{
		id = 44,
		slots = 120,
		capacity = 5000,
		name = "PD Evidence Locker",
	},
	{
		id = 45,
		slots = 25,
		capacity = 200,
		name = "Personal Government Locker",
	},
	{
		id = 46,
		slots = 60,
		capacity = 400,
		name = "DOJ Safe",
		restriction = {
			job = {
				id = "government",
				workplace = "doj",
				grade = "sjudge",
			},
		},
	},

	{
		id = 49,
		slots = 60,
		capacity = 3000,
		name = "Tuner Part Storage",
		restriction = {
			job = {
				id = "tuna",
			},
		},
	},

	{
		id = 50,
		slots = 60,
		capacity = 3000,
		name = "Tuner Part Storage",
		restriction = {
			job = {
				id = "tuna",
			},
		},
	},

	{
		id = 51,
		slots = 55,
		capacity = 300,
		name = "Redline Safe",
		restriction = {
			job = {
				id = "redline",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 52,
		slots = 55,
		capacity = 300,
		name = "Greycat Shipping Safe",
		restriction = {
			job = {
				id = "greycat_shipping",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 53,
		slots = 55,
		capacity = 300,
		name = "Pizza This Safe",
		restriction = {
			job = {
				id = "pizza_this",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 54,
		slots = 55,
		capacity = 300,
		name = "Avast Arcade Safe",
		restriction = {
			job = {
				id = "avast_arcade",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 55,
		slots = 55,
		capacity = 300,
		name = "UwU Cafe Safe",
		restriction = {
			job = {
				id = "uwu",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 56,
		slots = 55,
		capacity = 300,
		name = "PDM Safe",
		restriction = {
			job = {
				id = "pdm",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 142,
		slots = 55,
		capacity = 300,
		name = "PDM Storage",
		restriction = {
			job = {
				id = "pdm",
				permissionKey = "JOB_STORAGE",
			},
		},
	},

	{
		id = 57,
		slots = 110,
		capacity = 2000,
		name = "UwU Cafe Freezer",
		restriction = {
			job = {
				id = "uwu",
			},
		},
	},

	{
		id = 58,
		slots = 20,
		capacity = 200,
		name = "UwU Cafe",
		restriction = {
			job = {
				id = "uwu",
			},
		},
	},

	{
		id = 59,
		slots = 100,
		capacity = 2000,
		name = "Pizza This Freezer",
		restriction = {
			job = {
				id = "pizza_this",
			},
		},
	},

	{
		id = 60,
		slots = 35,
		capacity = 600,
		name = "Pizza This",
		restriction = {
			job = {
				id = "pizza_this",
			},
		},
	},

	{
		id = 61,
		slots = 40,
		capacity = 1000,
		shop = true,
		itemSet = 16,
		name = "Food Wholesaler",
		restriction = {
			job = {
				id = false,
				permissionKey = "JOB_USE_WHOLESALER",
			},
		},
	},

	{
		id = 62,
		slots = 5,
		capacity = 1000,
		shop = true,
		itemSet = 17,
		name = "Smoke on the Water",
	},
	{
		id = 63,
		slots = 65,
		capacity = 3000,
		name = "Greycat Shipping",
		restriction = {
			job = {
				id = "greycat_shipping",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 64,
		slots = 65,
		capacity = 3000,
		name = "Blackline",
		restriction = {
			job = {
				id = "blackline",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 65,
		slots = 55,
		capacity = 600,
		name = "Tuna Safe",
		restriction = {
			job = {
				id = "tuna",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 66,
		slots = 55,
		capacity = 600,
		name = "Triad Safe",
		restriction = {
			job = {
				id = "triad",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 67,
		slots = 55,
		capacity = 600,
		name = "Bowling Safe",
		restriction = {
			job = {
				id = "bowling",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 68,
		slots = 60,
		capacity = 500,
		name = "Bobs Balls Fridge",
		restriction = {
			job = {
				id = "bowling",
			},
		},
	},

	{
		id = 69,
		slots = 140,
		capacity = 3000,
		name = "UwU Cafe Storage",
		restriction = {
			job = {
				id = "uwu",
			},
		},
	},

	-- {
	-- 	id = 70,
	-- 	slots = 80,
	-- 	capacity = 1200,
	-- 	name = "2 Buen Vino Rd Storage",
	-- 	restriction = {
	-- 		job = {
	-- 			id = "dgang",
	-- 		},
	-- 	},
	-- },

	{
		id = 71,
		slots = 165,
		capacity = 4000,
		name = "Tire Nutz Part Storage",
		restriction = {
			job = {
				id = "tirenutz",
			},
		},
	},
	{
		id = 72,
		slots = 165,
		capacity = 4000,
		name = "Hayes Part Storage",
		restriction = {
			job = {
				id = "hayes",
			},
		},
	},
	{
		id = 73,
		slots = 100,
		capacity = 2000,
		name = "Atomic Part Storage",
		restriction = {
			job = {
				id = "atomic",
			},
		},
	},
	{
		id = 74,
		slots = 20,
		capacity = 1000,
		shop = true,
		itemSet = 5,
		name = "Digital Den",
	},

	{
		id = 75,
		slots = 55,
		capacity = 600,
		name = "Hayes Safe",
		restriction = {
			job = {
				id = "hayes",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 76,
		slots = 5,
		capacity = 200,
		shop = true,
		itemSet = 19,
		name = "Winery",
	},

	{
		id = 77,
		slots = 40,
		capacity = 150,
		name = "Pizza This Wine Cellar",
		restriction = {
			job = {
				id = "pizza_this",
			},
		},
	},

	{
		id = 78,
		slots = 80,
		capacity = 1000,
		name = "Avast Arcade Fridge",
		restriction = {
			job = {
				id = "avast_arcade",
			},
		},
	},

	{
		id = 143,
		slots = 60,
		capacity = 400,
		name = "Bean Machine Safe",
		restriction = {
			job = {
				id = "beanmachine",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 79,
		slots = 140,
		capacity = 2000,
		name = "Bean Machine",
		restriction = {
			job = {
				id = "beanmachine",
			},
		},
	},
	{
		id = 80,
		slots = 140,
		capacity = 2000,
		name = "Bean Machine",
		restriction = {
			job = {
				id = "beanmachine",
			},
		},
	},

	{
		id = 81,
		slots = 165,
		capacity = 1500,
		name = "Tequi-la-la Storage",
		restriction = {
			job = {
				id = "tequila",
			},
		},
	},
	{
		id = 82,
		slots = 65,
		capacity = 800,
		name = "Tequi-la-la Fridge",
		restriction = {
			job = {
				id = "tequila",
			},
		},
	},
	{
		id = 83,
		slots = 165,
		capacity = 5000,
		name = "Vanilla Unicorn Storage",
		restriction = {
			job = {
				id = "unicorn",
			},
		},
	},
	{
		id = 84,
		slots = 65,
		capacity = 800,
		name = "Vanilla Unicorn Fridge",
		restriction = {
			job = {
				id = "unicorn",
			},
		},
	},
	{
		id = 85,
		slots = 60,
		capacity = 1200,
		name = "VU Safe",
		restriction = {
			job = {
				id = "unicorn",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 86,
		slots = 55,
		capacity = 600,
		name = "Dynasty8 Safe",
		restriction = {
			job = {
				id = "realestate",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 87,
		slots = 140,
		capacity = 2000,
		name = "Bakery Storage",
		restriction = {
			job = {
				id = "bakery",
			},
		},
	},
	{
		id = 88,
		slots = 35,
		capacity = 600,
		name = "Bakery",
		restriction = {
			job = {
				id = "bakery",
			},
		},
	},

	{
		id = 89,
		slots = 140,
		capacity = 4000,
		name = "Noodle Exchange Freezer",
		restriction = {
			job = {
				id = "noodle",
			},
		},
	},

	{
		id = 90,
		slots = 35,
		capacity = 600,
		name = "Noodle Exchange",
		restriction = {
			job = {
				id = "noodle",
			},
		},
	},

	{
		id = 91,
		slots = 200,
		capacity = 2,
		name = "Card Holder",
	},

	{
		id = 92,
		slots = 165,
		capacity = 4000,
		name = "Harmony Part Storage",
		restriction = {
			job = {
				id = "harmony",
			},
		},
	},

	{
		id = 93,
		slots = 55,
		capacity = 600,
		name = "Nutz Safe",
		restriction = {
			job = {
				id = "tirenutz",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 94,
		slots = 165,
		capacity = 4000,
		name = "Smoke on the Water",
		restriction = {
			job = {
				id = "weed",
			},
		},
	},
	{
		id = 95,
		slots = 55,
		capacity = 600,
		name = "Smoke on the Water Safe",
		restriction = {
			job = {
				id = "weed",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 96,
		slots = 65,
		capacity = 800,
		name = "Triad Fridge",
		restriction = {
			job = {
				id = "triad",
			},
		},
	},
	{
		id = 97,
		slots = 55,
		capacity = 300,
		name = "Tequi-la-la Safe",
		restriction = {
			job = {
				id = "tequila",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 98,
		slots = 165,
		capacity = 4000,
		name = "Traid Records Storage",
		restriction = {
			job = {
				id = "triad",
			},
		},
	},

	{
		id = 100,
		slots = 50,
		capacity = 1500,
		name = "Digital Den Small Storage",
		restriction = {
			job = {
				id = "digitalden",
			},
		},
	},
	{
		id = 101,
		slots = 80,
		capacity = 3000,
		name = "Digital Den Storage",
		restriction = {
			job = {
				id = "digitalden",
			},
		},
	},
	{
		id = 102,
		slots = 55,
		capacity = 300,
		name = "Digital Den Safe",
		restriction = {
			job = {
				id = "digitalden",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 103,
		slots = 165,
		capacity = 4000,
		name = "Super Performance Part Storage",
		restriction = {
			job = {
				id = "superperformance",
			},
		},
	},
	{
		id = 104,
		slots = 55,
		capacity = 300,
		name = "Super Performance Safe",
		restriction = {
			job = {
				id = "superperformance",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 105,
		slots = 55,
		capacity = 300,
		name = "Noodle Exchange Safe",
		restriction = {
			job = {
				id = "noodle",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 106,
		slots = 160,
		capacity = 8000,
		name = "Auto Exotics Part Storage",
		restriction = {
			job = {
				id = "autoexotics",
			},
		},
	},
	{
		id = 107,
		slots = 100,
		capacity = 4000,
		name = "Auto Exotics Mini Storage",
		restriction = {
			job = {
				id = "autoexotics",
			},
		},
	},
	{
		id = 108,
		slots = 55,
		capacity = 600,
		name = "Auto Exotics Safe",
		restriction = {
			job = {
				id = "autoexotics",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 109,
		slots = 165,
		capacity = 4000,
		name = "Rockford Records Storage",
		restriction = {
			job = {
				id = "rockford_records",
			},
		},
	},

	{
		id = 110,
		slots = 165,
		capacity = 800,
		name = "Rockford Records Fridge",
		restriction = {
			job = {
				id = "rockford_records",
			},
		},
	},

	{
		id = 111,
		slots = 55,
		capacity = 300,
		name = "Rockford Records Safe",
		restriction = {
			job = {
				id = "rockford_records",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 99,
		slots = 20,
		capacity = 100,
		name = "Fishing Supplies",
		shop = true,
		itemSet = 20,
	},
	{ -- Advanced Fishing Supplies
		id = 112,
		slots = 20,
		capacity = 100,
		name = "Reputation Level 3+",
		shop = true,
		itemSet = 21,
		restriction = {
			rep = {
				id = "Fishing",
				level = 3,
			},
		},
	},

	{
		id = 113,
		slots = 80,
		capacity = 3000,
		name = "Gruppe 6 Storage",
		restriction = {
			job = {
				id = "securoserv",
			},
		},
	},
	{
		id = 114,
		slots = 55,
		capacity = 300,
		name = "Gruppe 6 Safe",
		restriction = {
			job = {
				id = "securoserv",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 115,
		slots = 20,
		capacity = 100,
		name = "DOJ Shop",
		shop = true,
		itemSet = 22,
		restriction = {
			job = {
				id = "government",
				workplace = "doj",
			},
		},
	},
	{
		id = 116,
		slots = 80,
		capacity = 3000,
		name = "DOJ Storage",
		restriction = {
			job = {
				id = "government",
				workplace = "doj",
			},
		},
	},

	{
		id = 117,
		slots = 100,
		capacity = 8000,
		name = "Pepega Pawn Storage",
		restriction = {
			job = {
				id = "pepega_pawn",
			},
		},
	},
	{
		id = 118,
		slots = 55,
		capacity = 300,
		name = "Pepega Pawn Safe",
		restriction = {
			job = {
				id = "pepega_pawn",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 119,
		slots = 120,
		capacity = 8000,
		name = "Otto's Part Storage",
		restriction = {
			job = {
				id = "ottos",
			},
		},
	},
	{
		id = 120,
		slots = 60,
		capacity = 4000,
		name = "Otto's Mini Storage",
		restriction = {
			job = {
				id = "ottos",
			},
		},
	},
	{
		id = 121,
		slots = 55,
		capacity = 300,
		name = "Otto's Safe",
		restriction = {
			job = {
				id = "ottos",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 122,
		slots = 120,
		capacity = 8000,
		name = "Bennys Part Storage",
		restriction = {
			job = {
				id = "bennys",
			},
		},
	},
	{
		id = 123,
		slots = 60,
		capacity = 4000,
		name = "Bennys Mini Storage",
		restriction = {
			job = {
				id = "bennys",
			},
		},
	},
	{
		id = 124,
		slots = 55,
		capacity = 300,
		name = "Bennys Safe",
		restriction = {
			job = {
				id = "bennys",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 125,
		slots = 165,
		capacity = 2500,
		name = "Casino Storage",
		restriction = {
			job = {
				id = "casino",
			},
		},
	},
	{
		id = 126,
		slots = 100,
		capacity = 1000,
		name = "Casino Fridge",
		restriction = {
			job = {
				id = "casino",
			},
		},
	},
	{
		id = 127,
		slots = 5,
		capacity = 300,
		name = "Casino Safe",
		restriction = {
			job = {
				id = "casino",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 128,
		slots = 125,
		capacity = 3000,
		name = "Cafe Prego Freezer",
		restriction = {
			job = {
				id = "prego",
			},
		},
	},

	{
		id = 129,
		slots = 65,
		capacity = 1000,
		name = "Cafe Prego",
		restriction = {
			job = {
				id = "prego",
			},
		},
	},

	{
		id = 130,
		slots = 40,
		capacity = 250,
		name = "Cafe Prego Wine Cellar",
		restriction = {
			job = {
				id = "prego",
			},
		},
	},

	{
		id = 131,
		slots = 55,
		capacity = 300,
		name = "Cafe Prego Safe",
		restriction = {
			job = {
				id = "prego",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 132,
		slots = 1,
		capacity = 25,
		name = "Gallery Gem Table",
		restriction = {
			job = {
				id = "sagma",
				permissionKey = "JOB_USE_GEM_TABLE",
			},
		},
		action = {
			icon = "gem",
			text = "Inspect",
			event = "Businesses:Server:SAGMA:ViewGem",
		},
	},

	{
		id = 133,
		slots = 120,
		capacity = 300,
		name = "SAGMA Safe",
		restriction = {
			job = {
				id = "sagma",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 134,
		slots = 140,
		capacity = 4000,
		name = "Gallery Office Storage",
		restriction = {
			job = {
				id = "sagma",
			},
		},
	},
	{
		id = 135,
		slots = 1000,
		capacity = 8000,
		name = "Gallery Supplies",
		restriction = {
			job = {
				id = "sagma",
			},
		},
	},

	{
		id = 136,
		slots = 20,
		capacity = 1200,
		name = "Large Order Pick Up",
	},
	{
		id = 137,
		slots = 100,
		capacity = 1000,
		name = "Fightclub Storage",
		restriction = {
			job = {
				id = "triad_boxing",
			},
		},
	},
	{
		id = 138,
		slots = 100,
		capacity = 1000,
		name = "Placed Object",
	},
	{
		id = 139,
		slots = 65,
		capacity = 1000,
		name = "Odins Disciples MC Safe",
		restriction = {
			job = {
				id = "odmc",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 141,
		slots = 55,
		capacity = 1000,
		name = "Last Train Safe",
		restriction = {
			job = {
				id = "lasttrain",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	{
		id = 144,
		slots = 65,
		capacity = 400,
		name = "MBA Concession Storage",
		restriction = {
			job = {
				id = "mba",
				permissionKey = "JOB_STORAGE",
			},
		},
	},
	{
		id = 145,
		slots = 65,
		capacity = 400,
		name = "MBA VIP Bar Storage",
		restriction = {
			job = {
				id = "mba",
				permissionKey = "JOB_STORAGE",
			},
		},
	},
	{
		id = 146,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 147,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 148,
		slots = 60,
		capacity = 800,
		name = "Dynasty8 Storage",
		restriction = {
			job = {
				id = "realestate",
			},
		},
	},
	{
		id = 149,
		slots = 1,
		capacity = 25,
		name = "Jeweled Dragon Gem Table",
		restriction = {
			job = {
				id = "jewel",
				permissionKey = "JOB_USE_GEM_TABLE",
			},
		},
		action = {
			icon = "gem",
			text = "Inspect",
			event = "Businesses:Server:JEWEL:ViewGem",
		},
	},

	{
		id = 150,
		slots = 120,
		capacity = 300,
		name = "Jeweled Dragon Safe",
		restriction = {
			job = {
				id = "jewel",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 151,
		slots = 140,
		capacity = 4000,
		name = "Jeweled Dragon Office Storage",
		restriction = {
			job = {
				id = "jewel",
			},
		},
	},
	{
		id = 152,
		slots = 140,
		capacity = 4000,
		name = "Jeweled Dragon Office Storage",
		restriction = {
			job = {
				id = "jewel",
			},
		},
	},
	{
		id = 153,
		slots = 1000,
		capacity = 8000,
		name = "Jeweled Dragon Supplies",
		restriction = {
			job = {
				id = "jewel",
			},
		},
	},
	{
		id = 154,
		slots = 1000,
		capacity = 8000,
		name = "Jeweled Dragon Storage",
		restriction = {
			job = {
				id = "jewel",
			},
		},
	},
	{
		id = 155,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},

	{
		id = 157,
		slots = 165,
		capacity = 5000,
		name = "Bahama Mamas Storage",
		restriction = {
			job = {
				id = "bahama",
			},
		},
	},
	{
		id = 158,
		slots = 65,
		capacity = 800,
		name = "Bahama Mamas Fridge",
		restriction = {
			job = {
				id = "bahama",
			},
		},
	},
	{
		id = 159,
		slots = 60,
		capacity = 1200,
		name = "Bahama Mamas Safe",
		restriction = {
			job = {
				id = "bahama",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 160,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 161,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	-- black woods
	{
		id = 162,
		slots = 165,
		capacity = 5000,
		name = "Black Woods Storage",
		restriction = {
			job = {
				id = "woods_saloon",
			},
		},
	},
	{
		id = 163,
		slots = 65,
		capacity = 800,
		name = "Black Woods Fridge",
		restriction = {
			job = {
				id = "woods_saloon",
			},
		},
	},
	{
		id = 164,
		slots = 60,
		capacity = 1200,
		name = "Black Woods Safe",
		restriction = {
			job = {
				id = "woods_saloon",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 165,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 166,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 167,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	-- end black woods
	-- START MINTY CUSTOMS
	{
		id = 168,
		slots = 120,
		capacity = 8000,
		name = "Minty Customs Part Storage",
		restriction = {
			job = {
				id = "minty_customs",
			},
		},
	},
	{
		id = 169,
		slots = 70,
		capacity = 4000,
		name = "Minty Customs Mini Storage",
		restriction = {
			job = {
				id = "minty_customs",
			},
		},
	},
	{
		id = 170,
		slots = 80,
		capacity = 1000,
		name = "Minty Safe",
		restriction = {
			job = {
				id = "minty_customs",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},

	-- BURGERSHOT ADDITIONS
	{
		id = 171,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 172,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 173,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 174,
		slots = 65,
		capacity = 800,
		name = "Burgershot Fridge",
		restriction = {
			job = {
				id = "burgershot",
			},
		},
	},

	-- END BURGERSHOT
	-- CASINO

	{
		id = 175,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 176,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 177,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 178,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 179,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 180,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 181,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 182,
		slots = 165,
		capacity = 2500,
		name = "Casino Storage",
		restriction = {
			job = {
				id = "casino",
			},
		},
	},
	{
		id = 183,
		slots = 165,
		capacity = 2500,
		name = "Casino Storage",
		restriction = {
			job = {
				id = "casino",
			},
		},
	},
	{
		id = 184,
		slots = 165,
		capacity = 2500,
		name = "Casino Storage",
		restriction = {
			job = {
				id = "casino",
			},
		},
	},
	{
		id = 185,
		slots = 100,
		capacity = 1000,
		name = "Casino Fridge",
		restriction = {
			job = {
				id = "casino",
			},
		},
	},
	{
		id = 186,
		slots = 100,
		capacity = 1000,
		name = "Casino Fridge",
		restriction = {
			job = {
				id = "casino",
			},
		},
	},
	{
		id = 187,
		slots = 100,
		capacity = 1000,
		name = "Casino Fridge",
		restriction = {
			job = {
				id = "casino",
			},
		},
	},
	-- END CASINO
	-- Vending Hot Dogs and Burgers
	{
		id = 188,
		slots = 10,
		capacity = 200,
		name = "Hot Dog Cart",
		shop = true,
		itemSet = 23,
	},
	{
		id = 189,
		slots = 10,
		capacity = 200,
		name = "Burger Cart",
		shop = true,
		itemSet = 24,
	},
	-- end Vending
	-- Cloud 9 Storage
	{
		id = 190,
		slots = 55,
		capacity = 1000,
		name = "Cloud 9 Storage",
		restriction = {
			job = {
				id = "cloud9",
			},
		},
	},
	-- End Cloud 9 Storage
	-- Los Santos Fight Club lsfc
	{
		id = 191,
		slots = 65,
		capacity = 1000,
		name = "LSFC Safe",
		restriction = {
			job = {
				id = "lsfc",
			},
		},
	},
	{
		id = 192,
		slots = 100,
		capacity = 1000,
		name = "LSFC Storage",
		restriction = {
			job = {
				id = "lsfc",
			},
		},
	},
	-- End
	-- Vangelico Paleto
	{
		id = 193,
		slots = 120,
		capacity = 300,
		name = "Vangelico Safe",
		restriction = {
			job = {
				id = "vangelico",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 194,
		slots = 1000,
		capacity = 8000,
		name = "Vangelico Storage",
		restriction = {
			job = {
				id = "vangelico",
			},
		},
	},
	{
		id = 195,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 196,
		slots = 1,
		capacity = 25,
		name = "Vangelico Gem Table",
		restriction = {
			job = {
				id = "vangelico",
				permissionKey = "JOB_USE_GEM_TABLE",
			},
		},
		action = {
			icon = "gem",
			text = "Inspect",
			event = "Businesses:Server:VANGELICO:ViewGem",
		},
	},
	-- End Vangelico Paleto
	-- Start Pepega Pawn Extras
	{
		id = 197,
		slots = 20,
		capacity = 1200,
		name = "Large Order Pick Up",
	},
	{
		id = 198,
		slots = 20,
		capacity = 1200,
		name = "Large Order Pick Up",
	},
	{
		id = 199,
		slots = 20,
		capacity = 1200,
		name = "Large Order Pick Up",
	},
	-- End Pepega Pawn Extras
	{
		id = 200,
		slots = 50,
		capacity = 100000,
		name = "Player Shop",
		playerShop = true,
	},
	-- Rusty Browns
	{
		id = 201,
		slots = 60,
		capacity = 500,
		name = "Rusty Browns Safe",
		restriction = {
			job = {
				id = "rustybrowns",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 202,
		slots = 80,
		capacity = 1000,
		name = "Rusty Browns Food Warmer",
		restriction = {
			job = {
				id = "rustybrowns",
			},
		},
	},
	{
		id = 203,
		slots = 80,
		capacity = 1000,
		name = "Rusty Browns Food Warmer",
		restriction = {
			job = {
				id = "rustybrowns",
			},
		},
	},
	{
		id = 204,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 205,
		slots = 10,
		capacity = 100,
		name = "Order Pick Up",
	},
	{
		id = 206,
		slots = 155,
		capacity = 2000,
		name = "Rusty Browns Storage",
		restriction = {
			job = {
				id = "rustybrowns",
			},
		},
	},
	-- End Rusty Browns
	-- Start ODMC
	{
		id = 207,
		slots = 100,
		capacity = 2000,
		name = "Odins Disciples MC Storage",
		restriction = {
			job = {
				id = "odmc",
			},
		},
	},
	-- End ODMC
	-- Start The Saints (GSF)
	{
		id = 208,
		slots = 65,
		capacity = 1000,
		name = "The Saints Safe",
		restriction = {
			job = {
				id = "saints",
				permissionKey = "JOB_ACCESS_SAFE",
			},
		},
	},
	{
		id = 209,
		slots = 100,
		capacity = 2000,
		name = "The Saints Storage",
		restriction = {
			job = {
				id = "saints",
			},
		},
	},
	-- End The Saints (GSF)
	-- Start Vangelico Paleto
	{
		id = 210,
		slots = 1000,
		capacity = 8000,
		name = "Vangelico Storage",
		restriction = {
			job = {
				id = "vangelico",
			},
		},
	},
	{
		id = 999,
		slots = 10,
		capacity = 150,
		name = "Secured Compartment",
		restriction = {
			job = {
				id = "prison",
				duty = true,
			},
		},
	},
	-- End Vangelico Paleto
	{
		id = 1000,
		slots = 65,
		capacity = 800,
		name = "Property Storage Tier 1",
	},
	{
		id = 1001,
		slots = 100,
		capacity = 1200,
		name = "Property Storage Tier 2",
	},
	{
		id = 1002,
		slots = 130,
		capacity = 1600,
		name = "Property Storage Tier 3",
	},
	{
		id = 1003,
		slots = 160,
		capacity = 2000,
		name = "Property Storage Tier 4",
	},
	{
		id = 1004,
		slots = 195,
		capacity = 2400,
		name = "Property Storage Tier 5",
	},
	{
		id = 1005,
		slots = 225,
		capacity = 2800,
		name = "Property Storage Tier 6",
	},
	{
		id = 1010,
		slots = 130,
		capacity = 1800,
		name = "Warehouse Storage Tier 1",
	},
	{
		id = 1011,
		slots = 240,
		capacity = 3000,
		name = "Warehouse Storage Tier 2",
	},
	{
		id = 1012,
		slots = 420,
		capacity = 4000,
		name = "Warehouse Storage Tier 3",
	},
	{
		id = 1020,
		slots = 130,
		capacity = 1800,
		name = "Container Storage",
	},

	{
		id = 2000,
		slots = 600,
		capacity = 50000,
		name = "PD Trash Can",
		trash = true,
		restriction = {
			job = {
				id = "police",
				duty = true,
			},
		},
	},
	{
		id = 2003,
		slots = 600,
		capacity = 50000,
		name = "Prison Trash Can",
		trash = true,
		restriction = {
			job = {
				id = "prison",
				duty = true,
			},
		},
	},
	{
		id = 2002,
		slots = 600,
		capacity = 50000,
		name = "EMS Trash Can",
		trash = true,
		restriction = {
			job = {
				id = "ems",
				duty = true,
			},
		},
	},

	{
		id = 2001,
		slots = 600,
		capacity = 50000,
		name = "Otto Trash Can",
		trash = true,
		restriction = {
			job = {
				id = "ottos",
			},
		},
	},
	{
		id = 3000,
		slots = 65,
		capacity = 1000,
		name = "Storage Unit Tier 1",
	},
	{
		id = 3001,
		slots = 130,
		capacity = 2000,
		name = "Storage Unit Tier 2",
	},
	{
		id = 3002,
		slots = 195,
		capacity = 3000,
		name = "Storage Unit Tier 3",
	},
	{
		id = 4000,
		slots = 65,
		capacity = 1000,
		name = "Dumpster",
		trash = true,
	},
	{
		id = 5000,
		slots = 15,
		capacity = 200,
		name = "Prison Stash",
	},
	{
		id = 5001,
		slots = 30,
		capacity = 200,
		name = "Public Prison Stash",
	},
}
