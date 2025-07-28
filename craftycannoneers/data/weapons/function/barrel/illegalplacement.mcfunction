#> Entity-based illegal cases
execute if entity @e[type=item_display,tag=BlastBarrel,distance=..0.5] run return run tag @s add illegal
execute if entity @e[type=item_display,tag=chestdisplay,distance=..0.5] run return run tag @s add illegal
execute positioned ~ ~-0.5 ~ if entity @e[type=item_display,tag=BlastBarrel,distance=..0.5] run return run tag @s add illegal
execute if entity @e[type=item_display,tag=CrabTrap,distance=..0.5] run return run tag @s add illegal
execute positioned ~ ~-0.5 ~ if entity @e[type=item_display,tag=CrabTrap,distance=..0.5] run return run tag @s add illegal
execute if entity @e[type=villager,distance=..0.5] run return run tag @s add illegal
execute if entity @e[type=hopper_minecart,distance=..0.5] run return run tag @s add illegal
execute if entity @e[type=chest_minecart,distance=..0.5] run return run tag @s add illegal
execute if entity @e[type=interaction,tag=LChest,distance=..0.5] run return run tag @s add illegal

#> Block-based illegal cases
execute at @s[tag=!illegal] if block ~ ~-0.5 ~ #game:barrel_exclude run return run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~0.5 ~ #minecraft:fence_gates[open=false] run return run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~0.5 ~ andesite_wall run return run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~ ~ lantern run return run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~ ~ #game:barrel_plants run return run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~-1 ~ #game:barrel_plants run return run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~-0.5 ~ #minecraft:stairs run return run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~-0.99 ~ water run return run tag @s add illegal
execute at @s[tag=!illegal] positioned ~ ~0.01 ~ if predicate game:located_water run return run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~ ~ #minecraft:fences run return run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~ ~ #minecraft:walls run return run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~-1 ~ #minecraft:slabs[half=bottom,waterlogged=true] run return run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~ ~ #minecraft:slabs[half=bottom,waterlogged=true] run return run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~ ~ minecraft:sea_pickle[waterlogged=true] run return run tag @s add illegal