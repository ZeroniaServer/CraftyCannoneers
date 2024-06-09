tag @s add Randomized

execute at @s run spreadplayers ~ ~ 0 24 false @s
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~

execute at @s unless entity @s[tag=Nope] unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run function game:modifiers/crabs/spawnnew
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tag @s add Nope

execute at @s unless entity @s[tag=Nope] unless block ~ ~ ~ air run function game:modifiers/crabs/spawnnew
execute at @s unless block ~ ~ ~ air run tag @s add Nope

execute at @s[tag=!Nope] as @e[type=item_display,tag=CrabTrap,distance=..1] at @s run function weapons:crabtrap/break
execute at @s[tag=!Nope] unless entity @e[type=armor_stand,tag=chest,distance=..8] unless score $total crabs matches 5.. run function game:modifiers/crabs/spawn

kill @e[type=marker,tag=CrabSpawner]