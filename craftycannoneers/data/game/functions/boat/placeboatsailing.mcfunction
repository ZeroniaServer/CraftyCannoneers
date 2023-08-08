#> Place Boat
$summon boat ~ ~ ~ {Rotation:[$(angle),0.0f],Invulnerable:1b,Tags:["Boat","BoatBoat","new","Rotate","Sailing","motionlock"]}

execute as @e[type=boat,tag=new] at @s run summon interaction ^ ^0.1875 ^0.2 {Tags:["boatoccupant","passenger"],width:0,height:0,response:0b}

$execute as @e[type=boat,tag=new] at @s anchored feet rotated ~ 0 run summon item_display ^ ^0.1875 ^-0.6 {Rotation:[$(angle),0.0f],Tags:["Boat","BoatBanner","new","Rotate"],teleport_duration:3,width:1f,height:2f,item:{id:"minecraft:$(color)_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}},item_display:"head",transformation:{translation:[0.0f,1.6875f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

$execute as @e[type=boat,tag=new] at @s anchored feet rotated ~ 0 run summon item_display ^ ^0.1875 ^-0.6 {Rotation:[$(angle),0.0f],Tags:["BoatCannonDisplay","BoatCannonCart","new"],item_display:"head",teleport_duration:3,transformation:{translation:[0.0f,2.375f,0.425f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4645f,0.4645f,0.4645f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

$execute as @e[type=boat,tag=new] at @s anchored feet rotated ~ 0 run summon item_display ^ ^0.1875 ^-0.6 {Rotation:[$(angle),0.0f],Tags:["BoatCannonDisplay","BoatCannonBarrel","new"],item_display:"head",teleport_duration:3,transformation:{translation:[0.0f,2.375f,0.425f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4645f,0.4645f,0.4645f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}

$execute as @e[type=boat,tag=new,limit=1] at @s anchored feet rotated ~ 0 run summon camel ^ ^0.1875 ^-0.4 {Age:-2147483648,Silent:1b,DeathTime:17s,ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:6,Amplifier:10b,Duration:-1,ShowParticles:0b}],Team:"NoName",PersistenceRequired:1b,NoAI:1b,Rotation:[$(angle),0.0f],Tags:["BoatCannonAnchor","new"]}

execute as @e[type=camel,tag=new,limit=1] at @s anchored feet rotated ~ 0 run summon area_effect_cloud ^ ^0.9 ^0.225 {Duration:20000000,Tags:["BoatCannonOffset","base","new"]}

ride @e[type=area_effect_cloud,tag=base,tag=new,limit=1] mount @e[type=camel,tag=new,limit=1]
ride @e[type=interaction,tag=boatoccupant,tag=passenger,limit=1] mount @e[type=boat,tag=new,limit=1]
ride @e[type=item_display,tag=BoatBanner,tag=new,limit=1] mount @e[type=boat,tag=new,limit=1]
ride @e[type=item_display,tag=BoatCannonBarrel,tag=new,limit=1] mount @e[type=boat,tag=new,limit=1]
ride @e[type=item_display,tag=BoatCannonCart,tag=new,limit=1] mount @e[type=boat,tag=new,limit=1]
ride @e[type=camel,tag=new,limit=1] mount @e[type=boat,tag=new,limit=1]

execute as @e[type=boat,tag=new,limit=1] run function game:boat/removenew