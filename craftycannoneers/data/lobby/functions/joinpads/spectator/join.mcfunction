gamemode spectator
team join Spectator @s
execute at @s run tp @s @s
title @s clear
tp @s 70 18 0
execute at @s run playsound joingame master @s ~ ~ ~ 1 1
tellraw @a ["",{"translate":"game.spectating","color":"gray","with":[{"selector":"@s","color":"dark_gray"}]}]
tag @s add NewSpec
tag @s remove JoinSpec