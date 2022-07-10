scoreboard players set @s drag 120
scoreboard players set @s gravity 80

scoreboard players add @s[tag=1] gravity 75
scoreboard players add @s[tag=2] gravity 100
scoreboard players add @s[tag=3] gravity 150
scoreboard players add @s[tag=4] gravity 200

scoreboard players set @s RNGmax 160
execute store result score @s RNGscore run data get entity @s UUID[0]
execute store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

scoreboard players operation @s drag += @s RNGscore

scoreboard players set @s RNGmax 120
execute store result score @s RNGscore run data get entity @s UUID[1]
execute store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

scoreboard players operation @s gravity += @s RNGscore

scoreboard players set @s RNGmax 8
execute store result score @s RNGscore run data get entity @s UUID[1]
execute store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

scoreboard players set $2 CmdData 2
execute if entity @s[scores={RNGscore=..4}] run tag @s add HLeft
execute if entity @s[scores={RNGscore=5..8}] run tag @s add HRight
scoreboard players operation @s[tag=HRight] RNGscore /= $2 CmdData

execute if entity @s[tag=HLeft] run scoreboard players operation @s PowerL += @s RNGscore
execute if entity @s[tag=HRight] run scoreboard players operation @s PowerR += @s RNGscore

tag @s add clusteracc