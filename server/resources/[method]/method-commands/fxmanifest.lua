fx_version("cerulean")
games({ "gta5" })
lua54("yes")
client_script("@method-base/components/cl_error.lua")
client_script("@method-pwnzor/client/check.lua")

client_scripts({
	"client/*.lua",
})

server_scripts({
	"server/*.lua",
})
