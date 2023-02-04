execute if predicate cannons:ships/purple if block ~1 ~1 ~ #game:playerstuck if block ~-1 ~1 ~ #game:shipblocks if block ~ ~1 ~1 #game:shipblocks if block ~ ~1 ~-1 #game:shipblocks run tag @s add IsStuck
execute if predicate cannons:ships/orange if block ~1 ~1 ~ #game:playerstuck if block ~-1 ~1 ~ #game:shipblocks if block ~ ~1 ~1 #game:shipblocks if block ~ ~1 ~-1 #game:shipblocks run tag @s add IsStuck

execute if predicate cannons:ships/purple if block ~2 ~1 ~ #game:playerstuck if block ~-2 ~1 ~ #game:shipblocks if block ~ ~1 ~2 #game:shipblocks if block ~ ~1 ~-2 #game:shipblocks run tag @s add IsStuck
execute if predicate cannons:ships/orange if block ~2 ~1 ~ #game:playerstuck if block ~-2 ~1 ~ #game:shipblocks if block ~ ~1 ~2 #game:shipblocks if block ~ ~1 ~-2 #game:shipblocks run tag @s add IsStuck

execute if block ~1 ~ ~ ladder run tag @s[tag=IsStuck] remove IsStuck
execute if block ~-1 ~ ~ ladder run tag @s[tag=IsStuck] remove IsStuck
execute if block ~ ~ ~1 ladder run tag @s[tag=IsStuck] remove IsStuck
execute if block ~ ~ ~-1 ladder run tag @s[tag=IsStuck] remove IsStuck

execute if block ~1 ~ ~ water run tag @s[tag=IsStuck] remove IsStuck
execute if block ~-1 ~ ~ water run tag @s[tag=IsStuck] remove IsStuck
execute if block ~ ~ ~1 water run tag @s[tag=IsStuck] remove IsStuck
execute if block ~ ~ ~-1 water run tag @s[tag=IsStuck] remove IsStuck

execute if block ~ ~ ~ #minecraft:stairs run tag @s[tag=IsStuck] remove IsStuck
execute if block ~1 ~ ~ #minecraft:stairs run tag @s[tag=IsStuck] remove IsStuck
execute if block ~-1 ~ ~ #minecraft:stairs run tag @s[tag=IsStuck] remove IsStuck
execute if block ~ ~ ~1 #minecraft:stairs run tag @s[tag=IsStuck] remove IsStuck
execute if block ~ ~ ~-1 #minecraft:stairs run tag @s[tag=IsStuck] remove IsStuck

effect clear @s[tag=!IsStuck] jump_boost
effect give @s[tag=IsStuck] jump_boost 1 3 true

tag @s[tag=IsStuck] remove IsStuck