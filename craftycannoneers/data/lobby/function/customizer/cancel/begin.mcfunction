scoreboard players set $mcancelcount CmdData 10
item replace entity @e[type=item_display,tag=CancelMatch,limit=1] container.0 with diamond_hoe[custom_model_data={floats:[58.0f]}]
data merge entity @e[type=interaction,tag=CancelMatch,limit=1] {width:0.5f,height:0.5f}
setblock -54 -24 9 crimson_wall_sign[facing=north]{front_text:{color:"light_gray",has_glowing_text:1b,messages:['{"text":""}','{"translate":"customizer.cancel.available_in","with":[{"text":"10"}]}','{"text":"","clickEvent":{"action":"run_command","value":"/trigger cancelMatch set 1"}}','{"text":""}']}}
schedule function lobby:customizer/cancel/counter 1s