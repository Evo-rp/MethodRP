AddEventHandler("Proxy:Shared:RegisterReady", function()
	exports["method-base"]:RegisterComponent("Pwnzor", PWNZOR)
end)

PWNZOR = PWNZOR or {}
