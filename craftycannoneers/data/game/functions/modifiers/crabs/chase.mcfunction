execute on passengers run tag @s add temp
execute on passengers run ride @s dismount
execute as @e[type=endermite,tag=temp] run function arenaclear:kill
summon cat ~ ~ ~ {Tags:["CrabEntity","CrabVehicle","temp"],variant:"minecraft:calico",Age:-2147483648,Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.max_health",Base:100}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:-1,ShowParticles:0b},{Id:6,Amplifier:100b,Duration:-1,ShowParticles:0b},{Id:13,Amplifier:100b,Duration:-1,ShowParticles:0b}]}
ride @e[type=item_display,tag=temp,limit=1] mount @e[type=cat,tag=temp,limit=1]
data merge entity @e[type=item_display,tag=temp,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.0375f,0f],scale:[1f,1f,1f]},start_interpolation:-1,interpolation_duration:0}
data modify entity @e[type=cat,tag=temp,limit=1] Motion set from entity @s Motion
data modify entity @e[type=cat,tag=temp,limit=1] CustomName set from entity @s CustomName
execute if entity @s[team=Orange] run team join Orange @e[type=cat,tag=temp,limit=1]
execute if entity @s[tag=Orange] run tag @e[type=cat,tag=temp,limit=1] add Orange
execute if entity @s[team=Purple] run team join Purple @e[type=cat,tag=temp,limit=1]
execute if entity @s[tag=Purple] run tag @e[type=cat,tag=temp,limit=1] add Purple
tag @e[type=item_display,tag=temp,limit=1] add chase
tag @e[type=item_display,tag=temp,limit=1] remove temp
tag @e[type=cat,tag=temp,limit=1] remove temp
function arenaclear:kill