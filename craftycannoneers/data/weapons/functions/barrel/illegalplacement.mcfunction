#> Entity-based illegal cases
execute if entity @e[type=item_display,tag=BlastBarrel,distance=..0.5] run tag @s add illegal
execute if entity @e[type=item_display,tag=chestdisplay,distance=..0.5] run tag @s add illegal
execute positioned ~ ~-0.5 ~ if entity @e[type=item_display,tag=BlastBarrel,distance=..0.5] run tag @s add illegal
execute if entity @e[type=item_display,tag=CrabTrap,distance=..0.5] run tag @s add illegal
execute positioned ~ ~-0.5 ~ if entity @e[type=item_display,tag=CrabTrap,distance=..0.5] run tag @s add illegal
execute if entity @e[type=villager,distance=..0.5] run tag @s add illegal
execute if entity @e[type=hopper_minecart,distance=..0.5] run tag @s add illegal
execute if entity @e[type=chest_minecart,distance=..0.5] run tag @s add illegal

#> Block-based illegal cases
execute at @s[tag=!illegal] if block ~ ~-0.5 ~ #game:barrel_exclude run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~0.5 ~ #minecraft:fence_gates[open=false] run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~0.5 ~ andesite_wall run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~ ~ lantern run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~ ~ #game:barrel_plants run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~-1 ~ #game:barrel_plants run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~-0.5 ~ #minecraft:stairs run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~-0.99 ~ water run tag @s add illegal
execute at @s[tag=!illegal] positioned ~ ~0.01 ~ if predicate game:located_water run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~ ~ #minecraft:fences run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~ ~ #minecraft:walls run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~-1 ~ #minecraft:slabs[waterlogged=true] run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~ ~ #minecraft:slabs[waterlogged=true] run tag @s add illegal
execute at @s[tag=!illegal] if block ~ ~ ~ minecraft:sea_pickle[waterlogged=true] run tag @s add illegal