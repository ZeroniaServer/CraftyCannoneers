scoreboard players reset @s RNGscore
scoreboard players set @s RNGmax 100
execute store result score @s RNGscore run data get entity @s UUID[0]

execute store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute if entity @s[scores={RNGscore=..60}] run tag @s add Common
execute if entity @s[scores={RNGscore=61..75}] run tag @s add Uncommon
execute if entity @s[scores={RNGscore=76..}] run tag @s add Rare