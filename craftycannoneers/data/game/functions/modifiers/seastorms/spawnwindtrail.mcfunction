execute if score $WindDirection CmdData matches 0 run summon marker 16 -18 30 {Tags:["StormEntity","WindIndicator","East","New"]}
execute if score $WindDirection CmdData matches 1 run summon marker 124 -18 30 {Tags:["StormEntity","WindIndicator","West","New"]}

scoreboard players set @e[type=marker,tag=WindIndicator,tag=New] z 0
scoreboard players set @e[type=marker,tag=WindIndicator,tag=New] RNGscore 0
scoreboard players set @e[type=marker,tag=WindIndicator,tag=New] RNGmax 81
execute as @e[type=marker,tag=WindIndicator,tag=New] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=WindIndicator,tag=New] store result score @s z run scoreboard players operation @s RNGscore %= @s RNGmax

scoreboard players set @e[type=marker,tag=WindIndicator,tag=New] y 0
scoreboard players set @e[type=marker,tag=WindIndicator,tag=New] RNGscore 0
scoreboard players set @e[type=marker,tag=WindIndicator,tag=New] RNGmax 45
execute as @e[type=marker,tag=WindIndicator,tag=New] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=WindIndicator,tag=New] store result score @s y run scoreboard players operation @s RNGscore %= @s RNGmax

execute as @e[type=marker,tag=WindIndicator,tag=New] at @s run function game:modifiers/seastorms/windposrecursive

tag @e[type=marker,tag=WindIndicator,tag=New] remove New