summon armor_stand ~ ~ ~ {Tags:["cannon","Orange","CannonDisp","NoID"],Marker:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
summon armor_stand ~ ~ ~ {Tags:["cannon","Orange","GPDispL","GPHolder","NoID"],Marker:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
summon armor_stand ~ ~ ~ {Tags:["cannon","Orange","GPDispR","GPHolder","NoID"],Marker:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
scoreboard players set @e[type=armor_stand,tag=cannon,tag=!Tutorial] CmdData 0

summon villager ~ ~0.5 ~0.3 {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-2147483648,Tags:["CannonVMain","cannon","Orange","NoID"],PersistenceRequired:1b,DeathTime:18s,Passengers:[{id:"minecraft:marker",Tags:["villager","NoID"],data:{Tags:["CannonVMain","cannon","Orange"]}}]}
summon villager ~0.5 ~0.5 ~0.5 {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-2147483648,Tags:["CannonVRight","cannon","Orange","NoID"],PersistenceRequired:1b,DeathTime:18s,Passengers:[{id:"minecraft:marker",Tags:["villager","NoID"],data:{Tags:["CannonVRight","cannon","Orange"]}}]}
summon villager ~-0.5 ~0.5 ~0.5 {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-2147483648,Tags:["CannonVLeft","cannon","Orange","NoID"],PersistenceRequired:1b,DeathTime:18s,Passengers:[{id:"minecraft:marker",Tags:["villager","NoID"],data:{Tags:["CannonVLeft","cannon","Orange"]}}]}

execute as @e[type=armor_stand,tag=cannon,tag=Orange] at @s run tp @s ~ ~ ~ -180 0
execute as @e[type=villager,tag=cannon,tag=Orange] at @s run tp @s ~ ~ ~ -180 0

team join NoName @e[type=villager,tag=cannon]

item replace entity @e[type=armor_stand,tag=CannonDisp,tag=!Tutorial] armor.head with diamond_hoe{CustomModelData:1}

execute as @e[type=villager,tag=NoID] run scoreboard players operation @s CannonID = $current CannonID
execute as @e[type=armor_stand,tag=NoID] run scoreboard players operation @s CannonID = $current CannonID
execute as @e[type=marker,tag=NoID] run scoreboard players operation @s CannonID = $current CannonID
tag @e[type=villager,tag=NoID] remove NoID
tag @e[type=armor_stand,tag=NoID] remove NoID
tag @e[type=marker,tag=NoID] remove NoID
scoreboard players add $current CannonID 1

scoreboard players set @e[type=armor_stand,tag=CannonDisp,tag=!Tutorial] playerUUID 0
scoreboard players set @e[type=armor_stand,tag=CannonDisp,tag=!Tutorial] gravity 0
scoreboard players set @e[type=armor_stand,tag=CannonDisp,tag=!Tutorial] drag 0