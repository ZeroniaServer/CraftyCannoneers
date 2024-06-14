scoreboard players add @s[tag=1] gravity 45
scoreboard players add @s[tag=2] gravity 35
scoreboard players add @s[tag=3] gravity 35
scoreboard players add @s[tag=4] gravity 45

execute store result score @s RNGscore run random value 0..39

scoreboard players set $2 CmdData 2

scoreboard players add @s[tag=4] RNGscore 20
scoreboard players add @s[tag=1] RNGscore 20

execute if entity @s[tag=HLeft] run scoreboard players operation @s AccurL += @s RNGscore
execute if entity @s[tag=HRight] run scoreboard players operation @s AccurR += @s RNGscore

tag @s add clusteracc