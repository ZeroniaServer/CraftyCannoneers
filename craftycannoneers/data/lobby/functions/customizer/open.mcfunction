#> Set hp to auto if the previous game was autohp
execute if score $WasAuto CmdData matches 1 run scoreboard players set $ShipHP CmdData 42069
scoreboard players set $WasAuto CmdData 0

fill -54 -24 9 -55 -23 9 air
fill -53 -22 9 -55 -24 9 air replace crimson_wall_sign
setblock -53 -24 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"red",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 6497"}}','{"text":""}','{"text":""}','{"translate":"customizer.restore_default","color":"#FF0003"}']}}
setblock -55 -24 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"green",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 5732"}}','{"text":""}','{"text":""}','{"translate":"customizer.confirm","color":"#00FF38"}']}}
setblock -54 -24 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"light_blue",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 9152"}}','{"text":""}','{"text":""}','{"translate":"customizer.modifiers","color":"#33ccff"}']}}
setblock -53 -22 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"orange",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 7853"}}','{"text":""}','{"translate":"customizer.game_time","color":"#FFFB00"}','{"text":""}']}}
setblock -54 -22 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"blue",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 2049"}}','{"text":""}','{"translate":"customizer.daytime","color":"blue"}','{"text":""}']}}
setblock -55 -22 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"pink",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 3384"}}','{"text":""}','{"translate":"customizer.ship_health","color":"#F8005B"}','{"text":""}']}}
function lobby:customizer/updatesigns
scoreboard players reset $ForceCountdown CmdData
scoreboard players set $gamestate CmdData -1

tag @e[type=marker,tag=joinpad] add Locked
kill @e[type=item,predicate=game:inarena]

item replace entity @e[type=armor_stand,tag=TimeIcon,limit=1] armor.head with diamond_hoe{CustomModelData:35}
item replace entity @e[type=armor_stand,tag=HPIcon,limit=1] armor.head with diamond_hoe{CustomModelData:36}
item replace entity @e[type=armor_stand,tag=ConfirmIcon,limit=1] armor.head with diamond_hoe{CustomModelData:37}
item replace entity @e[type=armor_stand,tag=DefaultsIcon,limit=1] armor.head with diamond_hoe{CustomModelData:38}
item replace entity @e[type=armor_stand,tag=ModiIcon,limit=1] armor.head with diamond_hoe{CustomModelData:83}

item replace entity @e[type=glow_item_frame,tag=MapEntity,limit=1] container.0 with diamond_hoe{CustomModelData:76}

execute as @e[type=hopper_minecart,tag=chest] run data remove entity @s Items
execute as @e[type=hopper_minecart,tag=chest] run data merge entity @s {LootTable:"chests:empty"}

execute as @e[type=chest_minecart,tag=chest] run data remove entity @s Items
execute as @e[type=chest_minecart,tag=chest] run data merge entity @s {LootTable:"chests:empty"}