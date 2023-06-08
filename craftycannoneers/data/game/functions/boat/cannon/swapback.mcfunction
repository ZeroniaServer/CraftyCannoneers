execute on passengers if entity @s[tag=BoatCannonBlocker] on passengers run tag @s[tag=BoatCannonDisplay] add temp
execute on passengers if entity @s[tag=BoatCannonBlocker] on passengers run ride @s[tag=BoatCannonDisplay] dismount
execute on passengers on passengers run kill @s
execute on passengers run function arenaclear:kill

execute at @s anchored feet rotated ~ 0 run summon villager ^ ^0.8375 ^0.5 {Team:"NoName",Tags:["BoatCannon","new"],NoAI:1b,Silent:1b,NoGravity:1b,Age:-2147483648,PersistenceRequired:1b,DeathTime:17s,ActiveEffects:[{Id:11,Amplifier:100b,Duration:-1,ShowParticles:0b}],Passengers:[{id:"minecraft:marker",Tags:["villager","bcannon"],data:{Tags:["BoatCannon"]}}]}
execute at @s anchored feet rotated ~ 0 run summon husk ^ ^0.8375 ^-0.7 {Silent:1b,Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,IsBaby:1b,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Team:"NoName",Tags:["BoatCannonBlocker","BoatCannonEntity","new"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}]}

ride @e[type=villager,tag=BoatCannon,tag=new,limit=1] mount @s
execute on passengers run ride @e[type=husk,tag=BoatCannonDisplay,tag=temp,limit=1] mount @s
ride @e[type=husk,tag=BoatCannonBlocker,tag=new,limit=1] mount @s
execute on passengers on passengers run tag @s remove new
execute on passengers run tag @s remove new

tag @s remove swapped