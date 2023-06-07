#> Extract last death coordinates
tag @s add grave
execute store result score @s CmdData run data get storage craftycannoneers:death Pos[0]
execute store result entity @s Pos[0] double 1 run scoreboard players get @s CmdData
execute store result score @s CmdData run data get storage craftycannoneers:death Pos[2]
execute store result entity @s Pos[2] double 1 run scoreboard players get @s CmdData

#> Align to world surface (lowest block) for y-coordinate
execute store result score @s CmdData run data get storage craftycannoneers:death Pos[1]
execute at @s positioned over world_surface summon marker run function game:modifiers/graverobbery/floorcoord
scoreboard players operation @s CmdData < $y CmdData
execute store result entity @s Pos[1] double 1 run scoreboard players get @s CmdData

#> Summon grave chest
execute at @s run summon hopper_minecart ~ ~ ~ {Tags:["grave","chest","new"],LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,Passengers:[{id:"minecraft:marker",Tags:["gravedata","new"]}]}
ride @e[type=hopper_minecart,tag=grave,tag=new,limit=1] mount @s