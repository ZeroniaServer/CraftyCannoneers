#> Entity-based illegal cases
execute if entity @e[type=armor_stand,tag=BlastBarrel,distance=..1] run tag @s add illegal
execute if entity @e[type=armor_stand,tag=CrabTrap,distance=..1] run tag @s add illegal
execute if entity @e[type=wandering_trader,distance=..1] run tag @s add illegal
execute if entity @e[type=hopper_minecart,distance=..1] run tag @s add illegal
execute if entity @e[type=chest_minecart,distance=..1] run tag @s add illegal

#> Block-based illegal cases
execute unless entity @s[tag=illegal] positioned ~ ~-1 ~ if entity @e[type=armor_stand,tag=BlastBarrel,distance=..1] run tag @s add illegal
execute unless entity @s[tag=illegal] unless block ~ ~0.5 ~ #game:barrel_exclude unless block ~ ~0.5 ~ #minecraft:trapdoors[half=bottom,open=false] unless block ~ ~0.5 ~ #minecraft:trapdoors[open=true] run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~-0.5 ~ #game:barrel_exclude run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~0.5 ~ #minecraft:fence_gates[open=false] run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~0.5 ~ andesite_wall run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~ ~ lantern run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~-1.1875 ~ cobbled_deepslate_wall run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~-0.5 ~ #minecraft:trapdoors[half=top,open=true] run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~ ~ #game:barrel_plants run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~-1 ~ #game:barrel_plants run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~-1 ~ water run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~ ~ water run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~ ~ #minecraft:fences run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~ ~ #minecraft:walls run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~-1 ~ #minecraft:slabs[waterlogged=true] run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~ ~ #minecraft:slabs[waterlogged=true] run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~ ~ minecraft:sea_pickle[waterlogged=true] run tag @s add illegal

#> Block-based adjustments
execute unless entity @s[tag=illegal] if block ~ ~ ~ #minecraft:wool_carpets align y run tp @s ~ ~0.1 ~
execute unless entity @s[tag=illegal] if block ~ ~ ~ #minecraft:stairs align y run tp @s ~ ~1 ~
execute unless entity @s[tag=illegal] if block ~ ~-1 ~ #minecraft:slabs[type=bottom] if block ~ ~ ~ #minecraft:trapdoors[half=bottom,open=false] align y run tp @s ~ ~0.1625 ~
execute unless entity @s[tag=illegal] if block ~ ~-1 ~ #minecraft:slabs[type=bottom] unless block ~ ~ ~ #minecraft:trapdoors[half=bottom,open=false] align y run tp @s ~ ~-0.5 ~

#> Special case for slab 1-block gap
execute if block ~ ~-1 ~ #minecraft:slabs[type=top] if block ~ ~-2 ~ #minecraft:slabs[type=bottom] run tp @s ~ ~-1.5 ~
execute if block ~ ~-1 ~ #minecraft:slabs[type=top] if block ~ ~-2 ~ #minecraft:slabs[type=bottom] run tag @s remove illegal