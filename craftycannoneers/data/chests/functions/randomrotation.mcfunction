scoreboard players reset @s RNGscore
scoreboard players set @s RNGmax 360
execute store result score @s RNGscore run data get entity @s UUID[2]

execute store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute if entity @s[tag=!Rotated,scores={RNGscore=1..}] at @s run function chests:rotate