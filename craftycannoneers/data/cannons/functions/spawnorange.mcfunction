summon armor_stand ~ ~ ~ {Tags:["cannon","Purple","CannonDisp"],Marker:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
summon armor_stand ~ ~ ~ {Tags:["cannon","Purple","GPDispL","GPHolder"],Marker:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
summon armor_stand ~ ~ ~ {Tags:["cannon","Purple","GPDispR","GPHolder"],Marker:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
scoreboard players set @e[tag=cannon] CmdData 0

execute as @e[tag=cannon,tag=Purple] at @s run tp @s ~ ~ ~ -180 0

summon villager ~ ~0.5 ~0.3 {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-10000000,Tags:["CannonVMain","cannon"]}
summon villager ~0.5 ~0.5 ~0.5 {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-10000000,Tags:["CannonVLeft","cannon"]}
summon villager ~-0.5 ~0.5 ~0.5 {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-10000000,Tags:["CannonVRight","cannon"]}

item replace entity @e[tag=CannonDisp] armor.head with diamond_hoe{CustomModelData:1}