advancement revoke @s only weapons:crabtrap/place
tag @s add placer
data modify storage iris:settings MaxRecursionDepth set value 16
data modify storage iris:settings Blacklist set value "#iris:shape_groups/air"
execute at @s anchored eyes positioned ^ ^ ^ run function iris:get_target
execute as @e[type=marker,tag=CrabTrapSpawn,limit=1] run function weapons:crabtrap/attemptplace
tag @s remove placer
scoreboard players reset @s spawnPlaceable