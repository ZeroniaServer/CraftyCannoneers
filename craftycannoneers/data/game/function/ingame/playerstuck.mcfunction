execute if predicate cannons:ships/purple if block ~1 ~1 ~ #game:playerstuck if block ~-1 ~1 ~ #game:playerstuck if block ~ ~1 ~1 #game:playerstuck if block ~ ~1 ~-1 #game:playerstuck run tag @s add IsStuck
execute if predicate cannons:ships/orange if block ~1 ~1 ~ #game:playerstuck if block ~-1 ~1 ~ #game:playerstuck if block ~ ~1 ~1 #game:playerstuck if block ~ ~1 ~-1 #game:playerstuck run tag @s add IsStuck

execute if predicate cannons:ships/purple if block ~2 ~1 ~ #game:playerstuck if block ~-2 ~1 ~ #game:playerstuck if block ~ ~1 ~2 #game:playerstuck if block ~ ~1 ~-2 #game:playerstuck run tag @s add IsStuck
execute if predicate cannons:ships/orange if block ~2 ~1 ~ #game:playerstuck if block ~-2 ~1 ~ #game:playerstuck if block ~ ~1 ~2 #game:playerstuck if block ~ ~1 ~-2 #game:playerstuck run tag @s add IsStuck

tag @s[predicate=cannons:ships/purple,predicate=cannons:ships/bottom] add IsStuck
tag @s[predicate=cannons:ships/orange,predicate=cannons:ships/bottom] add IsStuck

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

effect clear @s[tag=!IsStuck,predicate=game:onground] jump_boost
effect give @s[tag=IsStuck] jump_boost infinite 3 true

tag @s[tag=IsStuck] remove IsStuck

tag @s[tag=waterstuck] remove waterstuck
execute if block ~ ~1 ~ #minecraft:slabs[type=top] unless block ~ ~ ~ water[level=0] run tag @s add waterstuck
item modify entity @s[tag=waterstuck] armor.feet game:depthstrider
item modify entity @s[tag=!waterstuck] armor.feet game:nodepthstrider