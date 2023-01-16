gamemode spectator
team join Spectator @s
execute at @s run tp @s @s
tp @s 70 18 0
execute at @s run playsound block.beehive.enter master @s ~ ~ ~ 1 1
tellraw @a ["",{"selector":"@s","color":"dark_gray"},{"translate":"game.spectating","color":"gray"}]
tag @s add NewSpec
tag @s remove JoinSpec