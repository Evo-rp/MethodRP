fx_version("cerulean")
games({ "gta5" })
lua54("yes")
client_script("@method-base/components/cl_error.lua")
client_script("@method-pwnzor/client/check.lua")

loadscreen("ui/html/index.html")

loadscreen_manual_shutdown("yes")

files({
	"ui/html/*.*",
})
