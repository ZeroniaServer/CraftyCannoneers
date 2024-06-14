execute store result score @s RNGscore run random value 0..12
scoreboard players set $2 CmdData 2
tag @s[scores={RNGscore=1..5}] add HLeft
tag @s[scores={RNGscore=6..10}] add HRight
scoreboard players operation @s[tag=HRight] RNGscore /= $2 CmdData

execute if entity @s[tag=HLeft] run scoreboard players operation @s AccurL += @s RNGscore
execute if entity @s[tag=HRight] run scoreboard players operation @s AccurR += @s RNGscore

tag @s add chainacc