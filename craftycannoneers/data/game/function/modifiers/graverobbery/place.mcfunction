#> Copy rotation
rotate @s ~ ~

#> Align to world surface (lowest block) for y-coordinate
execute store result score @s CmdData run data get entity @s Pos[1] 1000
execute summon marker run function game:modifiers/graverobbery/floorcoord
scoreboard players operation @s CmdData < $y CmdData
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s CmdData

#> Detect water/surface
execute if data storage iris:output HitWater run tag @s add water
execute unless data storage iris:output {HitWater:0} run tag @s[tag=water] add surface
execute at @s[tag=!water] positioned ~ ~0.01 ~ if predicate game:located_water run tag @s add surface

#> Move sufficiently away from other entities
scoreboard players set $gravetries CmdData 0
function game:modifiers/graverobbery/nooverlap

#> Another alignment attempt
execute store result score @s CmdData run data get entity @s Pos[1] 1000
execute at @s positioned over motion_blocking summon marker run function game:modifiers/graverobbery/floorcoord
scoreboard players operation @s CmdData < $y CmdData
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s CmdData
execute at @s run tp @s[tag=water] ~ ~-0.2 ~

#> Summon rotated grave chest
data modify storage craftycannoneers:grave angle set from entity @s Rotation[0]
execute at @s run function game:modifiers/graverobbery/rotate with storage craftycannoneers:grave
execute if entity @s[tag=water] run tag @e[type=armor_stand,tag=grave,tag=new] add water
execute if entity @s[tag=surface] run tag @e[type=armor_stand,tag=grave,tag=new] add surface

#> Remove temp marker
kill @s