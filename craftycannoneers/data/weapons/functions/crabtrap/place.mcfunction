advancement revoke @s only weapons:crabtrap/place
tag @s add placer
execute rotated as @s rotated ~180 ~ as @e[type=marker,tag=CrabTrapSpawn,limit=1] positioned as @s run function weapons:crabtrap/attemptplace
tag @s remove placer
scoreboard players reset @s spawnPlaceable