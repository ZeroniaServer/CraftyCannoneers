execute if entity @s[tag=!bbarrel,tag=!bcannon] run summon villager ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-2147483648,Tags:["newVillager"],PersistenceRequired:1b,DeathTime:17s,Passengers:[{id:"minecraft:marker",Tags:["newVillager"]}]}
execute unless entity @s[tag=!bbarrel,tag=!bcannon] run summon villager ~ ~ ~ {NoAI:1b,Silent:1b,NoGravity:1b,Age:-2147483648,Tags:["newVillager"],PersistenceRequired:1b,DeathTime:17s,ActiveEffects:[{Id:11,Amplifier:100b,Duration:-1,ShowParticles:0b}],Passengers:[{id:"minecraft:marker",Tags:["newVillager"]}]}
team join NoName @e[type=villager,tag=newVillager,limit=1]
execute if entity @s[tag=bcannon] run ride @e[type=interaction,tag=BoatCannonBlocker,predicate=!game:mounted,limit=1,sort=nearest] mount @e[type=villager,tag=newVillager,limit=1]
execute if entity @s[tag=bcannon,tag=!occupied] run ride @e[type=item_display,tag=BoatCannonDisplay,predicate=!game:mounted,limit=1,sort=nearest] mount @e[type=villager,tag=newVillager,limit=1]
execute if entity @s[tag=bcannon,tag=occupied] run ride @e[type=husk,tag=BoatCannonDisplay,predicate=!game:mounted,limit=1,sort=nearest] mount @e[type=villager,tag=newVillager,limit=1]
execute if entity @s[tag=bcannon] run ride @e[type=villager,tag=newVillager,limit=1] mount @e[type=camel,tag=BoatCannonAnchor,sort=nearest,limit=1]
execute if entity @s[tag=bcannon] run data merge entity @e[type=villager,tag=newVillager,limit=1] {Invulnerable:1b}
data modify entity @e[type=villager,tag=newVillager,limit=1] Tags set from entity @s data.Tags
data modify entity @e[type=marker,tag=newVillager,limit=1] data.Tags set from entity @s data.Tags
execute if score @s CannonID matches 0.. run scoreboard players operation @e[type=villager,tag=newVillager,limit=1] CannonID = @s CannonID
execute if score @s CannonID matches 0.. run scoreboard players operation @e[type=marker,tag=newVillager,limit=1] CannonID = @s CannonID
execute if entity @s[tag=Tutorial] run tag @e[type=marker,tag=newVillager,limit=1] add Tutorial
tag @e[type=marker,tag=newVillager,limit=1] add villager
execute if entity @s[tag=bcannon] run tag @e[type=marker,tag=newVillager,limit=1] add bcannon
execute if entity @s[tag=bcannon,tag=occupied] run tag @e[type=marker,tag=newVillager,limit=1] add occupied
execute if entity @s[tag=bbarrel] run tag @e[type=marker,tag=newVillager,limit=1] add bbarrel
tag @e[type=marker,tag=newVillager,limit=1] remove newVillager
kill @s