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

#> Nudge into the floor
execute at @s align xz run tp @s ~0.5 ~ ~0.5

#> Adjust to other floor heights
execute at @s run function game:modifiers/graverobbery/adjustheight
execute at @s if predicate game:located_water run tag @s add water

#> Summon grave chest
execute at @s[tag=!water] run summon armor_stand ~ ~-0.01 ~ {Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["chest","grave"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:134}}],Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,Tags:["grave","chest","new"],Passengers:[{id:"minecraft:marker",Tags:["gravedata","grave","new"]}]}]}

execute at @s[tag=water] run summon armor_stand ~ ~-0.01 ~ {Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["chest","grave"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:134}}],Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,Tags:["grave","chest","new","water"],Passengers:[{id:"minecraft:marker",Tags:["gravedata","grave","new"]}]}]}

#> Remove temp marker
kill @s