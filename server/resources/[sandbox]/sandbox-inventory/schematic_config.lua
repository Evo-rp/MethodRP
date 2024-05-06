_schematics = {
	-- AMMO
	pistol_ammo = {
		result = { name = "AMMO_PISTOL", count = 2 },
		items = {
			{ name = "copperwire", count = 100 },
			{ name = "scrapmetal", count = 100 },
		},
		time = 1000,
	},
	smg_ammo = {
		result = { name = "AMMO_SMG", count = 5 },
		items = {
			{ name = "copperwire", count = 500 },
			{ name = "scrapmetal", count = 500 },
		},
		time = 1000,
	},
	shotgun_ammo = {
		result = { name = "AMMO_SHOTGUN", count = 5 },
		items = {
			{ name = "copperwire", count = 500 },
			{ name = "scrapmetal", count = 500 },
		},
		time = 1000,
	},
	ar_ammo = {
		result = { name = "AMMO_AR", count = 5 },
		items = {
			{ name = "copperwire", count = 1000 },
			{ name = "scrapmetal", count = 1000 },
		},
		time = 1000,
	},

	-- TOOLS
	thermite = {
		result = { name = "thermite", count = 1 },
		items = {
			{ name = "ironbar", count = 1000 },
			{ name = "electronic_parts", count = 2000 },
			{ name = "copperwire", count = 1600 },
			{ name = "plastic", count = 200 },
			{ name = "rubber", count = 200 },
		},
		time = 5000,
	},
	blindfold = {
		result = { name = "blindfold", count = 1 },
		items = {
			{ name = "cloth", count = 100 },
		},
		time = 1000,
	},
	green_laptop = {
		result = { name = "green_laptop", count = 1 },
		items = {
			{ name = "ironbar", count = 10000 },
			{ name = "electronic_parts", count = 10000 },
			{ name = "scrapmetal", count = 10000 },
			{ name = "copperwire", count = 10000 },
			{ name = "heavy_glue", count = 10000 },
			{ name = "plastic", count = 10000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 12,
	},
	blue_laptop = {
		result = { name = "blue_laptop", count = 1 },
		items = {
			{ name = "ironbar", count = 10000 },
			{ name = "electronic_parts", count = 10000 },
			{ name = "scrapmetal", count = 10000 },
			{ name = "copperwire", count = 10000 },
			{ name = "heavy_glue", count = 10000 },
			{ name = "plastic", count = 10000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 12,
	},
	red_laptop = {
		result = { name = "red_laptop", count = 1 },
		items = {
			{ name = "ironbar", count = 20000 },
			{ name = "electronic_parts", count = 20000 },
			{ name = "scrapmetal", count = 20000 },
			{ name = "copperwire", count = 20000 },
			{ name = "heavy_glue", count = 20000 },
			{ name = "plastic", count = 20000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 12,
	},
	purple_laptop = {
		result = { name = "purple_laptop", count = 1 },
		items = {
			{ name = "ironbar", count = 30000 },
			{ name = "electronic_parts", count = 30000 },
			{ name = "scrapmetal", count = 30000 },
			{ name = "copperwire", count = 30000 },
			{ name = "heavy_glue", count = 30000 },
			{ name = "plastic", count = 30000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 12,
	},
	yellow_laptop = {
		result = { name = "yellow_laptop", count = 1 },
		items = {
			{ name = "ironbar", count = 40000 },
			{ name = "electronic_parts", count = 40000 },
			{ name = "scrapmetal", count = 40000 },
			{ name = "copperwire", count = 40000 },
			{ name = "heavy_glue", count = 40000 },
			{ name = "plastic", count = 40000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 12,
	},
	handcuffs = {
		result = { name = "handcuffs", count = 1 },
		items = {
			{ name = "ironbar", count = 1500 },
		},
		time = 5000,
	},
	adv_electronics_kit = {
		result = { name = "adv_electronics_kit", count = 1 },
		items = {
			{ name = "goldbar", count = 1 },
			{ name = "silverbar", count = 2 },
			{ name = "electronic_parts", count = 30 },
			{ name = "heavy_glue", count = 5 },
			{ name = "plastic", count = 30 },
			{ name = "copperwire", count = 20 },
		},
		time = 5000,
	},

	radio_extendo = {
		result = { name = "radio_extendo", count = 1 },
		items = {
			{ name = "electronic_parts", count = 100 },
			{ name = "plastic", count = 700 },
			{ name = "copperwire", count = 200 },
			{ name = "heavy_glue", count = 10 },
			{ name = "silverbar", count = 2 },
		},
		time = 3000,
	},

	-- ATTACHMENTS
	weapon_flashlight = {
		result = { name = "ATTCH_WEAPON_FLASHLIGHT", count = 1 },
		items = {
			{ name = "goldbar", count = 5 },
			{ name = "electronic_parts", count = 250 },
			{ name = "heavy_glue", count = 250 },
			{ name = "plastic", count = 250 },
			{ name = "copperwire", count = 250 },
		},
		time = 5000,
	},
	pistol_ext_mag = {
		result = { name = "ATTCH_PISTOL_EXT_MAG", count = 1 },
		items = {
			{ name = "ironbar", count = 500 },
			{ name = "heavy_glue", count = 1000 },
			{ name = "plastic", count = 500 },
		},
		time = 5000,
	},
	smg_ext_mag = {
		result = { name = "ATTCH_SMG_EXT_MAG", count = 1 },
		items = {
			{ name = "ironbar", count = 1500 },
			{ name = "heavy_glue", count = 2500 },
			{ name = "plastic", count = 1500 },
		},
		time = 5000,
	},
	rifle_ext_mag = {
		result = { name = "ATTCH_AR_EXT_MAG", count = 1 },
		items = {
			{ name = "ironbar", count = 5000 },
			{ name = "heavy_glue", count = 7500 },
			{ name = "plastic", count = 5000 },
		},
		time = 5000,
	},
	drum_mag = {
		result = { name = "ATTCH_DRUM_MAG", count = 1 },
		items = {
			{ name = "ironbar", count = 5000 },
			{ name = "heavy_glue", count = 7500 },
			{ name = "plastic", count = 5000 },
		},
		time = 5000,
	},
	box_mag = {
		result = { name = "ATTCH_BOX_MAG", count = 1 },
		items = {
			{ name = "ironbar", count = 5000 },
			{ name = "heavy_glue", count = 7500 },
			{ name = "plastic", count = 5000 },
		},
		time = 5000,
	},

	pistol_suppressor = {
		result = { name = "ATTCH_PISTOL_SILENCER", count = 1 },
		items = {
			{ name = "ironbar", count = 1000 },
		},
		time = 5000,
	},
	adv_pistol_suppressor = {
		result = { name = "ATTCH_ADV_PISTOL_SILENCER", count = 1 },
		items = {
			{ name = "ironbar", count = 2000 },
		},
		time = 5000,
	},
	smg_suppressor = {
		result = { name = "ATTCH_SMG_SILENCER", count = 1 },
		items = {
			{ name = "ironbar", count = 3000 },
		},
		time = 5000,
	},
	adv_smg_suppressor = {
		result = { name = "ATTCH_ADV_SMG_SILENCER", count = 1 },
		items = {
			{ name = "ironbar", count = 4000 },
		},
		time = 5000,
	},
	ar_suppressor = {
		result = { name = "ATTCH_AR_SILENCER", count = 1 },
		items = {
			{ name = "ironbar", count = 5000 },
		},
		time = 5000,
	},
	adv_ar_suppressor = {
		result = { name = "ATTCH_ADV_AR_SILENCER", count = 1 },
		items = {
			{ name = "ironbar", count = 6000 },
		},
		time = 5000,
	},

	scope_holo = {
		result = { name = "ATTCH_HOLO", count = 1 },
		items = {
			{ name = "goldbar", count = 15 },
			{ name = "ironbar", count = 2500 },
			{ name = "electronic_parts", count = 2500 },
			{ name = "glue", count = 2500 },
			{ name = "copperwire", count = 2500 },
		},
		time = 5000,
	},
	scope_reddot = {
		result = { name = "ATTCH_REDDOT", count = 1 },
		items = {
			{ name = "goldbar", count = 15 },
			{ name = "ironbar", count = 2500 },
			{ name = "electronic_parts", count = 2500 },
			{ name = "glue", count = 2500 },
			{ name = "copperwire", count = 2500 },
		},
		time = 5000,
	},
	scope_small = {
		result = { name = "ATTCH_SMALL_SCOPE", count = 1 },
		items = {
			{ name = "goldbar", count = 15 },
			{ name = "ironbar", count = 2500 },
			{ name = "electronic_parts", count = 2500 },
			{ name = "glue", count = 2500 },
			{ name = "copperwire", count = 2500 },
		},
		time = 5000,
	},
	scope_med = {
		result = { name = "ATTCH_MED_SCOPE", count = 1 },
		items = {
			{ name = "goldbar", count = 15 },
			{ name = "ironbar", count = 2500 },
			{ name = "electronic_parts", count = 2500 },
			{ name = "glue", count = 2500 },
			{ name = "copperwire", count = 2500 },
		},
		time = 5000,
	},
	scope_lrg = {
		result = { name = "ATTCH_LRG_SCOPE", count = 1 },
		items = {
			{ name = "goldbar", count = 15 },
			{ name = "ironbar", count = 2500 },
			{ name = "electronic_parts", count = 2500 },
			{ name = "glue", count = 2500 },
			{ name = "copperwire", count = 2500 },
		},
		time = 5000,
	},

	-- GUNS
	pistol = {
		result = { name = "WEAPON_PISTOL", count = 1 },
		items = {
			{ name = "ironbar", count = 100 },
			{ name = "rubber", count = 100 },
			{ name = "heavy_glue", count = 100 },
			{ name = "plastic", count = 100 },
			{ name = "copperwire", count = 100 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 2,
	},
	combatpistol = {
		result = { name = "WEAPON_COMBATPISTOL", count = 1 },
		items = {
			{ name = "ironbar", count = 200 },
			{ name = "rubber", count = 200 },
			{ name = "heavy_glue", count = 200 },
			{ name = "plastic", count = 200 },
			{ name = "copperwire", count = 200 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 2,
	},
	fnx = {
		result = { name = "WEAPON_FNX", count = 1 },
		items = {
			{ name = "ironbar", count = 200 },
			{ name = "rubber", count = 200 },
			{ name = "heavy_glue", count = 200 },
			{ name = "plastic", count = 200 },
			{ name = "copperwire", count = 200 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 2,
	},
	fiveseven = {
		result = { name = "WEAPON_FIVESEVEN", count = 1 },
		items = {
			{ name = "ironbar", count = 500 },
			{ name = "rubber", count = 500 },
			{ name = "heavy_glue", count = 500 },
			{ name = "plastic", count = 500 },
			{ name = "copperwire", count = 500 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 2,
	},
	sns = {
		result = { name = "WEAPON_SNSPISTOL", count = 1 },
		items = {
			{ name = "ironbar", count = 500 },
			{ name = "rubber", count = 500 },
			{ name = "heavy_glue", count = 500 },
			{ name = "plastic", count = 500 },
			{ name = "copperwire", count = 500 },
		},
		time = 5000,
	},
	l5 = {
		result = { name = "WEAPON_L5", count = 1 },
		items = {
			{ name = "ironbar", count = 500 },
			{ name = "rubber", count = 500 },
			{ name = "heavy_glue", count = 500 },
			{ name = "plastic", count = 500 },
			{ name = "copperwire", count = 500 },
		},
		time = 5000,
	},
	mp5 = {
		result = { name = "WEAPON_MP5", count = 1 },
		items = {
			{ name = "ironbar", count = 1000 },
			{ name = "rubber", count = 1000 },
			{ name = "heavy_glue", count = 1000 },
			{ name = "plastic", count = 1000 },
			{ name = "copperwire", count = 1000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 2,
	},
	smg = {
		result = { name = "WEAPON_SMG", count = 1 },
		items = {
			{ name = "ironbar", count = 1000 },
			{ name = "rubber", count = 1000 },
			{ name = "heavy_glue", count = 1000 },
			{ name = "plastic", count = 1000 },
			{ name = "copperwire", count = 1000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 2,
	},
	miniuzi = {
		result = { name = "WEAPON_MINIUZI", count = 1 },
		items = {
			{ name = "ironbar", count = 2000 },
			{ name = "rubber", count = 2000 },
			{ name = "heavy_glue", count = 2000 },
			{ name = "plastic", count = 2000 },
			{ name = "copperwire", count = 2000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 3,
	},
	mp9 = {
		result = { name = "WEAPON_MP9A", count = 1 },
		items = {
			{ name = "ironbar", count = 2000 },
			{ name = "rubber", count = 2000 },
			{ name = "heavy_glue", count = 2000 },
			{ name = "plastic", count = 2000 },
			{ name = "copperwire", count = 2000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 3,
	},
	mpx = {
		result = { name = "WEAPON_MPX", count = 1 },
		items = {
			{ name = "ironbar", count = 4000 },
			{ name = "rubber", count = 4000 },
			{ name = "heavy_glue", count = 4000 },
			{ name = "plastic", count = 4000 },
			{ name = "copperwire", count = 4000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 4,
	},
	pp19 = {
		result = { name = "WEAPON_PP19", count = 1 },
		items = {
			{ name = "ironbar", count = 4000 },
			{ name = "rubber", count = 4000 },
			{ name = "heavy_glue", count = 4000 },
			{ name = "plastic", count = 4000 },
			{ name = "copperwire", count = 4000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 4,
	},
	appistol = {
		result = { name = "WEAPON_APPISTOL", count = 1 },
		items = {
			{ name = "ironbar", count = 8000 },
			{ name = "rubber", count = 8000 },
			{ name = "heavy_glue", count = 8000 },
			{ name = "plastic", count = 8000 },
			{ name = "copperwire", count = 8000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 12,
	},
	tec9 = {
		result = { name = "WEAPON_MACHINEPISTOL", count = 1 },
		items = {
			{ name = "ironbar", count = 8000 },
			{ name = "rubber", count = 8000 },
			{ name = "heavy_glue", count = 8000 },
			{ name = "plastic", count = 8000 },
			{ name = "copperwire", count = 8000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 12,
	},
	ak74 = {
		result = { name = "WEAPON_AK74", count = 1 },
		items = {
			{ name = "ironbar", count = 8000 },
			{ name = "rubber", count = 8000 },
			{ name = "heavy_glue", count = 8000 },
			{ name = "plastic", count = 8000 },
			{ name = "copperwire", count = 8000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 4,
	},
	ak47 = {
		result = { name = "WEAPON_AK47", count = 1 },
		items = {
			{ name = "ironbar", count = 8000 },
			{ name = "rubber", count = 8000 },
			{ name = "heavy_glue", count = 8000 },
			{ name = "plastic", count = 8000 },
			{ name = "copperwire", count = 8000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 4,
	},
	assaultrifle = {
		result = { name = "WEAPON_ASSAULTRIFLE", count = 1 },
		items = {
			{ name = "ironbar", count = 8000 },
			{ name = "rubber", count = 8000 },
			{ name = "heavy_glue", count = 8000 },
			{ name = "plastic", count = 8000 },
			{ name = "copperwire", count = 8000 },
		},
		time = 5000,
		cooldown = 1000 * 60 * 60 * 4,
	},
}
