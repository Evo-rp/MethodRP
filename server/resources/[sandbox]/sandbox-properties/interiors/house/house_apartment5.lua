PropertyInteriors = PropertyInteriors or {}

PropertyInteriors["house_apartment5"] = {
	type = "house",
	price = 280000,
	info = {
		name = "Small Luxury",
		description = "Description",
	},
	locations = {
		front = {
			coords = vector3(300.231, 112.036, 109.630),
			heading = 341.878,
			polyzone = {
				center = vector3(300.231, 112.036, 109.630),
				length = 0.6,
				width = 2.0,
				options = {
					heading = 340,
					--debugPoly=true,
					minZ = 108.63,
					maxZ = 111.23,
				},
			},
		},
	},
	zone = {
		center = vector3(305.76, 122.12, 109.63),
		length = 23.0,
		width = 20.0,
		options = {
			heading = 340,
			--debugPoly=true,
			minZ = 107.63,
			maxZ = 113.83,
		},
	},
	defaultFurniture = {
		{
			id = 1,
			name = "Default Storage",
			model = "v_res_tre_storagebox",
			coords = { x = 296.348, y = 114.082, z = 108.62986755371094 },
			heading = 158.5992889404297,
			data = {},
		},
	},
	cameras = {
		{
			name = "Large Living Area",
			coords = vec3(299.520, 129.031, 109.733),
			rotation = vec3(-0.000, -0.000, -155.636),
		},
		{
			name = "Bedroom #1",
			coords = vec3(316.626, 124.941, 109.733),
			rotation = vec3(-0.000, -0.000, 109.438),
		},
		{
			name = "Closet",
			coords = vec3(312.981, 114.889, 109.733),
			rotation = vec3(-0.000, -0.000, 67.040),
		},
		{
			name = "Bathroom",
			coords = vec3(310.659, 108.600, 109.733),
			rotation = vec3(-0.000, -0.000, 42.433),
		},
	},
}
