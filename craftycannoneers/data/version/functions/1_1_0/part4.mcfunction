forceload add -130 -379 -95 -15
function tutorial:cannondock/resetcannons

execute as @e[type=armor_stand,tag=TDAS] run function version:1_1_0/dummyrotate

bossbar set updatebar name ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"4","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar value 4

schedule function version:1_1_0/part5 10t