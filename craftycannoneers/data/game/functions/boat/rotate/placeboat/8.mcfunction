#> Place Boat
summon boat ~ ~ ~ {Rotation:[16.0f,0.0f],Invulnerable:1b,Tags:["Boat","BoatBoat","new","Rotate"],Passengers:[{id:"minecraft:interaction",Tags:["boatoccupant"],width:2,height:1,response:1b}]}

execute as @e[type=boat,tag=new] at @s anchored feet rotated ~ 0 run summon armor_stand ^ ^-0.1 ^-0.6 {Rotation:[16.0f,0.0f],Tags:["Boat","BoatAS","new","Rotate"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]}

execute if score $BoatCannons CmdData matches 1 as @e[type=boat,tag=new,limit=1] at @s anchored feet rotated ~ 0 run summon camel ^ ^0.04 ^-0.4 {Age:-2147483648,Silent:1b,DeathTime:17s,ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:6,Amplifier:10b,Duration:-1,ShowParticles:0b}],Team:"NoName",PersistenceRequired:1b,NoAI:1b,Rotation:[16.0f,0.0f],Tags:["BoatCannonAnchor","new"]}

execute if score $BoatCannons CmdData matches 1 as @e[type=camel,tag=new,limit=1] at @s anchored feet rotated ~ 0 run summon area_effect_cloud ^ ^0.8375 ^0.5 {Duration:20000000,Tags:["BoatCannonOffset","base","new"]}

execute if score $BoatCannons CmdData matches 1 at @e[type=area_effect_cloud,tag=base,tag=new,limit=1] run summon interaction ~ ~0.375 ~ {Tags:["BoatCannon","new"],response:0b,width:0,height:0}

execute if score $BoatCannons CmdData matches 1 at @e[type=area_effect_cloud,tag=base,tag=new,limit=1] run summon area_effect_cloud ~ ~0.375 ~ {Duration:20000000,Tags:["BoatCannonOffset","extend","new"]}

execute if score $BoatCannons CmdData matches 1 at @e[type=area_effect_cloud,tag=base,tag=new,limit=1] run summon item_display ~ ~0.75 ~ {width:1f,height:1f,Rotation:[16.0f,0.0f],Tags:["BoatCannonDisplay","new"]}

execute if score $BoatCannons CmdData matches 1 run data merge entity @e[type=item_display,tag=BoatCannonDisplay,tag=new,limit=1] {start_interpolation:0,interpolation_duration:0,item_display:"head",transformation:{scale:[0.4645f,0.4645f,0.4645f],translation:[0.0f,1.00375f,0.0f]}}

execute if score $BoatCannons CmdData matches 1 run ride @e[type=item_display,tag=BoatCannonDisplay,tag=new,limit=1] mount @e[type=area_effect_cloud,tag=extend,tag=new,limit=1]
execute if score $BoatCannons CmdData matches 1 run ride @e[type=area_effect_cloud,tag=extend,tag=new,limit=1] mount @e[type=area_effect_cloud,tag=base,tag=new,limit=1]
execute if score $BoatCannons CmdData matches 1 run ride @e[type=interaction,tag=new,limit=1] mount @e[type=area_effect_cloud,tag=base,tag=new,limit=1]
execute if score $BoatCannons CmdData matches 1 run ride @e[type=area_effect_cloud,tag=base,tag=new,limit=1] mount @e[type=camel,tag=new,limit=1]
ride @e[type=armor_stand,tag=new,limit=1] mount @e[type=boat,tag=new,limit=1]
execute if score $BoatCannons CmdData matches 1 run ride @e[type=camel,tag=new,limit=1] mount @e[type=boat,tag=new,limit=1]

execute if score $BoatCannons CmdData matches 1 as @e[type=boat,tag=new,limit=1] run function cannons:accuracy/randomaccuracy
execute as @e[type=boat,tag=new,limit=1] run function game:boat/removenew
