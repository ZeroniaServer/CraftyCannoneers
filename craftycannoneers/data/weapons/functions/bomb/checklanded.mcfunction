execute unless score $landed CmdData matches 1 if entity @s[predicate=!game:inarena] run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~ ~ #game:nonsolids run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s unless block ~ ~-1 ~ #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~-0.5 ~ spruce_slab[type=bottom] run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~-1 ~ spruce_slab[type=top] run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~-1 ~ spruce_slab[type=double] run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~ ~ spruce_slab[type=top] run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~ ~ spruce_slab[type=double] run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~-0.0625 ~ gray_carpet run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~-0.1875 ~ spruce_trapdoor[half=bottom] run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 unless block ^ ^ ^2 #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 unless block ^ ^ ^1 #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 unless block ^ ^ ^ #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute if score $landed CmdData matches 1 run tag @s add Kaboom
scoreboard players reset $landed CmdData