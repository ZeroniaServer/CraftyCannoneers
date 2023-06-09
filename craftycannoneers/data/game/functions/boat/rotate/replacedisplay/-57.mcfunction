#> Replace Cannon Display
summon husk ~ ~0.73125 ~ {Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,IsBaby:1b,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Rotation:[-114.0f,0.0f],Team:"NoName",Tags:["BoatCannonDisplay","BoatCannonEntity","new"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:7,Amplifier:10b,Duration:-1,ShowParticles:0b}]}
ride @e[type=husk,tag=BoatCannonDisplay,tag=new,limit=1] mount @s
execute on passengers run tag @s[type=husk] remove new
execute on vehicle on vehicle run function game:boat/cannon/updategunpowder
execute on passengers run kill @s[type=item_display,tag=BoatCannonDisplay]
execute on passengers run tag @s[type=marker,tag=bcannon] add occupied

