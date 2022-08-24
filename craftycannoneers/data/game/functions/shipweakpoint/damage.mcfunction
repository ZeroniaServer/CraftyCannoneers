execute at @s[tag=Purple] if block ~ ~1 ~7 air run tag @s add respawn
execute at @s[tag=Orange] if block ~ ~1 ~-7 air run tag @s add respawn

execute at @s[tag=Purple] if block ~1 ~1 ~7 air run tag @s add respawn
execute at @s[tag=Orange] if block ~1 ~1 ~-7 air run tag @s add respawn

execute at @s[tag=Purple] if block ~-1 ~1 ~7 air run tag @s add respawn
execute at @s[tag=Orange] if block ~-1 ~1 ~-7 air run tag @s add respawn

execute at @s[tag=Purple] if block ~ ~2 ~7 air run tag @s add respawn
execute at @s[tag=Orange] if block ~ ~2 ~-7 air run tag @s add respawn

execute at @s[tag=Purple] if block ~ ~ ~7 air run tag @s add respawn
execute at @s[tag=Orange] if block ~ ~ ~-7 air run tag @s add respawn

execute at @s[tag=Purple] if entity @e[type=marker,tag=ImpactMarker,distance=..7] run tag @s add respawn
execute at @s[tag=Orange] if entity @e[type=marker,tag=ImpactMarker,distance=..7] run tag @s add respawn

execute at @s[tag=respawn] run function game:shipweakpoint/respawn
tag @s[tag=respawn] remove respawn