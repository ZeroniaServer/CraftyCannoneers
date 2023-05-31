#> Set hp to auto if the previous game was autohp
execute if score $WasAuto CmdData matches 1 run scoreboard players set $ShipHP CmdData 42069
scoreboard players set $WasAuto CmdData 0

fill -54 -24 9 -55 -23 9 air
setblock -53 -24 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"red",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 6497"}}','{"text":""}','{"text":""}','{"text":"Restore Defaults","color":"#FF0003"}']}}
setblock -55 -24 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"green",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 5732"}}','{"text":""}','{"text":""}','{"text":"Confirm Settings","color":"#00FF38"}']}}
setblock -53 -22 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"orange",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 7853"}}','{"text":""}','{"text":"Game Time:","color":"#FFFB00"}','{"text":""}']}}
setblock -55 -22 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"pink",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 3384"}}','{"text":""}','{"text":"Ship Health:","color":"#F8005B"}','{"text":""}']}}
function lobby:customizer/updatesigns
scoreboard players reset $ForceCountdown CmdData
scoreboard players set $gamestate CmdData -1

tag @e[type=marker,tag=joinpad] add Locked
kill @e[type=item,predicate=game:inarena]

item replace entity @e[type=armor_stand,tag=TimeIcon] armor.head with diamond_hoe{CustomModelData:35}
item replace entity @e[type=armor_stand,tag=HPIcon] armor.head with diamond_hoe{CustomModelData:36}
item replace entity @e[type=armor_stand,tag=ConfirmIcon] armor.head with diamond_hoe{CustomModelData:37}
item replace entity @e[type=armor_stand,tag=DefaultsIcon] armor.head with diamond_hoe{CustomModelData:38}

item replace entity @e[type=glow_item_frame,tag=MapEntity,limit=1] container.0 with diamond_hoe{CustomModelData:76}

execute as @e[type=#game:chest,tag=chest] run data remove entity @s[type=!armor_stand] Items
execute as @e[type=#game:chest,tag=chest] run data merge entity @s[type=!armor_stand] {LootTable:"chests:empty"}