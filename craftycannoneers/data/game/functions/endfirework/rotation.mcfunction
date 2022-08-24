scoreboard players set @s RNGmax 11
execute store result score @s RNGscore run data get entity @s UUID[2]
scoreboard players operation @s RNGscore %= @s RNGmax
tag @s[scores={RNGscore=1..6}] add RotLeft
tag @s[scores={RNGscore=7..}] add RotRight
scoreboard players remove @s[scores={RNGscore=7..}] RNGscore 6
execute at @s run function game:ingame/fireworkrotation
tag @s remove new3