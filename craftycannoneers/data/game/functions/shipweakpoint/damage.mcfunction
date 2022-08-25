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

execute at @s[tag=Purple] positioned ~ ~ ~7 if entity @e[type=marker,tag=ImpactMarker,distance=..3] run tag @s add respawn
execute at @s[tag=Orange] positioned ~ ~ ~-7 if entity @e[type=marker,tag=ImpactMarker,distance=..3] run tag @s add respawn

execute at @s[tag=Purple,tag=respawn] positioned ~ ~ ~7 run function game:shipweakpoint/respawn
execute at @s[tag=Orange,tag=respawn] positioned ~ ~ ~-7 run function game:shipweakpoint/respawn