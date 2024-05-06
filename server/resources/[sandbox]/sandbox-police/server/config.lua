Config = {
	Drugs = {
		weed = "Marijuana",
		oxy = "OxyContin",
	},
	CuffItems = {
		{ item = "pdhandcuffs", count = 1 },
		{ item = "handcuffs", count = 1 },
		{ item = "fluffyhandcuffs", count = 1 },
	},
	Armories = {
		{
			id = "mrpd-armory",
			name = "MRPD Armory",
			type = "box",
			coords = vector3(483.22, -995.18, 30.69),
			length = 1.4,
			width = 6.6,
			options = {
				heading = 0,
				--debugPoly = true,
				minZ = 29.69,
				maxZ = 32.49,
			},
			data = {
				inventory = {
					invType = 27,
					owner = "mrpd-armory",
				},
			},
		},
		{
			id = "sspd-armory",
			name = "Sandy PD Armory",
			type = "box",
			coords = vector3(1837.28, 3686.0, 34.19),
			length = 2.2,
			width = 4.0,
			options = {
				heading = 300,
				--debugPoly=true,
				minZ = 33.19,
				maxZ = 35.99,
			},
			data = {
				inventory = {
					invType = 27,
					owner = "sspd-armory",
				},
			},
		},
		{
			id = "pbpd-armory",
			name = "Paleto PD Armory",
			type = "box",
			coords = vector3(-447.36, 6016.42, 37.0),
			length = 2.4,
			width = 7.6,
			options = {
				heading = 45,
				--debugPoly=true,
				minZ = 35.4,
				maxZ = 38.6,
			},
			data = {
				inventory = {
					invType = 27,
					owner = "pbpd-armory",
				},
			},
		},
		{
			id = "dpd-armory",
			name = "Davis PD Armory",
			type = "box",
			coords = vector3(362.63, -1602.34, 25.45),
			length = 3.6,
			width = 5.6,
			options = {
				heading = 320,
				--debugPoly=true,
				minZ = 24.05,
				maxZ = 27.65,
			},
			data = {
				inventory = {
					invType = 27,
					owner = "dpd-armory",
				},
			},
		},
		{
			id = "lamesa-armory",
			name = "La Mesa PD Armory",
			type = "box",
			coords = vector3(836.31, -1286.94, 28.24),
			length = 3.6,
			width = 1.2,
			options = {
				heading = 0,
				--debugPoly=true,
				minZ = 27.24,
				maxZ = 29.84,
			},
			data = {
				inventory = {
					invType = 27,
					owner = "lamesa-armory",
				},
			},
		},
		{
			id = "prison-armory",
			name = "Prison Armory",
			type = "box",
			coords = vector3(1835.3, 2570.78, 46.01),
			length = 2.0,
			width = 1.2,
			options = {
				heading = 270,
				--debugPoly=true,
				minZ = 44.81,
				maxZ = 47.21,
			},
			data = {
				inventory = {
					invType = 37,
					owner = "prison-armory",
				},
			},
		},
	},
	PoliceCars = {
		[`polbike`] = true,
		[`polcamaro`] = true,
		[`polcharger`] = true,
		[`polexplorer`] = true,
		[`polgt4rs`] = true,
		[`polmustang`] = true,
		[`polram`] = true,
		[`poltahoe21`] = true,
		[`polvette`] = true,
		[`polvictoria`] = true,
		[`polraptor`] = true,
	},
	EMSCars = {
		[`emsambulance`] = true,
		[`emstahoe21`] = true,
	}
}
