summon armor_stand ~ ~ ~ {Tags:["cannon","Tutorial","CannonDisp","NoID"],Marker:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
summon armor_stand ~ ~ ~ {Tags:["cannon","Tutorial","GPDispL","GPHolder","NoID"],Marker:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
summon armor_stand ~ ~ ~ {Tags:["cannon","Tutorial","GPDispR","GPHolder","NoID"],Marker:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
scoreboard players set @e[type=armor_stand,tag=cannon,tag=Tutorial] CmdData 0

summon villager ~0.3 ~0.5 ~ {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-2147483648,Tags:["CannonVMain","cannon","Tutorial","NoID"],PersistenceRequired:1b,DeathTime:17s,Passengers:[{id:"minecraft:marker",Tags:["villager","NoID","Tutorial"],data:{Tags:["CannonVMain","cannon","Tutorial"]}}]}
summon villager ~0.5 ~0.5 ~-0.5 {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-2147483648,Tags:["CannonVRight","cannon","Tutorial","NoID"],PersistenceRequired:1b,DeathTime:17s,Passengers:[{id:"minecraft:marker",Tags:["villager","NoID","Tutorial"],data:{Tags:["CannonVRight","cannon","Tutorial"]}}]}
summon villager ~0.5 ~0.5 ~0.5 {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-2147483648,Tags:["CannonVLeft","cannon","Tutorial","NoID"],PersistenceRequired:1b,DeathTime:17s,Passengers:[{id:"minecraft:marker",Tags:["villager","NoID","Tutorial"],data:{Tags:["CannonVLeft","cannon","Tutorial"]}}]}

execute as @e[type=armor_stand,tag=cannon,tag=Tutorial] at @s run tp @s ~ ~ ~ 90 0
execute as @e[type=villager,tag=cannon,tag=Tutorial] at @s run tp @s ~ ~ ~ 90 0

team join NoName @e[type=villager,tag=cannon]

item replace entity @e[type=armor_stand,tag=CannonDisp,tag=Tutorial] armor.head with diamond_hoe{CustomModelData:1}

execute as @e[type=villager,tag=NoID] run scoreboard players operation @s CannonID = $current CannonID
execute as @e[type=armor_stand,tag=NoID] run scoreboard players operation @s CannonID = $current CannonID
execute as @e[type=marker,tag=NoID] run scoreboard players operation @s CannonID = $current CannonID
tag @e[type=villager,tag=NoID] remove NoID
tag @e[type=armor_stand,tag=NoID] remove NoID
tag @e[type=marker,tag=NoID] remove NoID
scoreboard players add $current CannonID 1

scoreboard players set @e[type=armor_stand,tag=CannonDisp,tag=Tutorial] playerUUID 0
scoreboard players set @e[type=armor_stand,tag=CannonDisp,tag=Tutorial] gravity 0
scoreboard players set @e[type=armor_stand,tag=CannonDisp,tag=Tutorial] drag 0