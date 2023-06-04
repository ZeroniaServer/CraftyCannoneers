execute on passengers run tag @s add temp
execute on passengers run ride @s dismount
summon endermite ~ ~ ~ {CustomName:'{"translate":"mob.crab"}',CustomNameVisible:0b,Tags:["CrabEntity","CrabVehicle","temp"],Lifetime:-2147483648,PlayerSpawned:1b,ActiveEffects:[{Id:6,Amplifier:100b,Duration:-1,ShowParticles:0b},{Id:13,Amplifier:100b,Duration:-1,ShowParticles:0b},{Id:18,Amplifier:100b,Duration:-1,ShowParticles:0b}],Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.max_health",Base:100},{Name:"generic.attack_damage",Base:0}],Passengers:[{id:"minecraft:endermite",Tags:["CrabEntity","CrabController","temp"],Lifetime:-2147483648,PlayerSpawned:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:-1,ShowParticles:0b},{Id:6,Amplifier:100b,Duration:-1,ShowParticles:0b},{Id:13,Amplifier:100b,Duration:-1,ShowParticles:0b},{Id:18,Amplifier:100b,Duration:-1,ShowParticles:0b}],Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.max_health",Base:100},{Name:"generic.attack_damage",Base:0}]}]}
ride @e[type=item_display,tag=temp,limit=1] mount @e[type=endermite,tag=temp,limit=1]
data merge entity @e[type=item_display,tag=temp,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},start_interpolation:-1,interpolation_duration:0}
data modify entity @e[type=endermite,tag=CrabVehicle,tag=temp,limit=1] Motion set from entity @s Motion
data modify entity @e[type=endermite,tag=CrabVehicle,tag=temp,limit=1] CustomName set from entity @s CustomName
data modify entity @e[type=endermite,tag=CrabVehicle,tag=temp,limit=1] CustomNameVisible set from entity @s CustomNameVisible
execute if entity @s[tag=CrabtrapImmune] run tag @e[type=endermite,tag=CrabVehicle,tag=temp,limit=1] add CrabtrapImmune
execute if entity @s[tag=CrabtrapImmune] run scoreboard players operation @e[type=endermite,tag=CrabVehicle,tag=temp,limit=1] eyeclick = @s eyeclick
team join NoName @e[type=endermite,tag=temp]
execute if entity @s[team=Orange] run team join Orange @e[type=endermite,tag=temp]
execute if entity @s[tag=Orange] run tag @e[type=endermite,tag=temp] add Orange
execute if entity @s[team=Purple] run team join Purple @e[type=endermite,tag=temp]
execute if entity @s[tag=Purple] run tag @e[type=endermite,tag=temp] add Purple
execute if entity @s[tag=Purple] run tag @e[type=endermite,tag=temp] add Purple
tag @e[type=item_display,tag=temp,limit=1] remove chase
tag @e[type=item_display,tag=temp,limit=1] remove temp
tag @e[type=endermite,tag=temp] remove temp
function arenaclear:kill