execute on passengers run tag @s add temp
execute on passengers run ride @s dismount
execute as @e[type=endermite,tag=temp] run function arenaclear:kill
summon cat ~ ~ ~ {Tags:["CrabEntity","CrabVehicle","temp"],variant:"minecraft:calico",Age:-2147483648,Silent:1b,PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:-1,ShowParticles:0b},{Id:10,Amplifier:100b,Duration:-1,ShowParticles:0b},{Id:13,Amplifier:100b,Duration:-1,ShowParticles:0b}]}
ride @e[type=item_display,tag=temp,limit=1] mount @e[type=cat,tag=temp,limit=1]
data merge entity @e[type=item_display,tag=temp,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.0375f,0f],scale:[1f,1f,1f]},start_interpolation:-1,interpolation_duration:0}
tag @e[type=item_display,tag=temp,limit=1] add chase
tag @e[type=item_display,tag=temp,limit=1] remove temp
tag @e[type=cat,tag=temp,limit=1] remove temp
function arenaclear:kill