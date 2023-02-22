execute if entity @e[type=armor_stand,tag=BlastBarrel,distance=..1] run tag @s add illegal
execute unless entity @s[tag=illegal] positioned ~ ~-1 ~ if entity @e[type=armor_stand,tag=BlastBarrel,distance=..1] run tag @s add illegal
execute unless entity @s[tag=illegal] unless block ~ ~0.5 ~ #game:barrel_exclude unless block ~ ~0.5 ~ #minecraft:trapdoors[half=bottom] run tag @s add illegal
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
execute unless entity @s[tag=illegal] if block ~ ~-1 ~ #minecraft:slabs[waterlogged=true] run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~ ~ #minecraft:slabs[waterlogged=true] run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~ ~ #minecraft:walls[waterlogged=true] run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~ ~ minecraft:sea_pickle[waterlogged=true] run tag @s add illegal
execute unless entity @s[tag=illegal] if block ~ ~ ~ #minecraft:wool_carpets align y run tp @s ~ ~0.1 ~
execute unless entity @s[tag=illegal] if block ~ ~ ~ #minecraft:stairs align y run tp @s ~ ~1 ~