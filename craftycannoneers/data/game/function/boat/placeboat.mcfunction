#> Place Boat
$summon oak_boat ~ ~ ~ {Rotation:[$(angle)f,0.0f],Invulnerable:1b,Tags:["Boat","BoatBoat","new","Rotate"],Passengers:[{id:"minecraft:interaction",Tags:["boatoccupant","new"],width:0,height:0,response:1b}]}

$execute as @e[type=oak_boat,tag=new] at @s anchored feet rotated ~ 0 run summon item_display ^ ^0.1875 ^-0.6 {Rotation:[$(angle)f,0.0f],Tags:["Boat","BoatBanner","new","Rotate"],teleport_duration:3,width:1f,height:2f,item:{id:"minecraft:black_banner",count:1,components:{"minecraft:banner_patterns":[{pattern:"minecraft:skull",color:"white"}]}},item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

$execute if score $BoatCannons CmdData matches 1 as @e[type=oak_boat,tag=new] at @s anchored feet rotated ~ 0 run summon item_display ^ ^0.1875 ^-0.6 {Rotation:[$(angle)f,0.0f],Tags:["BoatCannonDisplay","BoatCannonCart","new"],item_display:"head",item:{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":{floats:[133.0f]}}},teleport_duration:3,transformation:{translation:[0.0f,2.375f,0.425f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4645f,0.4645f,0.4645f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

$execute if score $BoatCannons CmdData matches 1 as @e[type=oak_boat,tag=new] at @s anchored feet rotated ~ 0 run summon item_display ^ ^0.1875 ^-0.6 {Rotation:[$(angle)f,0.0f],Tags:["BoatCannonDisplay","BoatCannonBarrel","new"],item_display:"head",teleport_duration:3,transformation:{translation:[0.0f,2.375f,0.425f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4645f,0.4645f,0.4645f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

$execute if score $BoatCannons CmdData matches 1 as @e[type=oak_boat,tag=new,limit=1] at @s anchored feet rotated ~ 0 run summon camel ^ ^0.1875 ^-0.4 {Age:-2147483648,Silent:1b,DeathTime:17s,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:instant_health",amplifier:10b,duration:-1,show_particles:0b}],Team:"NoName",PersistenceRequired:1b,NoAI:1b,Rotation:[$(angle)f,0.0f],Tags:["BoatCannonAnchor","new"]}

execute if score $BoatCannons CmdData matches 1 as @e[type=camel,tag=new,limit=1] at @s anchored feet rotated ~ 0 run summon area_effect_cloud ^ ^0.9 ^0.225 {Duration:20000000,Tags:["BoatCannonOffset","base","new"],custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f}

execute if score $BoatCannons CmdData matches 1 run ride @e[type=area_effect_cloud,tag=base,tag=new,limit=1] mount @e[type=camel,tag=new,limit=1]
ride @e[type=item_display,tag=BoatBanner,tag=new,limit=1] mount @e[type=oak_boat,tag=new,limit=1]
execute if score $BoatCannons CmdData matches 1 run ride @e[type=item_display,tag=BoatCannonBarrel,tag=new,limit=1] mount @e[type=oak_boat,tag=new,limit=1]
execute if score $BoatCannons CmdData matches 1 run ride @e[type=item_display,tag=BoatCannonCart,tag=new,limit=1] mount @e[type=oak_boat,tag=new,limit=1]
execute if score $BoatCannons CmdData matches 1 run ride @e[type=camel,tag=new,limit=1] mount @e[type=oak_boat,tag=new,limit=1]

execute if score $BoatCannons CmdData matches 1 as @e[type=oak_boat,tag=new,limit=1] run function cannons:accuracy/randomaccuracy

execute as @e[type=oak_boat,tag=new,limit=1] run function game:boat/removenew