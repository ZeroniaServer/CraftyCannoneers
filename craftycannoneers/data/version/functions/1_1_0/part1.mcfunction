bossbar set lobbybar visible false
bossbar add updatebar ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"0","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar color green
bossbar set updatebar players @a
bossbar set updatebar max 6
bossbar set updatebar style notched_6

forceload add -413 -379 -260 -15

execute as @e[type=armor_stand,tag=PirateHat,tag=!110HatPlacement] at @s run tp @s ~ ~0.17 ~
tag @e[type=armor_stand,tag=PirateHat,tag=!110HatPlacement] add 110HatPlacement

function arenaclear:traders

bossbar set updatebar name ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"1","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar value 1
schedule function version:1_1_0/part2 5t