#> Extract last death coordinates
execute store result score @s CmdData run data get storage craftycannoneers:death Pos[0]
execute store result entity @s Pos[0] double 1 run scoreboard players get @s CmdData
execute store result score @s CmdData run data get storage craftycannoneers:death Pos[1]
execute store result entity @s Pos[1] double 1 run scoreboard players get @s CmdData
execute store result score @s CmdData run data get storage craftycannoneers:death Pos[2]
execute store result entity @s Pos[2] double 1 run scoreboard players get @s CmdData

#> Summon grave chest
execute at @s run summon hopper_minecart ~ ~ ~ {Tags:["grave","chest","GraveEntity","new"],LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,Passengers:[{id:"minecraft:marker",Tags:["gravedata","GraveEntity","new"]}]}

kill