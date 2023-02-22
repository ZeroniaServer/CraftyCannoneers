advancement revoke @s only weapons:barrel/place
tag @s add placer
execute as @e[type=marker,tag=BlastBarrelSpawn,limit=1] at @s run function weapons:barrel/attemptplace
tag @s remove placer
scoreboard players reset @s spawnBarrel