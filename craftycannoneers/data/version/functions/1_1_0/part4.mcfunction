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

item replace entity @e[type=wandering_trader,tag=Teacher] armor.head with diamond_hoe{CustomModelData:57}

execute unless entity fffffe5c-ffff-ffbb-0000-01a400000045 run function inventory:randomizer/setup/begin

#> Light up the Lobby for nighttime
setblock -74 -22 1 light[level=13]
setblock -73 -21 -1 light[level=15]
setblock -75 -21 -3 light[level=13]
setblock -80 -22 -1 light[level=13]
setblock -82 -23 4 light[level=13]
setblock -81 -24 9 light[level=13]
setblock -79 -25 14 light[level=13]
setblock -79 -25 19 light[level=13]
setblock -76 -25 24 light[level=13]
setblock -73 -24 26 light[level=13]
setblock -70 -24 30 light[level=13]
setblock -68 -23 34 light[level=13]
setblock -73 -22 36 light[level=13]
setblock -75 -21 32 light[level=13]
setblock -71 -20 29 light[level=13]
setblock -67 -19 29 light[level=13]
setblock -67 -18 33 light[level=13]
setblock -69 -17 37 light[level=13]
setblock -65 -16 40 light[level=13]
setblock -61 -15 40 light[level=13]
setblock -58 -14 42 light[level=13]
setblock -54 -13 43 light[level=13]
setblock -50 -12 43 light[level=13]
setblock -52 -11 38 light[level=13]
setblock -52 -9 36 light[level=13]
setblock -52 -7 36 light[level=13]
setblock -49 -7 37 light[level=12]
setblock -52 -4 38 light[level=13]
setblock -52 -7 38 light[level=13]
setblock -52 -2 37 light[level=13]
setblock -54 -2 36 light[level=13]
setblock -57 -4 35 light[level=13]
setblock -60 -9 27 light[level=13]
setblock -64 -10 20 light[level=13]
setblock -66 -10 12 light[level=13]
setblock -70 -8 9 light[level=13]
setblock -71 -9 11 light[level=14]
setblock -71 -10 11 light[level=14]
setblock -72 -5 9 light[level=14]
setblock -72 -6 9 light[level=14]
setblock -72 -1 4 light[level=13]
setblock -70 -1 4 light[level=13]
setblock -70 1 0 light[level=13]
setblock -72 1 0 light[level=13]
setblock -71 2 -3 light[level=14]
setblock -72 2 -4 light[level=14]
setblock -70 2 -4 light[level=14]
setblock -71 3 -4 light[level=15]
setblock -71 2 -5 light[level=14]
setblock -70 -23 -1 light[level=13]
setblock -66 -24 0 light[level=13]
setblock -46 -25 10 light[level=13]
setblock -42 -26 12 light[level=13]
setblock -39 -28 15 light[level=13]
setblock -39 -28 20 light[level=13]
setblock -36 -28 21 light[level=13]
setblock -32 -28 22 light[level=13]
fill -31 -28 23 -38 -28 23 light[level=13] replace air
setblock -42 -22 -21 light[level=14]
setblock -46 -24 -5 light[level=14]
setblock -45 -24 0 light[level=14]
setblock -46 -24 5 light[level=14]

bossbar set updatebar name ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"4","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar value 4

schedule function version:1_1_0/part5 10t

execute as @a at @s run playsound updateadvance master @s ~ ~ ~ 1 2