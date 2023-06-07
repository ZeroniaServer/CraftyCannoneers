#> Extract last death coordinates
tag @s add grave
execute store result score @s CmdData run data get storage craftycannoneers:death Pos[0]
execute store result entity @s Pos[0] double 1 run scoreboard players get @s CmdData
execute store result score @s CmdData run data get storage craftycannoneers:death Pos[2]
execute store result entity @s Pos[2] double 1 run scoreboard players get @s CmdData

#> Align to nearest floor for y-coordinate
execute store result score @s CmdData run data get storage craftycannoneers:death Pos[1]
## TODO decide if we want to use ocean floor or have stuff floating on the ocean somehow??
# execute at @s positioned over world_surface summon marker run function game:modifiers/graverobbery/floorcoord
execute at @s positioned over ocean_floor summon marker run function game:modifiers/graverobbery/floorcoord
scoreboard players operation @s CmdData < $y CmdData
execute store result entity @s Pos[1] double 1 run scoreboard players get @s CmdData

#> Summon grave chest
execute at @s run summon hopper_minecart ~ ~ ~ {Tags:["grave","chest","new"],LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,Passengers:[{id:"minecraft:marker",Tags:["gravedata","new"]}]}
ride @e[type=hopper_minecart,tag=grave,tag=new,limit=1] mount @s