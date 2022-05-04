scoreboard players reset @s RNGscore
scoreboard players set @s RNGmax 100
execute store result score @s RNGscore run data get entity @s UUID[0]

execute store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute if entity @s[scores={RNGscore=..70}] run tag @s add Common
execute if entity @s[scores={RNGscore=71..90}] run tag @s add Uncommon
execute if entity @s[scores={RNGscore=91..}] run tag @s add Rare