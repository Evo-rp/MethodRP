fx_version("cerulean")
games({ "gta5" })
lua54("yes")
client_script("@method-base/components/cl_error.lua")
client_script("@method-pwnzor/client/check.lua")

client_scripts({
	'@method-polyzone/client.lua',
	'@method-polyzone/BoxZone.lua',
	'@method-polyzone/EntityZone.lua',
	"shared/**/*.lua",
	"client/**/*.lua",
})

server_scripts({
	"shared/**/*.lua",
	"server/**/*.lua",
})
