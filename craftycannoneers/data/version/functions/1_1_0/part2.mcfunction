kill @e[type=armor_stand,tag=cannon,tag=!Tutorial]
execute as @e[type=villager,tag=cannon,tag=!Tutorial] at @s run function arenaclear:kill
kill @e[type=marker,tag=villager,tag=!Tutorial]
function arenaclear:cannons

execute as @e[type=villager] run function version:1_1_0/interactions/main
function version:1_1_0/interactions/doublecheck

bossbar set updatebar name ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"2","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar value 2
schedule function version:1_1_0/part3 5t

execute as @a at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 2