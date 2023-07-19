function game:forcestop

bossbar set lobbybar visible false
bossbar add updatebar ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"0","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar color green
bossbar set updatebar players @a
bossbar set updatebar max 6
bossbar set updatebar style notched_6

forceload add -413 -379 -260 -15

#> Joinpad barrier displays
execute unless entity @e[type=item_display,tag=JoinpadBarrier,tag=Orange] at @e[type=marker,tag=JoinpadOrange] positioned ~ ~1 ~ run summon item_display ~ ~ ~ {Tags:["JoinpadBarrier","Orange"],item:{id:"minecraft:barrier",Count:1},width:1f,height:1f,billboard:"center",brightness:{sky:15,block:15}}
execute unless entity @e[type=item_display,tag=JoinpadBarrier,tag=Purple] at @e[type=marker,tag=JoinpadPurple] positioned ~ ~1 ~ run summon item_display ~ ~ ~ {Tags:["JoinpadBarrier","Purple"],item:{id:"minecraft:barrier",Count:1},width:1f,height:1f,billboard:"center",brightness:{sky:15,block:15}}
execute unless entity @e[type=item_display,tag=JoinpadBarrier,tag=Spectator] at @e[type=marker,tag=JoinpadSpec] positioned ~ ~1 ~ run summon item_display ~ ~ ~ {Tags:["JoinpadBarrier","Spectator"],item:{id:"minecraft:barrier",Count:1},width:1f,height:1f,billboard:"center",brightness:{sky:15,block:15}}

kill @e[type=armor_stand,tag=chestdisplay]
kill @e[type=armor_stand,tag=BoatAS]
kill @e[type=armor_stand,tag=ShipBell]
function arenaclear:shipbells

kill @e[type=armor_stand,tag=PirateHat]
execute unless entity @e[type=item_display,tag=KlarHat,limit=1] run summon item_display -31.023135 -27.838197 23.363027 {Tags:["KlarHat","LobbyDisplay","PirateHat"],item:{id:"diamond_hoe",tag:{CustomModelData:39},Count:1b},transformation:{translation:[0.0f,1.8f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:2.0f,width:1.0f,Rotation:[137.0f,3.0f]}
execute unless entity @e[type=item_display,tag=CarlHat,limit=1] run summon item_display -32.369882 -27.838603 23.539926 {Tags:["CarlHat","LobbyDisplay","PirateHat"],item:{id:"diamond_hoe",tag:{CustomModelData:39},Count:1b},transformation:{translation:[0.0f,1.8f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:2.0f,width:1.0f,Rotation:[140.2422f,-1.5560243f]}
execute unless entity @e[type=item_display,tag=YZEROHat,limit=1] run summon item_display -33.647564 -27.848182 23.669529 {Tags:["YZEROHat","LobbyDisplay","PirateHat"],item:{id:"diamond_hoe",tag:{CustomModelData:39},Count:1b},transformation:{translation:[0.0f,1.8f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:2.0f,width:1.0f,Rotation:[158.0f,2.0f]}
execute unless entity @e[type=item_display,tag=EvtemaHat,limit=1] run summon item_display -35.604416 -27.813136 23.762563 {Tags:["EvtemaHat","LobbyDisplay","PirateHat"],item:{id:"diamond_hoe",tag:{CustomModelData:39},Count:1b},transformation:{translation:[0.0f,1.8f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:2.0f,width:1.0f,Rotation:[-143.12912f,13.0f]}
execute unless entity @e[type=item_display,tag=StuffyHat,limit=1] run summon item_display -36.508239 -27.706403 22.910340 {Tags:["StuffyHat","LobbyDisplay","PirateHat"],item:{id:"diamond_hoe",tag:{CustomModelData:39},Count:1b},transformation:{translation:[0.0f,1.8f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:2.0f,width:1.0f,Rotation:[-173.09488f,-30.0f]}
execute unless entity @e[type=item_display,tag=BlockyHat,limit=1] run summon item_display -37.766797 -27.837961 23.489282 {Tags:["BlockyHat","LobbyDisplay","PirateHat"],item:{id:"diamond_hoe",tag:{CustomModelData:39},Count:1b},transformation:{translation:[0.0f,1.8f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:2.0f,width:1.0f,Rotation:[-179.08362f,-2.2f]}
execute unless entity @e[type=item_display,tag=ParkourHat,limit=1] run summon item_display -73.800627 -21.826783 1.810798 {Tags:["ParkourHat","PirateHat","LobbyDisplay"],item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:61},Count:1b},transformation:{translation:[0.0f,1.8f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:3.0f,width:1.0f,Rotation:[-131.88344f,11.681128f]}

kill @e[type=armor_stand,tag=CarlDeco2,limit=1]
execute unless entity @e[type=item_display,tag=CarlDeco2] run summon item_display -32.244406 -27.999252 23.470547 {Rotation:[140.2422f,-0.73602414f],item:{id:"minecraft:spyglass",Count:1b},Tags:["CarlDeco2","LobbyDisplay"],transformation:{translation:[0.0f,1.8f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:2.0f,width:1.0f}

kill @e[type=armor_stand,tag=StuffyDeco2,limit=1]
execute unless entity @e[type=item_display,tag=StuffyDeco2] run summon item_display -36.651614 -25.487648 23.194982 {Rotation:[-102.30206f,1.4650879f],item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:30},Count:1b},Tags:["LobbyDisplay","StuffyDeco2"],transformation:{translation:[0.0f,0.9f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},item_display:"head",height:1.0f,width:1.0f}

execute as @e[type=item_display,tag=LobbyDisplay] at @s run tp @s ^ ^ ^

execute as @e[type=armor_stand,tag=KlarDeco,tag=!NameUpdated] at @s run function version:1_1_0/creditsfix
execute as @e[type=armor_stand,tag=CarlDeco,tag=!NameUpdated] at @s run function version:1_1_0/creditsfix
execute as @e[type=armor_stand,tag=YZERODeco,tag=!NameUpdated] at @s run function version:1_1_0/creditsfix
execute as @e[type=armor_stand,tag=EvtemaDeco,tag=!NameUpdated] at @s run function version:1_1_0/creditsfix
execute as @e[type=armor_stand,tag=StuffyDeco,tag=!NameUpdated] at @s run function version:1_1_0/creditsfix
execute as @e[type=armor_stand,tag=BlockyDeco,tag=!NameUpdated] at @s run function version:1_1_0/creditsfix

execute as @e[type=wandering_trader,tag=Trader] run function arenaclear:kill
function arenaclear:traders
function arenaclear:villagertrades

setblock -51 -27 -3 air
setblock -51 -27 -3 minecraft:purple_wall_banner[facing=west]{Patterns:[{Color:15,Pattern:"mc"},{Color:10,Pattern:"ls"},{Color:10,Pattern:"rs"},{Color:10,Pattern:"hhb"},{Color:10,Pattern:"ts"},{Color:0,Pattern:"pig"}]}

bossbar set updatebar name ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"1","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar value 1
schedule function version:1_1_0/part2 5t

execute as @a at @s run playsound updateadvance master @s ~ ~ ~ 1 2