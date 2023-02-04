scoreboard players reset @s RNGscore
scoreboard players set @s RNGmax 100
execute store result score @s RNGscore run data get entity @s UUID[0]

execute store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute if score @s RNGscore matches ..60 run tag @s add Common
execute if score @s RNGscore matches 61..85 run tag @s add Uncommon
execute if score @s RNGscore matches 86.. run tag @s add Rare