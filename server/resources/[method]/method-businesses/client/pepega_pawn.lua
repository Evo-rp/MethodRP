local _sellers = {
	{
		coords = vector3(1181.426, -3113.926, 5.028),
		heading = 93.908,
		model = `S_M_M_DockWork_01`,
	},
}

AddEventHandler("Businesses:Client:Startup", function()
	for k, v in ipairs(_sellers) do
		PedInteraction:Add(string.format("PepegaPawn%s", k), v.model, v.coords, v.heading, 25.0, {
			{
				icon = "ring",
				text = "Sell Pawn Goods",
				event = "PepegaPawn:Client:Sell",
				jobPerms = {
					{
						job = "pepega_pawn",
					},
				},
			},
		}, "sack-dollar")
	end
end)

AddEventHandler("PepegaPawn:Client:Sell", function(e, data)
	Callbacks:ServerCallback("PepegaPawn:Sell", {})
end)
