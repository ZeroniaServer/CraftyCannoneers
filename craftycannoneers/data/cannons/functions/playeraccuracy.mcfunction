scoreboard players set @s drag 25
scoreboard players set @s gravity 145

scoreboard players set @s RNGmax 5
execute store result score @s RNGscore run data get entity @s UUID[0]
execute store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

scoreboard players operation @s drag += @s RNGscore

scoreboard players set @s RNGmax 5
execute store result score @s RNGscore run data get entity @s UUID[1]
execute store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

scoreboard players operation @s gravity -= @s RNGscore

tag @s add playeracc