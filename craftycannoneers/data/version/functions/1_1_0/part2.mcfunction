kill @e[type=armor_stand,tag=cannon,tag=!Tutorial]
execute as @e[type=villager,tag=cannon,tag=!Tutorial] at @s run function arenaclear:kill
kill @e[type=marker,tag=villager,tag=!Tutorial]
function arenaclear:cannons

execute as @e[type=villager] run function version:1_1_0/interactions/main
function version:1_1_0/interactions/doublecheck

kill @e[type=armor_stand,tag=Parrot,limit=1]
execute unless entity @e[type=item_display,tag=Parrot,limit=1] positioned -53.20466260791477 -22.04 -2.2664771593984856 run summon item_display ~ ~0.9 ~ {Rotation:[31.765747f,0f],item:{id:"diamond_hoe",tag:{CustomModelData:65},Count:1b},Tags:["Parrot","EasterEgg"],transformation:{translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",width:1f,height:1f}

kill @e[type=armor_stand,tag=Goldy,limit=1]
execute unless entity @e[type=item_display,tag=Goldy,limit=1] positioned -61.2 -30.6 50.5 run summon item_display ~ ~0.9 ~ {item:{id:"diamond_hoe",tag:{CustomModelData:79},Count:1b},Tags:["Goldy","EasterEgg"],transformation:{translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",width:1f,height:1f}

kill @e[type=armor_stand,tag=Planetary]
execute unless entity @e[type=item_display,tag=PlanetaryGun,limit=1] positioned -48.5 -7.0 37.5 run summon item_display ~ ~0.9 ~ {item:{id:"diamond_hoe",tag:{CustomModelData:81},Count:1b}, Tags:["PlanetaryGun","Planetary","EasterEgg"],transformation:{translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",width:1f,height:1f}
execute unless entity @e[type=item_display,tag=PlanetaryHelmet,limit=1] positioned -48.5 -7.0 37.5 run summon item_display ~ ~0.9 ~ {item:{id:"diamond_hoe",tag:{CustomModelData:80},Count:1b},Tags:["PlanetaryHelmet","Planetary","EasterEgg"],transformation:{translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",width:1f,height:1f}

execute as @e[type=item_display,tag=EasterEgg] at @s run tp @s ^ ^ ^

bossbar set updatebar name ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"2","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar value 2
schedule function version:1_1_0/part3 5t

execute as @a at @s run playsound updateadvance master @s ~ ~ ~ 1 2