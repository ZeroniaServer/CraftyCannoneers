execute if entity @s[type=boat] run summon boat ~ ~ ~ {Rotation:[133.0f,0.0f],Invulnerable:1b,Tags:["Boat","BoatBoat","new","Rotate"],Passengers:[{id:"minecraft:interaction",Tags:["boatoccupant"],width:2,height:1,response:1b}]}

execute if entity @s[type=boat] as @e[type=boat,tag=new] at @s anchored feet rotated ~ 0 run summon armor_stand ^ ^-0.1 ^-0.6 {Rotation:[133.0f,0.0f],Tags:["Boat","BoatAS","new","Rotate"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]}

execute if entity @s[type=boat] if score $BoatCannons CmdData matches 1 as @e[type=boat,tag=new] at @s anchored feet rotated ~ 0 run summon camel ^ ^0.04 ^-0.4 {Age:-2147483648,Silent:1b,DeathTime:17s,Invulnerable:1b,Team:"NoName",PersistenceRequired:1b,NoAI:1b,Rotation:[133.0f,0.0f],Tags:["BoatCannonAnchor","new"]}

execute if entity @s[type=boat] if score $BoatCannons CmdData matches 1 as @e[type=camel,tag=new] at @s anchored feet rotated ~ 0 run summon villager ^ ^0.8375 ^0.5 {Team:"NoName",Tags:["BoatCannon","new"],NoAI:1b,Silent:1b,NoGravity:1b,Age:-2147483648,PersistenceRequired:1b,DeathTime:17s,ActiveEffects:[{Id:11,Amplifier:100b,Duration:-1,ShowParticles:0b}],Passengers:[{id:"minecraft:marker",Tags:["villager","bcannon"],data:{Tags:["BoatCannon"]}},{id:"minecraft:interaction",Tags:["BoatCannonBlocker"],width:0f,height:0f,response:0b}]}

execute if entity @s[type=boat] if score $BoatCannons CmdData matches 1 as @e[type=villager,tag=new] at @s run summon item_display ~ ~0.73125 ~ {Rotation:[133.0f,0.0f],Tags:["BoatCannonDisplay","new"]}

execute if entity @s[type=boat] if score $BoatCannons CmdData matches 1 run ride @e[type=item_display,tag=BoatCannonDisplay,tag=new,limit=1] mount @e[type=villager,tag=new,limit=1]
execute if entity @s[type=boat] if score $BoatCannons CmdData matches 1 run data merge entity @e[type=item_display,tag=BoatCannonDisplay,tag=new,limit=1] {start_interpolation:0,interpolation_duration:0,item_display:"head",transformation:{scale:[0.4645f,0.4645f,0.4645f],translation:[0.0f,1.00375f,0.0f]}}

execute if entity @s[type=boat] if score $BoatCannons CmdData matches 1 run ride @e[type=villager,tag=new,limit=1] mount @e[type=camel,tag=new,limit=1]
execute if entity @s[type=boat] run ride @e[type=armor_stand,tag=new,limit=1] mount @e[type=boat,tag=new,limit=1]
execute if entity @s[type=boat] if score $BoatCannons CmdData matches 1 run ride @e[type=camel,tag=new,limit=1] mount @e[type=boat,tag=new,limit=1]

execute if entity @s[type=boat] if score $BoatCannons CmdData matches 1 run tag @e[type=villager,tag=new] remove new
execute if entity @s[type=boat] if score $BoatCannons CmdData matches 1 run tag @e[type=camel,tag=new] remove new
execute if entity @s[type=boat] if score $BoatCannons CmdData matches 1 run tag @e[type=item_display,tag=BoatCannonDisplay,tag=new] remove new
execute if entity @s[type=boat] run tag @e[type=armor_stand,tag=new] remove new
execute if entity @s[type=boat] run tag @e[type=boat,tag=new] remove new

execute at @s[type=villager,tag=BoatCannon] run summon husk ~ ~0.73125 ~ {Silent:1b,Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,IsBaby:1b,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Rotation:[133.0f,0.0f],Team:"NoName",Tags:["BoatCannonDisplay","new"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}]}
execute if entity @s[type=villager,tag=BoatCannon] run ride @e[type=husk,tag=BoatCannonDisplay,tag=new,limit=1] mount @s
execute if entity @s[type=villager,tag=BoatCannon] on passengers run tag @s[type=husk] remove new
execute if entity @s[type=villager,tag=BoatCannon] on vehicle on vehicle run function game:boat/cannon/updategunpowder
execute if entity @s[type=villager,tag=BoatCannon] on passengers run kill @s[type=item_display,tag=BoatCannonDisplay]
execute if entity @s[type=villager,tag=BoatCannon] on passengers run tag @s[type=marker,tag=bcannon] add occupied