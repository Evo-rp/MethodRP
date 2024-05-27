fx_version("cerulean")
games({ "gta5" })
lua54("yes")

client_script("@method-base/components/cl_error.lua")
client_script("@method-pwnzor/client/check.lua")
server_script("@oxmysql/lib/MySQL.lua")

shared_scripts({
	"shared/**/*.lua",
})

client_scripts({
	"@method-damage/shared/weapons.lua",
	"client/**/*.lua",
})

server_scripts({
	"server/**/*.lua",
})
