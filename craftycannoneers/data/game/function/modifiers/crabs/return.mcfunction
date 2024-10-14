execute on passengers run tag @s remove chase
execute on passengers run tag @s add temp
execute on passengers run ride @s dismount
summon endermite ~ ~ ~ {Tags:["CrabEntity","CrabController","temp"],Lifetime:-2147483648,PlayerSpawned:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b},{id:"minecraft:instant_health",amplifier:100b,duration:-1,show_particles:0b},{id:"minecraft:water_breathing",amplifier:100b,duration:-1,show_particles:0b},{id:"minecraft:weakness",amplifier:100b,duration:-1,show_particles:0b}],Silent:1b,PersistenceRequired:1b,attributes:[{id:"minecraft:follow_range",base:0},{id:"minecraft:max_health",base:100},{id:"minecraft:attack_damage",base:0}]}
ride @e[type=endermite,tag=temp,limit=1] mount @s
ride @e[type=item_display,tag=temp,limit=1] mount @s
execute on passengers run tag @s remove temp