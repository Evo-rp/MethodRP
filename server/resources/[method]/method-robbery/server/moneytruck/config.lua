BCT_SERVER_START_WAIT = 0--1000 * 60 * math.random(60, 90)
BCT_REQUIRED_POLICE = 0--4

BCT_SPAWN_RATE = 1000 * 60 * 60 * 2

_moneyTruckLoot = {
	fleeca = {
		{ 60, { name = "moneyroll", min = 160, max = 210 } },
		{ 25, { name = "moneyband", min = 16, max = 21 } },
		{ 15, { name = "moneybag", min = 1, max = 3 } },
	},
	bobcat = {
		{ 60, { name = "moneyroll", min = 190, max = 230 } },
		{ 25, { name = "moneyband", min = 19, max = 23 } },
		{ 15, { name = "moneybag", min = 1, max = 3 } },
	},
}

_spawnHoldingShit = {
	vector4(855.208, -2306.472, 30.346, 175.001),
	vector4(981.240, -2508.671, 28.302, 353.925),
	vector4(690.640, -2287.796, 28.089, 355.932),
	vector4(733.442, -1907.685, 29.292, 174.127),
	vector4(837.710, -1990.537, 29.301, 81.766),
	vector4(909.788, -1519.038, 30.590, 267.368),
	vector4(222.403, 1255.156, 225.460, 12.525),
	vector4(-61.567, 1960.274, 190.186, 296.237),
	vector4(810.427, 2154.283, 52.278, 155.035),
	vector4(1225.317, 2745.066, 38.006, 86.496),
	vector4(2003.305, 3039.629, 47.215, 327.551),
	vector4(2659.275, 3277.859, 55.241, 310.082),
	vector4(1643.865, 4838.119, 42.028, 5.168),
	vector4(1977.816, 5170.238, 47.639, 311.102),
	vector4(-664.951, 5820.383, 17.331, 246.640),
	vector4(-316.341, 6313.394, 32.287, 227.753),
	vector4(67.027, 6306.323, 31.239, 297.784),
	vector4(427.864, 6469.139, 28.785, 227.899),
	vector4(1870.702, 6408.105, 46.566, 292.889),
	vector4(1428.166, 6348.081, 23.985, 67.333),
	vector4(2890.848, 4381.497, 50.337, 110.257),
	vector4(590.198, 608.871, 128.911, 115.103),
	vector4(1037.606, -129.035, 74.189, 54.630),
	vector4(-20.035, -224.632, 46.176, 340.416),
	vector4(39.552, -381.556, 39.921, 70.484),
	vector4(231.276, -8.360, 73.615, 247.305),
	vector4(454.992, 212.942, 103.101, 248.137),
	vector4(713.750, 250.600, 93.125, 239.612),
	vector4(848.769, 511.266, 125.919, 159.235),
	vector4(1221.754, 365.209, 81.991, 330.920),
	vector4(580.384, 130.427, 98.041, 342.991),
	vector4(180.276, 305.306, 105.374, 91.564),
	vector4(1278.336, 1924.527, 82.058, 37.980),
	vector4(837.738, 2130.094, 52.298, 168.306),
	vector4(738.472, 2533.734, 73.164, 93.708),
	vector4(576.480, 2798.457, 42.103, 100.108),
	vector4(1728.332, 3318.403, 41.223, 18.286),
	vector4(2356.620, 4893.210, 42.064, 223.946),
	vector4(1378.120, 4308.063, 37.136, 303.243),
	vector4(344.629, 3389.860, 36.416, 110.597),
	vector4(1913.799, 3900.549, 32.607, 52.463),
	vector4(2466.083, 4105.216, 38.065, 155.136),
}
_moneyTruckSpawns = {}
