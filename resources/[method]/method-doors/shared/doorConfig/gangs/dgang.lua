addDoorsListToConfig({
	{
		id = "block_gate",
		model = -1603817716,
		coords = vector3(-667.23, -889.66, 23.49),
		locked = true,
		special = true,
		--autoRate = 6.0,
		restricted = {
			{ type = "job", job = "dgang", gradeLevel = 0, reqDuty = false },
		},
	},

	{
		id = "block_garage",
		model = 245838764,
		coords = vector3(-675.33, -878.72, 25.24),
		locked = true,
		special = true,
		--autoRate = 6.0,
		restricted = {
			{ type = "job", job = "dgang", gradeLevel = 0, reqDuty = false },
		},
	},
})
