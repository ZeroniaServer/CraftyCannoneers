summon armor_stand ~ ~ ~ {Tags:["cannon","Orange","CannonDisp","NoID"],Marker:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
summon armor_stand ~ ~ ~ {Tags:["cannon","Orange","GPDispL","GPHolder","NoID"],Marker:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
summon armor_stand ~ ~ ~ {Tags:["cannon","Orange","GPDispR","GPHolder","NoID"],Marker:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
scoreboard players set @e[type=#game:cannon,tag=cannon] CmdData 0

execute as @e[type=#game:cannon,tag=cannon,tag=Orange] at @s run tp @s ~ ~ ~ -180 0

summon villager ~ ~0.5 ~0.3 {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-10000000,Tags:["CannonVMain","cannon","NoID"]}
summon villager ~0.5 ~0.5 ~0.5 {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-10000000,Tags:["CannonVRight","cannon","NoID"]}
summon villager ~-0.5 ~0.5 ~0.5 {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-10000000,Tags:["CannonVLeft","cannon","NoID"]}

item replace entity @e[type=armor_stand,tag=CannonDisp] armor.head with diamond_hoe{CustomModelData:1}

execute as @e[type=villager,tag=NoID] run scoreboard players operation @s CannonID = $current CannonID
execute as @e[type=armor_stand,tag=NoID] run scoreboard players operation @s CannonID = $current CannonID
tag @e[type=villager,tag=NoID] remove NoID
tag @e[type=armor_stand,tag=NoID] remove NoID
scoreboard players add $current CannonID 1

scoreboard players set @e[type=armor_stand,tag=CannonDisp] playerUUID 0