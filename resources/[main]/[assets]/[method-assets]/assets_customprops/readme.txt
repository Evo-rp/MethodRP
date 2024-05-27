Cfx forum:			 https://forum.cfx.re/u/bzzzi/summary
Tebex:				 https://bzzz.tebex.io/
Discord:			 https://discord.gg/PpAHBCMW97

If you stream props in another resource, you must edit the fxmanifest.
Add this line:
data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_prop_cake_birthday_001.ytyp'

If you stream props in another resource, you must edit the fxmanifest.
Add this line:
data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_prop_shop_items.ytyp'

Then the server must be restarted. 
YTYP loads properties of props.
--------------------------------------------------


Code for animation:

["birthday-cake"] = {"anim@heists@box_carry@", "idle", "Birthday cake", AnimationOptions =
   {
       Prop = "bzzz_prop_cake_birthday_001",
       PropBone = 18905,
       PropPlacement = {0.33, 0.09, 0.2, -128.0, -245.0, 2.0},
       EmoteLoop = true,
       EmoteMoving = true,
   }},