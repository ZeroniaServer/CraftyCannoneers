function game:forcestop

bossbar set lobbybar visible false
bossbar add updatebar ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"0","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar color green
bossbar set updatebar players @a
bossbar set updatebar max 6
bossbar set updatebar style notched_6

forceload add -413 -379 -260 -15

execute as @e[type=armor_stand,tag=KlarDeco,limit=1] at @s run tag @e[type=armor_stand,tag=PirateHat,sort=nearest,limit=1] add KlarHat
execute as @e[type=armor_stand,tag=CarlDeco,limit=1] at @s run tag @e[type=armor_stand,tag=PirateHat,sort=nearest,limit=1] add CarlHat
execute as @e[type=armor_stand,tag=YZERODeco,limit=1] at @s run tag @e[type=armor_stand,tag=PirateHat,sort=nearest,limit=1] add YZEROHat
execute as @e[type=armor_stand,tag=EvtemaDeco,limit=1] at @s run tag @e[type=armor_stand,tag=PirateHat,sort=nearest,limit=1] add EvtemaHat
execute as @e[type=armor_stand,tag=StuffyDeco,limit=1] at @s run tag @e[type=armor_stand,tag=PirateHat,sort=nearest,limit=1] add StuffyHat
execute as @e[type=armor_stand,tag=BlockyDeco,limit=1] at @s run tag @e[type=armor_stand,tag=PirateHat,sort=nearest,limit=1] add BlockyHat
execute as @e[type=armor_stand,tag=ParkourAS,limit=1] at @s run tag @e[type=armor_stand,tag=PirateHat,sort=nearest,limit=1] add ParkourHat

execute as @e[type=armor_stand,tag=PirateHat,tag=!110HatPlacement] at @s run tp @s ~ ~0.17 ~
execute as @e[type=armor_stand,tag=EvtemaHat,tag=!110HatPlacement,limit=1] at @s run tp @s ^ ^ ^0.06
execute as @e[type=armor_stand,tag=StuffyHat,tag=!110HatPlacement,limit=1] at @s run tp @s ^ ^-0.06 ^-0.1
execute as @e[type=armor_stand,tag=KlarHat,tag=!110HatPlacement,limit=1] at @s run tp @s ^ ^0.001 ^
execute as @e[type=armor_stand,tag=BlockyHat,tag=!110HatPlacement,limit=1] at @s run tp @s ^ ^0.001 ^
execute as @e[type=armor_stand,tag=ParkourHat,tag=!110HatPlacement,limit=1] at @s run tp @s ^ ^ ^0.04

tag @e[type=armor_stand,tag=PirateHat,tag=!110HatPlacement] add 110HatPlacement

execute as @e[type=armor_stand,tag=KlarDeco,tag=!NameUpdated] at @s run function version:1_1_0/creditsfix
execute as @e[type=armor_stand,tag=CarlDeco,tag=!NameUpdated] at @s run function version:1_1_0/creditsfix
execute as @e[type=armor_stand,tag=YZERODeco,tag=!NameUpdated] at @s run function version:1_1_0/creditsfix
execute as @e[type=armor_stand,tag=EvtemaDeco,tag=!NameUpdated] at @s run function version:1_1_0/creditsfix
execute as @e[type=armor_stand,tag=StuffyDeco,tag=!NameUpdated] at @s run function version:1_1_0/creditsfix
execute as @e[type=armor_stand,tag=BlockyDeco,tag=!NameUpdated] at @s run function version:1_1_0/creditsfix

function arenaclear:traders

bossbar set updatebar name ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"1","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar value 1
schedule function version:1_1_0/part2 5t

execute as @a at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 2