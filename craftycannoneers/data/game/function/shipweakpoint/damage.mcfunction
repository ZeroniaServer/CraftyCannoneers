execute at @s[tag=Purple] if block ~ ~1 ~2 #game:weakpoint_damaged run tag @s add respawn
execute at @s[tag=Orange] if block ~ ~1 ~-2 #game:weakpoint_damaged run tag @s add respawn

execute at @s[tag=Purple] if block ~1 ~1 ~2 #game:weakpoint_damaged run tag @s add respawn
execute at @s[tag=Orange] if block ~1 ~1 ~-2 #game:weakpoint_damaged run tag @s add respawn

execute at @s[tag=Purple] if block ~-1 ~1 ~2 #game:weakpoint_damaged run tag @s add respawn
execute at @s[tag=Orange] if block ~-1 ~1 ~-2 #game:weakpoint_damaged run tag @s add respawn

execute at @s[tag=Purple] if block ~ ~2 ~2 #game:weakpoint_damaged run tag @s add respawn
execute at @s[tag=Orange] if block ~ ~2 ~-2 #game:weakpoint_damaged run tag @s add respawn

execute at @s[tag=Purple] if block ~ ~ ~2 #game:weakpoint_damaged run tag @s add respawn
execute at @s[tag=Orange] if block ~ ~ ~-2 #game:weakpoint_damaged run tag @s add respawn

execute at @s[tag=Purple] positioned ~ ~ ~2 if entity @e[type=marker,tag=ImpactMarker,tag=Hit1,distance=..4] run tag @s add respawn
execute at @s[tag=Purple] positioned ~ ~ ~3 if entity @e[type=marker,tag=ImpactMarker,tag=!Hit,distance=..4] run tag @s add respawn
execute at @s[tag=Orange] positioned ~ ~ ~-2 if entity @e[type=marker,tag=ImpactMarker,tag=Hit1,distance=..4] run tag @s add respawn
execute at @s[tag=Orange] positioned ~ ~ ~-3 if entity @e[type=marker,tag=ImpactMarker,tag=!Hit1,distance=..4] run tag @s add respawn

execute at @s[tag=Purple,tag=respawn] positioned ~ ~ ~2 run function game:shipweakpoint/respawn
execute at @s[tag=Orange,tag=respawn] positioned ~ ~ ~-2 run function game:shipweakpoint/respawn