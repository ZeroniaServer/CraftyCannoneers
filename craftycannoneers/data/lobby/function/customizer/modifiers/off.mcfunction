item replace entity @e[type=item_display,tag=ModifierIcons] container.0 with air
fill -53 -24 9 -55 -22 9 air

item replace entity @e[type=item_display,tag=MapEntity,limit=1] container.0 with diamond_hoe[custom_model_data=76]

item replace entity @e[type=item_display,tag=TimeIcon,limit=1] container.0 with diamond_hoe[custom_model_data=35]
item replace entity @e[type=item_display,tag=HPIcon,limit=1] container.0 with diamond_hoe[custom_model_data=36]
item replace entity @e[type=item_display,tag=ConfirmIcon,limit=1] container.0 with diamond_hoe[custom_model_data=37]
item replace entity @e[type=item_display,tag=DefaultsIcon,limit=1] container.0 with diamond_hoe[custom_model_data=38]
item replace entity @e[type=item_display,tag=ModiIcon,limit=1] container.0 with diamond_hoe[custom_model_data=83]

fill -54 -24 9 -55 -23 9 air
setblock -53 -24 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"red",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 6497"}}','{"text":""}','{"text":""}','{"translate":"customizer.restore_default","color":"#FF0003"}']}}
setblock -55 -24 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"green",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 5732"}}','{"text":""}','{"text":""}','{"translate":"customizer.confirm","color":"#00FF38"}']}}
setblock -54 -24 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"light_blue",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 9152"}}','{"text":""}','{"text":""}','{"translate":"customizer.modifiers","color":"#33ccff"}']}}
setblock -53 -22 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"orange",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 7853"}}','{"text":""}','{"translate":"customizer.game_time","color":"#FFFB00"}','{"text":""}']}}
setblock -54 -22 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"blue",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 2049"}}','{"text":""}','{"translate":"customizer.daytime","color":"blue"}','{"text":""}']}}
setblock -55 -22 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"pink",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 3384"}}','{"text":""}','{"translate":"customizer.ship_health","color":"#F8005B"}','{"text":""}']}}
scoreboard players set $ModiMapActive CmdData 0

execute as @e[type=interaction,tag=ModiOn] run data merge entity @s {width:0f,height:0f}
execute as @e[type=interaction,tag=ModiOff] run data merge entity @s {width:0.5f,height:0.5f}

function lobby:customizer/updatesigns

fill -55 -22 8 -53 -24 8 air
schedule function lobby:customizer/lightupdate 1t append

setblock -54 -23 9 light[level=14]