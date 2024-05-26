_performanceUpgrades = {
	engine = 11,
	transmission = 13,
	brakes = 12,
	suspension = 15,
	turbo = 18,
}

--[[

Performance Parts

-1 is Stock
0 is Level 1
1 is Level 2
... You get the point

THE LOWEST LEVEL IS DEFAULT SO PUT THE STUFF BACK TO NORMAL

handling

Array of objects containing the changes
fieldType - Float, Vector, Int
multiplier - if true is a multiplier of the current value


Current Vehicle Class List

polbike [c] -> [a]
polcamaro [b] -> [s]
polcharger [c] -> [a]
polexplorer [c] -> [a]
polgt4rs [b] -> [s]
polmustang [b] -> [s]
polram [c] -> [a]
poltahoe21 [c] -> [a]
polvette [b] -> [s]
polvictoria [c] -> [a]
polraptor [c] -> [a]

]]

_pursuitModeConfig = {
	-- [`example`] = {
	--     {
	--         name = 'A',
	--         performance = {
	--             engine = -1,
	--             transmission = -1,
	--             brakes = -1,
	--             suspension = -1,
	--             turbo = false,
	--         },
	--         handling = false, -- Reset
	--     },
	--     {
	--         name = 'A+',
	--         performance = {
	--             engine = -1,
	--             transmission = -1,
	--             brakes = -1,
	--             suspension = -1,
	--             turbo = true,
	--         },
	--         handling = {
	--             {
	--                 field = 'fInitialDriveForce',
	--                 fieldType = 'Float',
	--                 multiplier = false,
	--                 value = 10.0,
	--             },
	--         }
	--     },
	--     {
	--         name = 'S',
	--     },
	--     {
	--         name = 'S+',
	--     }
	-- }

	[`polcamaro`] = {
		{
			name = "D",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 2,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 110.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.17,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.4,
				},
			},
		},
		{
			name = "B",
			performance = {
				engine = -1,
				transmission = -1,
				brakes = -1,
				suspension = -1,
				turbo = false,
			},
			handling = false, -- Reset
			topSpeed = 140.0,
		},
		{
			name = "A",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 3,
				suspension = 0,
				turbo = true,
			},
			topSpeed = 160.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.265,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.4,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 2.1,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 0.8,
				},
			},
		},
		{
			name = "S",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 3,
				suspension = 2,
				turbo = true,
			},
			topSpeed = 170.0,
			handling = {
				{
					field = "nInitialDriveGears",
					fieldType = "Int",
					multiplier = false,
					value = 7,
				},
				{
					field = "fClutchChangeRateScaleUpShift",
					fieldType = "Float",
					multiplier = false,
					value = 4.0,
				},
				{
					field = "fClutchChangeRateScaleDownShift",
					fieldType = "Float",
					multiplier = false,
					value = 3.8,
				},
				{
					field = "fInitialDragCoeff",
					fieldType = "Float",
					multiplier = true,
					value = 2.0,
				},
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.325,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.4,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
			},
		},
	},
	[`polcharger`] = {
		{
			name = "D",
			performance = {
				engine = -1,
				transmission = -1,
				brakes = 3,
				suspension = 0,
				turbo = false,
			},
			handling = false, -- Reset
			topSpeed = 120.0,
		},
		{
			name = "C",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 3,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 130.0,
			handling = {
				field = "fInitialDriveForce",
				fieldType = "Float",
				multiplier = false,
				value = 0.20,
			},
		},
		{
			name = "B",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 3,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 150.0,
			handling = {
				field = "fInitialDriveForce",
				fieldType = "Float",
				multiplier = false,
				value = 0.255,
			},
		},
		{
			name = "A",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 3,
				suspension = 0,
				turbo = true,
			},
			topSpeed = 160.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.295,
				},
			},
		},
		{
			name = "S",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 3,
				suspension = 2,
				turbo = true,
			},
			topSpeed = 170.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.375,
				},
			},
		},
	},
	[`polexplorer`] = {
		{
			name = "D",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 2,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 110.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.17,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.4,
				},
			},
		},
		{
			name = "C",
			performance = {
				engine = -1,
				transmission = -1,
				brakes = -1,
				suspension = -1,
				turbo = false,
			},
			handling = false, -- Reset
			topSpeed = 125.0,
		},
		{
			name = "B",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 2,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 145.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.22,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.2,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 1.9,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 0.8,
				},
			},
		},
		{
			name = "A",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 3,
				suspension = 0,
				turbo = true,
			},
			topSpeed = 155.0,
			handling = {
				{
					field = "fInitialDragCoeff",
					fieldType = "Float",
					multiplier = true,
					value = 3.0,
				},
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.265,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.4,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 2.1,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 0.8,
				},
			},
		},
		-- {
		-- 	name = "S",
		-- 	performance = {
		-- 		engine = 4,
		-- 		transmission = 4,
		-- 		brakes = 3,
		-- 		suspension = 1,
		-- 		turbo = true,
		-- 	},
		-- 	handling = {
		-- 		{
		-- 			field = "fInitialDriveForce",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 0.32,
		-- 		},
		-- 		{
		-- 			field = "fInitialDriveMaxFlatVel",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 180.0000,
		-- 		},
		-- 		{
		-- 			field = "fBrakeForce",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 1.4,
		-- 		},
		-- 		{
		-- 			field = "fSuspensionReboundDamp",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 1.0,
		-- 		},
		-- 	},
		-- },
	},
	[`polgt4rs`] = {
		{
			name = "D",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 2,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 110.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.17,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.4,
				},
			},
		},
		{
			name = "B",
			performance = {
				engine = -1,
				transmission = -1,
				brakes = -1,
				suspension = -1,
				turbo = false,
			},
			handling = false, -- Reset
			topSpeed = 150.0,
		},
		{
			name = "A",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 3,
				suspension = 0,
				turbo = true,
			},
			topSpeed = 160.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.275,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.4,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 2.1,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 0.8,
				},
			},
		},
		{
			name = "S",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 3,
				suspension = 2,
				turbo = true,
			},
			topSpeed = 170.0,
			handling = {
				{
					field = "nInitialDriveGears",
					fieldType = "Int",
					multiplier = false,
					value = 7,
				},
				{
					field = "fClutchChangeRateScaleUpShift",
					fieldType = "Float",
					multiplier = false,
					value = 4.0,
				},
				{
					field = "fClutchChangeRateScaleDownShift",
					fieldType = "Float",
					multiplier = false,
					value = 3.8,
				},
				{
					field = "fInitialDragCoeff",
					fieldType = "Float",
					multiplier = true,
					value = 2.0,
				},
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.375,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.4,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
			},
		},
	},
	[`polmustang`] = {
		{
			name = "D",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 2,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 110.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.17,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.4,
				},
			},
		},
		{
			name = "B",
			performance = {
				engine = -1,
				transmission = -1,
				brakes = -1,
				suspension = -1,
				turbo = false,
			},
			handling = false, -- Reset
			topSpeed = 150.0,
		},
		{
			name = "A",
			performance = {
				engine = 2,
				transmission = 2,
				brakes = 2,
				suspension = 0,
				turbo = true,
			},
			topSpeed = 160.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.265,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.4,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 2.1,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 0.8,
				},
			},
		},
		{
			name = "S",
			performance = {
				engine = 4,
				transmission = 4,
				brakes = 3,
				suspension = 2,
				turbo = true,
			},
			topSpeed = 170.0,
			handling = {
				{
					field = "nInitialDriveGears",
					fieldType = "Int",
					multiplier = false,
					value = 7,
				},
				{
					field = "fClutchChangeRateScaleUpShift",
					fieldType = "Float",
					multiplier = false,
					value = 4.0,
				},
				{
					field = "fClutchChangeRateScaleDownShift",
					fieldType = "Float",
					multiplier = false,
					value = 3.8,
				},
				{
					field = "fInitialDragCoeff",
					fieldType = "Float",
					multiplier = true,
					value = 2.0,
				},
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.375,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.4,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
			},
		},
	},
	[`polram`] = {
		{
			name = "D",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 2,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 110.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.17,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.4,
				},
			},
		},
		{
			name = "C",
			performance = {
				engine = -1,
				transmission = -1,
				brakes = -1,
				suspension = -1,
				turbo = false,
			},
			handling = false, -- Reset
			topSpeed = 125.0,
		},
		{
			name = "B",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 2,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 145.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.225,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.2,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 1.9,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 0.8,
				},
			},
		},
		{
			name = "A",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 3,
				suspension = 0,
				turbo = true,
			},
			topSpeed = 155.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.265,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.4,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 2.1,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 0.8,
				},
			},
		},
		-- {
		-- 	name = "S",
		-- 	performance = {
		-- 		engine = 4,
		-- 		transmission = 4,
		-- 		brakes = 3,
		-- 		suspension = 1,
		-- 		turbo = true,
		-- 	},
		-- 	handling = {
		-- 		{
		-- 			field = "fInitialDriveForce",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 0.32,
		-- 		},
		-- 		{
		-- 			field = "fInitialDriveMaxFlatVel",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 180.0000,
		-- 		},
		-- 		{
		-- 			field = "fBrakeForce",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 1.4,
		-- 		},
		-- 		{
		-- 			field = "fSuspensionReboundDamp",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 1.0,
		-- 		},
		-- 	},
		-- },
	},
	[`poltahoe21`] = {
		{
			name = "D",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 2,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 110.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.17,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.4,
				},
			},
		},
		{
			name = "C",
			performance = {
				engine = -1,
				transmission = -1,
				brakes = -1,
				suspension = -1,
				turbo = false,
			},
			handling = false, -- Reset
		},
		{
			name = "B",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 1,
				suspension = 0,
				turbo = false,
			},
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.23,
				},
				{
					field = "fInitialDriveMaxFlatVel",
					fieldType = "Float",
					multiplier = false,
					value = 170.0000,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.2,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 1.9,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 0.8,
				},
			},
		},
		{
			name = "A",
			performance = {
				engine = 4,
				transmission = 4,
				brakes = 2,
				suspension = 0,
				turbo = true,
			},
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.245,
				},
				{
					field = "fInitialDriveMaxFlatVel",
					fieldType = "Float",
					multiplier = false,
					value = 175.0000,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.4,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 2.1,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 0.8,
				},
			},
		},
		-- {
		-- 	name = "S",
		-- 	performance = {
		-- 		engine = 4,
		-- 		transmission = 4,
		-- 		brakes = 3,
		-- 		suspension = 1,
		-- 		turbo = true,
		-- 	},
		-- 	handling = {
		-- 		{
		-- 			field = "fInitialDriveForce",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 0.32,
		-- 		},
		-- 		{
		-- 			field = "fInitialDriveMaxFlatVel",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 180.0000,
		-- 		},
		-- 		{
		-- 			field = "fBrakeForce",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 1.4,
		-- 		},
		-- 		{
		-- 			field = "fSuspensionReboundDamp",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 1.0,
		-- 		},
		-- 	},
		-- },
	},
	[`polvette`] = {
		{
			name = "D",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 2,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 110.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.17,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.4,
				},
			},
		},
		{
			name = "B",
			performance = {
				engine = -1,
				transmission = -1,
				brakes = -1,
				suspension = -1,
				turbo = false,
			},
			handling = false, -- Reset
			topSpeed = 150.0,
		},
		{
			name = "A",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 3,
				suspension = 0,
				turbo = true,
			},
			topSpeed = 160.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.275,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.25,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.4,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 2.1,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
			},
		},
		{
			name = "S",
			performance = {
				engine = 4,
				transmission = 4,
				brakes = 4,
				suspension = 2,
				turbo = true,
			},
			topSpeed = 170.0,
			handling = {
				{
					field = "nInitialDriveGears",
					fieldType = "Int",
					multiplier = false,
					value = 7,
				},
				{
					field = "fClutchChangeRateScaleUpShift",
					fieldType = "Float",
					multiplier = false,
					value = 4.0,
				},
				{
					field = "fClutchChangeRateScaleDownShift",
					fieldType = "Float",
					multiplier = false,
					value = 3.8,
				},
				{
					field = "fInitialDragCoeff",
					fieldType = "Float",
					multiplier = true,
					value = 2.0,
				},
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.375,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 2.4,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 1.2,
				},
			},
		},
	},
	[`polvictoria`] = {
		{
			name = "D",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 2,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 110.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.17,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.4,
				},
			},
		},
		{
			name = "C",
			performance = {
				engine = -1,
				transmission = -1,
				brakes = -1,
				suspension = -1,
				turbo = false,
			},
			handling = false, -- Reset
			topSpeed = 125.0,
		},
		{
			name = "B",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 2,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 135.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.22,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.2,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 1.9,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 0.8,
				},
			},
		},
		{
			name = "A",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 3,
				suspension = 0,
				turbo = true,
			},
			topSpeed = 155.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.260,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.4,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 2.1,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 0.8,
				},
			},
		},
		-- {
		-- 	name = "S",
		-- 	performance = {
		-- 		engine = 4,
		-- 		transmission = 4,
		-- 		brakes = 3,
		-- 		suspension = 1,
		-- 		turbo = true,
		-- 	},
		-- 	handling = {
		-- 		{
		-- 			field = "fInitialDriveForce",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 0.32,
		-- 		},
		-- 		{
		-- 			field = "fInitialDriveMaxFlatVel",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 180.0000,
		-- 		},
		-- 		{
		-- 			field = "fBrakeForce",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 1.4,
		-- 		},
		-- 		{
		-- 			field = "fSuspensionReboundDamp",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 1.0,
		-- 		},
		-- 	},
		-- },
	},
	[`polraptor`] = {
		{
			name = "D",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 2,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 110.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.17,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.4,
				},
			},
		},
		{
			name = "C",
			performance = {
				engine = -1,
				transmission = -1,
				brakes = -1,
				suspension = -1,
				turbo = false,
			},
			handling = false, -- Reset
		},
		{
			name = "B",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 1,
				suspension = 0,
				turbo = false,
			},
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.23,
				},
				{
					field = "fInitialDriveMaxFlatVel",
					fieldType = "Float",
					multiplier = false,
					value = 170.0000,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.2,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 1.9,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 0.8,
				},
			},
		},
		{
			name = "A",
			performance = {
				engine = 2,
				transmission = 2,
				brakes = 2,
				suspension = 0,
				turbo = true,
			},
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.275,
				},
				{
					field = "fInitialDriveMaxFlatVel",
					fieldType = "Float",
					multiplier = false,
					value = 175.0000,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.4,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 2.1,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 0.8,
				},
			},
		},
		-- {
		-- 	name = "S",
		-- 	performance = {
		-- 		engine = 4,
		-- 		transmission = 4,
		-- 		brakes = 3,
		-- 		suspension = 1,
		-- 		turbo = true,
		-- 	},
		-- 	handling = {
		-- 		{
		-- 			field = "fInitialDriveForce",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 0.32,
		-- 		},
		-- 		{
		-- 			field = "fInitialDriveMaxFlatVel",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 180.0000,
		-- 		},
		-- 		{
		-- 			field = "fBrakeForce",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 1.4,
		-- 		},
		-- 		{
		-- 			field = "fSuspensionReboundDamp",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 1.0,
		-- 		},
		-- 	},
		-- },
	},
	[`polbike`] = {
		{
			name = "D",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 2,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 110.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.17,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.4,
				},
			},
		},
		{
			name = "C",
			performance = {
				engine = -1,
				transmission = -1,
				brakes = -1,
				suspension = -1,
				turbo = false,
			},
			handling = false, -- Reset
			topSpeed = 130.0,
		},
		{
			name = "B",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 1,
				suspension = 0,
				turbo = false,
			},
			topSpeed = 140.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.26,
				},
				{
					field = "fBrakeForce",
					fieldType = "Float",
					multiplier = false,
					value = 1.0,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.2,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 1.9,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 0.8,
				},
			},
		},
		{
			name = "A",
			performance = {
				engine = 3,
				transmission = 3,
				brakes = 3,
				suspension = 0,
				turbo = true,
			},
			topSpeed = 150.0,
			handling = {
				{
					field = "fInitialDriveForce",
					fieldType = "Float",
					multiplier = false,
					value = 0.305,
				},
				{
					field = "fTractionCurveMax",
					fieldType = "Float",
					multiplier = false,
					value = 2.4,
				},
				{
					field = "fTractionCurveMin",
					fieldType = "Float",
					multiplier = false,
					value = 2.1,
				},
				{
					field = "fSuspensionReboundDamp",
					fieldType = "Float",
					multiplier = false,
					value = 0.8,
				},
			},
		},
		-- {
		-- 	name = "S",
		-- 	performance = {
		-- 		engine = 4,
		-- 		transmission = 4,
		-- 		brakes = 3,
		-- 		suspension = 1,
		-- 		turbo = true,
		-- 	},
		-- 	handling = {
		-- 		{
		-- 			field = "fInitialDriveForce",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 0.32,
		-- 		},
		-- 		{
		-- 			field = "fInitialDriveMaxFlatVel",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 180.0000,
		-- 		},
		-- 		{
		-- 			field = "fBrakeForce",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 1.4,
		-- 		},
		-- 		{
		-- 			field = "fSuspensionReboundDamp",
		-- 			fieldType = "Float",
		-- 			multiplier = false,
		-- 			value = 1.0,
		-- 		},
		-- 	},
		-- },
	},
}
