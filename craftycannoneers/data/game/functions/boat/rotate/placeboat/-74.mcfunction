#> Place Boat
summon boat ~ ~ ~ {Rotation:[-148.0f,0.0f],Invulnerable:1b,Tags:["Boat","BoatBoat","new","Rotate"],Passengers:[{id:"minecraft:interaction",Tags:["boatoccupant"],width:0,height:0,response:1b}]}

execute as @e[type=boat,tag=new] at @s anchored feet rotated ~ 0 run summon item_display ^ ^-0.1 ^-0.6 {Rotation:[-148.0f,0.0f],Tags:["Boat","BoatBanner","new","Rotate"],width:1f,height:2f,item:{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}},item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},Passengers:[{id:"item_display",width:1f,height:2f,Tags:["Boat","BoatBanner2"],item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}]}

execute if score $BoatCannons CmdData matches 1 as @e[type=boat,tag=new,limit=1] at @s anchored feet rotated ~ 0 run summon camel ^ ^0.04 ^-0.4 {Age:-2147483648,Silent:1b,DeathTime:17s,ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:6,Amplifier:10b,Duration:-1,ShowParticles:0b}],Team:"NoName",PersistenceRequired:1b,NoAI:1b,Rotation:[-148.0f,0.0f],Tags:["BoatCannonAnchor","new"]}

execute if score $BoatCannons CmdData matches 1 as @e[type=camel,tag=new,limit=1] at @s anchored feet rotated ~ 0 run summon area_effect_cloud ^ ^0.8375 ^0.5 {Duration:20000000,Tags:["BoatCannonOffset","base","new"]}

execute if score $BoatCannons CmdData matches 1 at @e[type=area_effect_cloud,tag=base,tag=new,limit=1] run summon area_effect_cloud ~ ~0.375 ~ {Duration:20000000,Tags:["BoatCannonOffset","extend","new"]}

execute if score $BoatCannons CmdData matches 1 at @e[type=area_effect_cloud,tag=base,tag=new,limit=1] run summon item_display ~ ~0.75 ~ {Rotation:[-148.0f,0.0f],Tags:["BoatCannonDisplay","new"],item_display:"head",transformation:{translation:[0.0f,1.00375f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4645f,0.4645f,0.4645f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},Passengers:[{id:"item_display",Tags:["BoatCannonDisplay"],item_display:"head",transformation:{translation:[0.0f,1.00375f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4645f,0.4645f,0.4645f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}]}

execute if score $BoatCannons CmdData matches 1 run ride @e[type=item_display,tag=BoatCannonDisplay,tag=new,limit=1] mount @e[type=area_effect_cloud,tag=extend,tag=new,limit=1]
execute if score $BoatCannons CmdData matches 1 run ride @e[type=area_effect_cloud,tag=extend,tag=new,limit=1] mount @e[type=area_effect_cloud,tag=base,tag=new,limit=1]
execute if score $BoatCannons CmdData matches 1 run ride @e[type=area_effect_cloud,tag=base,tag=new,limit=1] mount @e[type=camel,tag=new,limit=1]
ride @e[type=item_display,tag=BoatBanner,tag=new,limit=1] mount @e[type=boat,tag=new,limit=1]
execute if score $BoatCannons CmdData matches 1 run ride @e[type=camel,tag=new,limit=1] mount @e[type=boat,tag=new,limit=1]

execute if score $BoatCannons CmdData matches 1 as @e[type=boat,tag=new,limit=1] run function cannons:accuracy/randomaccuracy
execute as @e[type=boat,tag=new,limit=1] run function game:boat/removenew
