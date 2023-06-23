forceload add -130 -379 -95 -15
kill @e[type=armor_stand,tag=cannon,tag=Tutorial]
execute as @e[type=villager,tag=cannon,tag=Tutorial] at @s run function arenaclear:kill
kill @e[type=marker,tag=villager,tag=Tutorial]
function tutorial:cannondock/resetcannons

kill @e[type=armor_stand,tag=fakechest]
kill @e[type=villager,tag=LChestFakeVillager]
kill @e[type=interaction,tag=LChestFake]
execute as @e[type=hopper_minecart,tag=fakechest] run function arenaclear:kill
execute as @e[type=chest_minecart,tag=fakechest] run function arenaclear:kill
function tutorial:treasurepit/main

kill @e[type=armor_stand,tag=TrainingDummy]
function tutorial:trainingdummies/despawnall
execute summon marker run function tutorial:trainingdummies/spawnall

execute unless score $setuprand CmdData matches 1 run function inventory:randomizer/setup/begin

bossbar set updatebar name ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"4","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar value 4

schedule function version:1_1_0/part5 10t

execute as @a at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 2