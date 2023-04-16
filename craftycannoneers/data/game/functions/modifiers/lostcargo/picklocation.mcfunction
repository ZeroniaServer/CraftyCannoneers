tag @s remove Respawn
scoreboard players set @s RNGscore 0
scoreboard players set @s RNGmax 4

execute store result score @s RNGscore run data get entity @s UUID[0]
scoreboard players operation @s RNGscore %= @s RNGmax
scoreboard players operation @s x = @s RNGscore

scoreboard players set @s RNGscore 0
scoreboard players set @s RNGmax 8

execute store result score @s RNGscore run data get entity @s UUID[1]
scoreboard players operation @s RNGscore %= @s RNGmax
scoreboard players operation @s z = @s RNGscore

execute at @s[scores={x=1..}] run function game:modifiers/lostcargo/recursivetpx
execute at @s[scores={z=1..}] run function game:modifiers/lostcargo/recursivetpz

execute at @s if entity @e[type=marker,tag=BarrelSpawn,tag=Picked,distance=..1] run tag @s add Nope
kill @s[tag=Nope]
tag @s[tag=!Nope] add Picked