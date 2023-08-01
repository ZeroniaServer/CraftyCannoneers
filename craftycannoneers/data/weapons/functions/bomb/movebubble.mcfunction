execute store success score @s CmdData on origin if entity @s[tag=currbomb]
execute if score @s CmdData matches 1 at @s run tp @s ~ ~-0.02 ~
execute if score @s CmdData matches 1 store result entity @s Air short 1 run scoreboard players get $toggle CmdData
scoreboard players reset @s CmdData