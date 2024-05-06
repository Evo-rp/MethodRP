addDoorsListToConfig({
	{
		id = "minty_customs_garage_1",
		model = 1175125573,
		coords = vector3(69.13, 6529.31, 33.75),
		locked = true,
		special = true,
		restricted = {
			{ type = "job", job = "minty_customs", gradeLevel = 0, reqDuty = false },
		},
		holdOpen = true,
	},
	{
		id = "minty_customs_garage_2",
		model = 907505789,
		coords = vector3(62.55, 6504.63, 33.73),
		locked = true,
		special = true,
		restricted = {
			{ type = "job", job = "minty_customs", gradeLevel = 0, reqDuty = false },
		},
		holdOpen = true,
	},
	{ -- Back Door
		model = 1828532533,
		coords = vector3(89.76, 6506.45, 31.26),
		locked = true,
		autoRate = 6.0,
		restricted = {
			{ type = "job", job = "minty_customs", gradeLevel = 0, reqDuty = false },
		},
	},
	{ -- Roof Access
		model = -1556245304,
		coords = vector3(88.95, 6510.98, 39.95),
		locked = true,
		autoRate = 6.0,
		restricted = {
			{ type = "job", job = "minty_customs", gradeLevel = 0, reqDuty = false },
		},
	},
	{ -- Staff Only
		model = 736326360,
		coords = vector3(88.4, 6515.23, 31.28),
		locked = true,
		autoRate = 6.0,
		restricted = {
			{ type = "job", job = "minty_customs", gradeLevel = 0, reqDuty = false },
		},
	},
	{
		model = -2069294348,
		coords = vector3(84.07, 6540.12, 33.86),
		locked = true,
		autoRate = 6.0,
		restricted = {
			{ type = "job", job = "minty_customs", gradeLevel = 0, reqDuty = false },
		},
	},

	{
		id = "minty_customs_double_1_right",
		double = "minty_customs_double_1_left",
		model = 287211999,
		coords = vector3(91.03, 6533.26, 34.98),
		locked = true,
		autoRate = 6.0,
		restricted = {
			{ type = "job", job = "minty_customs", gradeLevel = 0, reqDuty = false },
		},
	},
	{
		id = "minty_customs_double_1_left",
		double = "minty_customs_double_1_right",
		model = 287211999,
		coords = vector3(92.66, 6531.63, 34.98),
		locked = true,
		autoRate = 6.0,
		restricted = {
			{ type = "job", job = "minty_customs", gradeLevel = 0, reqDuty = false },
		},
	},

	{
		id = "minty_customs_double_2_right",
		double = "minty_customs_double_2_left",
		model = -992016381,
		coords = vector3(93.19, 6521.07, 34.97),
		locked = true,
		autoRate = 6.0,
		restricted = {
			{ type = "job", job = "minty_customs", gradeLevel = 0, reqDuty = false },
		},
	},
	{
		id = "minty_customs_double_2_left",
		double = "minty_customs_double_2_right",
		model = -992016381,
		coords = vector3(94.49, 6519.77, 34.97),
		locked = true,
		autoRate = 6.0,
		restricted = {
			{ type = "job", job = "minty_customs", gradeLevel = 0, reqDuty = false },
		},
	},

	{
		id = "minty_customs_paintbooth_1",
		model = -2016078271,
		coords = vector3(91.77, 6524.65, 33.67),
		locked = true,
		special = true,
		restricted = {
			{ type = "job", job = "minty_customs", gradeLevel = 0, reqDuty = false },
		},
		holdOpen = true,
	},
	{
		id = "minty_customs_paintbooth_2",
		model = -2016078271,
		coords = vector3(95.68, 6528.56, 33.67),
		special = true,
		restricted = {
			{ type = "job", job = "minty_customs", gradeLevel = 0, reqDuty = false },
		},
		holdOpen = true,
	},

	{
		id = "minty_customs_gate_1",
		model = 1543286598,
		coords = vector3(102.41, 6571.33, 30.31),
		locked = true,
		special = true,
		restricted = {
			{ type = "job", job = "minty_customs", gradeLevel = 0, reqDuty = false },
		},
	},
	{
		id = "minty_customs_gate_2",
		model = 1543286598,
		coords = vector3(18.51, 6541.46, 30.31),
		locked = true,
		special = true,
		restricted = {
			{ type = "job", job = "minty_customs", gradeLevel = 0, reqDuty = false },
		},
	},
})
