execute at @s[predicate=cannons:ships/purple] at @s if block ~1 ~1 ~ #game:playerstuck if block ~-1 ~1 ~ #game:shipblocks if block ~ ~1 ~1 #game:shipblocks if block ~ ~1 ~-1 #game:shipblocks run tag @s add IsStuck
execute at @s[predicate=cannons:ships/orange] at @s if block ~1 ~1 ~ #game:playerstuck if block ~-1 ~1 ~ #game:shipblocks if block ~ ~1 ~1 #game:shipblocks if block ~ ~1 ~-1 #game:shipblocks run tag @s add IsStuck

execute at @s[predicate=cannons:ships/purple] at @s if block ~2 ~1 ~ #game:playerstuck if block ~-2 ~1 ~ #game:shipblocks if block ~ ~1 ~2 #game:shipblocks if block ~ ~1 ~-2 #game:shipblocks run tag @s add IsStuck
execute at @s[predicate=cannons:ships/orange] at @s if block ~2 ~1 ~ #game:playerstuck if block ~-2 ~1 ~ #game:shipblocks if block ~ ~1 ~2 #game:shipblocks if block ~ ~1 ~-2 #game:shipblocks run tag @s add IsStuck

execute at @s[tag=IsStuck] if block ~1 ~ ~ ladder run tag @s remove IsStuck
execute at @s[tag=IsStuck] if block ~-1 ~ ~ ladder run tag @s remove IsStuck
execute at @s[tag=IsStuck] if block ~ ~ ~1 ladder run tag @s remove IsStuck
execute at @s[tag=IsStuck] if block ~ ~ ~-1 ladder run tag @s remove IsStuck

execute at @s[tag=IsStuck] if block ~1 ~ ~ water run tag @s remove IsStuck
execute at @s[tag=IsStuck] if block ~-1 ~ ~ water run tag @s remove IsStuck
execute at @s[tag=IsStuck] if block ~ ~ ~1 water run tag @s remove IsStuck
execute at @s[tag=IsStuck] if block ~ ~ ~-1 water run tag @s remove IsStuck

execute at @s[tag=IsStuck] if block ~ ~ ~ #minecraft:stairs run tag @s remove IsStuck
execute at @s[tag=IsStuck] if block ~1 ~ ~ #minecraft:stairs run tag @s remove IsStuck
execute at @s[tag=IsStuck] if block ~-1 ~ ~ #minecraft:stairs run tag @s remove IsStuck
execute at @s[tag=IsStuck] if block ~ ~ ~1 #minecraft:stairs run tag @s remove IsStuck
execute at @s[tag=IsStuck] if block ~ ~ ~-1 #minecraft:stairs run tag @s remove IsStuck

effect clear @s[tag=!IsStuck] jump_boost
effect give @s[tag=IsStuck] jump_boost 1 3 true

tag @s[tag=IsStuck] remove IsStuck