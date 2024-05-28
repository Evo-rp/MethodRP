COMPONENTS.Config = {
	Discord = {
		Server = "",
	},
	Groups = {
		owner = {
			Id = "owner",
			Name = "Server Owner",
			Abv = "Owner",
			Queue = {
				Priority = 1000,
			},
			Permission = {
				Group = "admin", 
				Level = 100,
			},
		},
		management = {
			Id = "management",
			Name = "Management",
			Abv = "Management",
			Queue = {
				Priority = 500,
			},
			Permission = {
				Group = "admin", 
				Level = 100,
			},
		},
		dev = {
			Id = "dev",
			Name = "Developer",
			Abv = "Dev",
			Queue = {
				Priority = 250,
			},
			Permission = {
				Group = "admin",
				Level = 100,
			},
		},
		admin = {
			Id = "admin",
			Name = "Administrator",
			Abv = "Admin",
			Queue = {
				Priority = 100,
			},
			Permission = {
				Group = "staff",
				Level = 50,
			},
		},
		operations = {
			Id = "moderator",
			Name = "Staff Member",
			Abv = "Staff",
			Queue = {
				Priority = 50,
			},
			Permission = {
				Group = "",
				Level = 0,
			},
		},
		whitelisted = {
			Id = "whitelisted",
			Name = "Whitelisted",
			Abv = "Whitelisted",
			Queue = {
				Priority = 0,
			},
			Permission = {
				Group = "",
				Level = 0,
			},
		},
	},
	Server = {
		ID = os.time(),
		Name = "Server Name",
		Access = GetConvar("sv_access_role", 0),
	},
}
