#> Copy rotation
tp @s ~ ~ ~ ~ ~

#> Align to world surface (lowest block) for y-coordinate
execute store result score @s CmdData run data get entity @s Pos[1]
execute at @s positioned over world_surface summon marker run function game:modifiers/graverobbery/floorcoord
scoreboard players operation @s CmdData < $y CmdData
execute store result entity @s Pos[1] double 1 run scoreboard players get @s CmdData

#> Adjust to other floor heights
execute at @s run function game:modifiers/graverobbery/adjustheight
execute at @s positioned ~ ~-1 ~ if predicate game:located_water run tag @s add water
execute at @s if predicate game:located_water run tag @s add water

#> Summon rotated grave chest
execute positioned ~ ~-0.01 ~ run function game:modifiers/graverobbery/rotate
execute if entity @s[tag=water] run tag @e[type=hopper_minecart,tag=grave,tag=new] add water

#> Remove temp marker
kill @s