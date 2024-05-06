table.insert(Config.Businesses, {
	Job = "jewel",
	Name = "The Jeweled Dragon",
	Benches = {
		jewelry = {
			label = "",
			targeting = {
				actionString = "Making",
				manual = true,
			},
			recipes = {
				-- {
				-- 	result = { name = "rlg_chain", count = 1 },
				-- 	items = {
				-- 		{ name = "goldbar", count = 10 },
				-- 		{ name = "silverbar", count = 10 },
				-- 		{ name = "diamond", count = 2 },
				-- 		{ name = "ruby", count = 2 },
				-- 	},
				-- 	time = 6500,
				-- },
				-- {
				-- 	result = { name = "lss_chain", count = 1 },
				-- 	items = {
				-- 		{ name = "goldbar", count = 10 },
				-- 		{ name = "silverbar", count = 10 },
				-- 		{ name = "diamond", count = 2 },
				-- 	},
				-- 	time = 6500,
				-- },
				-- {
				-- 	result = { name = "pepega_chain", count = 1 },
				-- 	items = {
				-- 		{ name = "goldbar", count = 10 },
				-- 		{ name = "silverbar", count = 10 },
				-- 		{ name = "diamond", count = 4 },
				-- 	},
				-- 	time = 6500,
				-- },
				-- {
				-- 	result = { name = "ssf_chain", count = 1 },
				-- 	items = {
				-- 		{ name = "goldbar", count = 10 },
				-- 		{ name = "silverbar", count = 10 },
				-- 		{ name = "diamond", count = 2 },
				-- 		{ name = "amethyst", count = 2 },
				-- 	},
				-- 	time = 6500,
				-- },
				-- {
				-- 	result = { name = "lust_chain", count = 1 },
				-- 	items = {
				-- 		{ name = "goldbar", count = 10 },
				-- 		{ name = "silverbar", count = 10 },
				-- 		{ name = "diamond", count = 1 },
				-- 		{ name = "amethyst", count = 1 },
				-- 		{ name = "sapphire", count = 1 },
				-- 		{ name = "opal", count = 1 },
				-- 	},
				-- 	time = 6500,
				-- },
				{
					result = { name = "mint_mate_chain", count = 1 },
					items = {
						{ name = "goldbar", count = 10 },
						{ name = "silverbar", count = 20 },
						{ name = "emerald", count = 2 },
					},
					time = 6500,
				},
				{
					result = { name = "mint_mate_chain_2", count = 1 },
					items = {
						{ name = "goldbar", count = 10 },
						{ name = "silverbar", count = 20 },
						{ name = "emerald", count = 2 },
					},
					time = 6500,
				},
				{
					result = { name = "ssb_chain", count = 1 },
					items = {
						{ name = "goldbar", count = 10 },
						{ name = "silverbar", count = 20 },
						{ name = "amethyst", count = 2 },
						{ name = "diamond", count = 1 }, -- add diamond since amethysts are so much more common than emeralds
					},
					time = 6500,
				},
				-- {
				-- 	result = { name = "snow_chain", count = 1 },
				-- 	items = {
				-- 		{ name = "goldbar", count = 10 },
				-- 		{ name = "silverbar", count = 10 },
				-- 		{ name = "diamond", count = 1 },
				-- 		{ name = "opal", count = 2 },
				-- 	},
				-- 	time = 6500,
				-- },
			},
		},
	},
	Storage = {
		{
			id = "jewel-gem-storage-1",
			type = "box",
			coords = vector3(-698.615, -902.925, 19.525),
			length = 1.0,
			width = 1.0,
			options = {
				heading = 270.623,
				--debugPoly=true,
				minZ = 18.525,
				maxZ = 20.525,
			},
			data = {
				business = "jewel",
				inventory = {
					invType = 151,
					owner = "jewel-office-storage-1",
				},
			},
		},
		{
			id = "jewel-gem-storage-2",
			type = "box",
			coords = vector3(-707.823, -892.020, 19.525),
			length = 0.5,
			width = 3.0,
			options = {
				heading = 0.0,
				--debugPoly=true,
				minZ = 18.525,
				maxZ = 20.525,
			},
			data = {
				business = "jewel",
				inventory = {
					invType = 152,
					owner = "jewel-office-storage-2",
				},
			},
		},
		{
			id = "jewel-safe-1",
			type = "box",
			coords = vector3(-710.585, -898.925, 19.525),
			length = 4.0,
			width = 3.4,
			options = {
				heading = 180.876,
				--debugPoly=true,
				minZ = 18.525,
				maxZ = 20.525,
			},
			data = {
				business = "jewel",
				inventory = {
					invType = 150,
					owner = "jewel-safe-1",
				},
			},
		},
		{
			id = "jewel-storage-1",
			type = "box",
			coords = vector3(-698.491, -899.153, 23.806),
			length = 1.0,
			width = 1.0,
			options = {
				heading = 275.623,
				--debugPoly=true,
				minZ = 22.806,
				maxZ = 24.806,
			},
			data = {
				business = "jewel",
				inventory = {
					invType = 154,
					owner = "jewel-storage-1",
				},
			},
		},
		{
			id = "jewel-storage-2",
			type = "box",
			coords = vector3(-703.913, -893.902, 19.525),
			length = 5.0,
			width = 4.0,
			options = {
				heading = 0.0,
				--debugPoly=true,
				minZ = 18.525,
				maxZ = 20.525,
			},
			data = {
				business = "jewel",
				inventory = {
					invType = 153,
					owner = "jewel-storage-1",
				},
			},
		},
	},
	Pickups = {
		{
			id = "jewel-pickup-1",
			coords = vector3(-712.705, -895.634, 23.795),
			width = 1.0,
			length = 2.0,
			options = {
				heading = 90,
				--debugPoly=true,
				minZ = 22.795,
				maxZ = 24.795,
			},
			data = {
				business = "jewel",
				inventory = {
					invType = 25,
					owner = "jewel-pickup-1",
				},
			},
		},
		{
			id = "jewel-pickup-2",
			coords = vector3(-705.103, -895.943, 23.795),
			width = 1.0,
			length = 2.0,
			options = {
				heading = 270.0,
				--debugPoly=true,
				minZ = 22.795,
				maxZ = 24.795,
			},
			data = {
				business = "jewel",
				inventory = {
					invType = 155,
					owner = "jewel-pickup-2",
				},
			},
		},
	},
})
