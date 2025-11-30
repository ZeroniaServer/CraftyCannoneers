#> Set hp to auto if the previous game was autohp
execute if score $WasAuto CmdData matches 1 run scoreboard players set $ShipHP CmdData 42069
scoreboard players set $WasAuto CmdData 0

fill -54 -24 9 -55 -23 9 air
fill -53 -22 9 -55 -24 9 air replace crimson_wall_sign
setblock -53 -24 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"red",messages:[{text:"",click_event:{action:"run_command",command:"/trigger modisigns set 6497"}},{text:""},{text:""},{translate:"customizer.restore_default",color:"#FF0003"}]}}
setblock -55 -24 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"green",messages:[{text:"",click_event:{action:"run_command",command:"/trigger modisigns set 5732"}},{text:""},{text:""},{translate:"customizer.confirm",color:"#00FF38"}]}}
setblock -54 -24 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"light_blue",messages:[{text:"",click_event:{action:"run_command",command:"/trigger modisigns set 9152"}},{text:""},{text:""},{translate:"customizer.modifiers",color:"#33ccff"}]}}
setblock -53 -22 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"orange",messages:[{text:"",click_event:{action:"run_command",command:"/trigger modisigns set 7853"}},{text:""},{translate:"customizer.game_time",color:"#FFFB00"},{text:""}]}}
setblock -54 -22 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"blue",messages:[{text:"",click_event:{action:"run_command",command:"/trigger modisigns set 2049"}},{text:""},{translate:"customizer.daytime",color:"blue"},{text:""}]}}
setblock -55 -22 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"pink",messages:[{text:"",click_event:{action:"run_command",command:"/trigger modisigns set 3384"}},{text:""},{translate:"customizer.ship_health",color:"#F8005B"},{text:""}]}}
function lobby:customizer/updatesigns
setblock -54 -23 9 light[level=14]
setblock -54 -21 9 light[level=13]

fill -55 -22 8 -53 -24 8 air
schedule function lobby:customizer/lightupdate 2t append

scoreboard players reset $ForceCountdown CmdData
scoreboard players set $gamestate CmdData -1

tag @e[type=marker,tag=joinpad] add Locked
kill @e[type=item,predicate=game:inarena]

item replace entity @e[type=item_display,tag=TimeIcon,limit=1] container.0 with diamond_hoe[custom_model_data={floats:[35.0f]}]
item replace entity @e[type=item_display,tag=HPIcon,limit=1] container.0 with diamond_hoe[custom_model_data={floats:[36.0f]}]
item replace entity @e[type=item_display,tag=ConfirmIcon,limit=1] container.0 with diamond_hoe[custom_model_data={floats:[37.0f]}]
item replace entity @e[type=item_display,tag=DefaultsIcon,limit=1] container.0 with diamond_hoe[custom_model_data={floats:[38.0f]}]
item replace entity @e[type=item_display,tag=ModiIcon,limit=1] container.0 with diamond_hoe[custom_model_data={floats:[83.0f]}]
execute if score $Daytime CmdData matches 0 run item replace entity @e[type=item_display,tag=DaytimeIcon,limit=1] container.0 with diamond_hoe[custom_model_data={floats:[120.0f]}]
execute if score $Daytime CmdData matches 1 run item replace entity @e[type=item_display,tag=DaytimeIcon,limit=1] container.0 with diamond_hoe[custom_model_data={floats:[121.0f]}]
execute if score $Daytime CmdData matches 2 run item replace entity @e[type=item_display,tag=DaytimeIcon,limit=1] container.0 with diamond_hoe[custom_model_data={floats:[122.0f]}]

item replace entity @e[type=item_display,tag=MapEntity,limit=1] container.0 with diamond_hoe[custom_model_data={floats:[76.0f]}]

execute as @e[type=interaction,tag=SettingsInteraction,tag=!ModiOn,tag=!CancelMatch] run data merge entity @s {width:0.5f,height:0.5f}

function lobby:customizer/cancel/disable

execute if score $mcancel CmdData matches 1 if entity @s[type=player] run tellraw @a {translate:"chat.canceled_match",color:"red",with:[{selector:"@s",color:"#ff8585",bold:true}]}
execute if score $mcancel CmdData matches 1 if entity @s[type=player] run tellraw @a ["\n",{translate:"%1$s",with:[{"nbt":"ResourcePack","storage":"craftycannoneers:messages","interpret":true},{translate:"ver1.1.10","fallback":"%1$s",with:[{"nbt":"OutdatedPack","storage":"craftycannoneers:messages","interpret":true},{"nbt":"SettingsMap","storage":"craftycannoneers:messages","interpret":true}]}]}]
execute if score $mcancel CmdData matches 1 run return 1

execute as @e[type=hopper_minecart,tag=chest] run data remove entity @s Items
execute as @e[type=hopper_minecart,tag=chest] run data merge entity @s {LootTable:"chests:empty"}

execute as @e[type=chest_minecart,tag=chest] run data remove entity @s Items
execute as @e[type=chest_minecart,tag=chest] run data merge entity @s {LootTable:"chests:empty"}