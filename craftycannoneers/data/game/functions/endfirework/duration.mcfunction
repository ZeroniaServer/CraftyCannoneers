scoreboard players set @s RNGmax 24
execute store result score @s RNGscore run data get entity @s UUID[0]
scoreboard players operation @s RNGscore %= @s RNGmax
execute store result score @s eyeclick run scoreboard players get @s RNGscore
scoreboard players reset @s RNGscore
tag @s remove new