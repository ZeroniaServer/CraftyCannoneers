scoreboard players set @s z 0
scoreboard players set @s RNGscore 0
scoreboard players set @s RNGmax 81
execute store result score @s RNGscore run data get entity @s UUID[0]
execute store result score @s z run scoreboard players operation @s RNGscore %= @s RNGmax

scoreboard players set @s y 0
scoreboard players set @s RNGscore 0
scoreboard players set @s RNGmax 45
execute store result score @s RNGscore run data get entity @s UUID[0]
execute store result score @s y run scoreboard players operation @s RNGscore %= @s RNGmax

function game:modifiers/seastorms/windposrecursive

tag @s remove New