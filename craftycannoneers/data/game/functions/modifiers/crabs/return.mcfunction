execute on passengers run tag @s remove chase
execute on passengers run tag @s add temp
execute on passengers run ride @s dismount
summon endermite ~ ~ ~ {Tags:["CrabEntity","CrabController","temp"],Lifetime:-2147483648,PlayerSpawned:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:-1,ShowParticles:0b},{Id:6,Amplifier:100b,Duration:-1,ShowParticles:0b},{Id:13,Amplifier:100b,Duration:-1,ShowParticles:0b},{Id:18,Amplifier:100b,Duration:-1,ShowParticles:0b}],Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.max_health",Base:100},{Name:"generic.attack_damage",Base:0}]}
ride @e[type=endermite,tag=temp,limit=1] mount @s
ride @e[type=item_display,tag=temp,limit=1] mount @s
execute on passengers run tag @s remove temp