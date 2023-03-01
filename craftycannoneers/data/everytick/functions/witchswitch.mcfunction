execute if entity @s[tag=!lchest,tag=!BlastBarrel] run summon villager ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-2147483648,Tags:["newVillager"],PersistenceRequired:1b,Passengers:[{id:"minecraft:marker",Tags:["newVillager"]}]}
execute if entity @s[tag=lchest] run summon villager ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Tags:["newVillager"],PersistenceRequired:1b,Passengers:[{id:"minecraft:marker",Tags:["newVillager"]}]}
execute if entity @s[tag=BlastBarrel] run summon villager ~ ~ ~ {NoAI:1b,Silent:1b,NoGravity:1b,Age:-2147483648,Tags:["newVillager"],PersistenceRequired:1b,ActiveEffects:[{Id:11,Amplifier:100b,Duration:1000000,ShowParticles:0b}],Passengers:[{id:"minecraft:marker",Tags:["newVillager"]}]}
team join NoName @e[type=villager,tag=newVillager,limit=1]
data modify entity @e[type=villager,tag=newVillager,limit=1] Tags set from entity @s data.Tags
data modify entity @e[type=marker,tag=newVillager,limit=1] data.Tags set from entity @s data.Tags
execute if score @s CannonID matches 0.. run scoreboard players operation @e[type=villager,tag=newVillager,limit=1] CannonID = @s CannonID
execute if score @s CannonID matches 0.. run scoreboard players operation @e[type=marker,tag=newVillager,limit=1] CannonID = @s CannonID
execute if entity @s[tag=Tutorial] run tag @e[type=marker,tag=newVillager,limit=1] add Tutorial
tag @e[type=marker,tag=newVillager,limit=1] add villager
tag @e[type=marker,tag=newVillager,limit=1] remove newVillager
kill @s