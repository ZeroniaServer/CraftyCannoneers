scoreboard players set @s drag 60
scoreboard players set @s gravity 200

scoreboard players set @s RNGmax 50
execute as @s store result score @s RNGscore run data get entity @s UUID[0]
execute store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

scoreboard players operation @s drag += @s RNGscore

scoreboard players set @s RNGmax 25
execute as @s store result score @s RNGscore run data get entity @s UUID[1]
execute store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

scoreboard players operation @s gravity += @s RNGscore

scoreboard players set @s RNGmax 5
execute as @s store result score @s RNGscore run data get entity @s UUID[1]
execute store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

scoreboard players set $2 CmdData 2
execute if entity @s[scores={RNGscore=..2}] run tag @s add HLeft
execute if entity @s[scores={RNGscore=3..4}] run tag @s add HRight
scoreboard players operation @s[tag=HRight] RNGscore /= $2 CmdData

execute as @s[tag=HLeft] run scoreboard players operation @s PowerL += @s RNGscore
execute as @s[tag=HRight] run scoreboard players operation @s PowerR += @s RNGscore