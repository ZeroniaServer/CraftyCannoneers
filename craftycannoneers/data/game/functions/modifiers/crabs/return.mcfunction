execute on passengers run tag @s remove chase
execute on passengers run tag @s add temp
execute on passengers run ride @s dismount
summon endermite ~ ~ ~ {Tags:["CrabEntity","CrabController","temp"],Lifetime:-2147483648,PlayerSpawned:1b,active_effects:[{id:"minecraft_invisibility",amplifier:0b,duration:-1,show_particles:0b},{id:"minecraft:instant_health",amplifier:100b,duration:-1,show_particles:0b},{id:"minecraft:water_breathing",amplifier:100b,duration:-1,show_particles:0b},{id:"minecraft:weakness",amplifier:100b,duration:-1,show_particles:0b}],Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.max_health",Base:100},{Name:"generic.attack_damage",Base:0}]}
ride @e[type=endermite,tag=temp,limit=1] mount @s
ride @e[type=item_display,tag=temp,limit=1] mount @s
execute on passengers run tag @s remove temp