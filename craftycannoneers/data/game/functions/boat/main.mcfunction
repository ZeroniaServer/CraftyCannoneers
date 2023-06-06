#> Banner
execute as @e[type=armor_stand,tag=BoatAS] at @s run function game:boat/banner

#> Tag player in boat
tag @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat1,limit=1] add inBoat1
tag @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat2,limit=1] add inBoat2
tag @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat3,limit=1] add inBoat3
tag @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:boat/inboat4,limit=1] add inBoat4
execute as @a unless entity @s[team=!Lobby,team=!Spectator,team=!Developer] run function game:boat/removetags

#> Boat
execute as @e[type=boat,tag=BoatBoat] at @s run function game:boat/boat

#> Respawning (failsafe)
execute unless score $BoatCannons CmdData matches 1 if entity @a unless entity @e[type=boat,tag=BoatBoat,tag=1] run summon boat 109 -30 0 {Invulnerable:1b,Tags:["Boat","BoatBoat","1"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New","1"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]}]}
execute unless score $BoatCannons CmdData matches 1 if entity @a unless entity @e[type=boat,tag=BoatBoat,tag=2] run summon boat 31 -30 0 {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","2"],Passengers:[{id:"minecraft:armor_stand",Rotation:[180.0f,0.0f],Tags:["Boat","BoatAS","New","2"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]}]}
execute unless score $BoatCannons CmdData matches 1 if entity @a unless entity @e[type=boat,tag=BoatBoat,tag=3] run summon boat 83 -30 12 {Invulnerable:1b,Tags:["Boat","BoatBoat","3"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New","3"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]}]}
execute unless score $BoatCannons CmdData matches 1 if entity @a unless entity @e[type=boat,tag=BoatBoat,tag=4] run summon boat 57 -30 -12 {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","4"],Passengers:[{id:"minecraft:armor_stand",Rotation:[180.0f,0.0f],Tags:["Boat","BoatAS","New","4"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]}]}

execute if score $BoatCannons CmdData matches 1 if entity @a unless entity @e[type=boat,tag=BoatBoat,tag=1] run summon boat 109 -30 0 {Invulnerable:1b,Tags:["Boat","BoatBoat","1"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New","1"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}],Passengers:[{id:"minecraft:interaction",Tags:["BoatCannon"],width:0,height:0,response:0b},{id:"minecraft:husk",Silent:1b,Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,IsBaby:1b,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Team:"NoName",Tags:["BoatCannonDisplay"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1,tag:{CustomModelData:1}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}]}]}]}
execute if score $BoatCannons CmdData matches 1 if entity @a unless entity @e[type=boat,tag=BoatBoat,tag=2] run summon boat 31 -30 0 {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","2"],Passengers:[{id:"minecraft:armor_stand",Rotation:[180.0f,0.0f],Tags:["Boat","BoatAS","New","2"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}],Passengers:[{id:"minecraft:interaction",Tags:["BoatCannon"],width:0,height:0,response:0b},{id:"minecraft:husk",Silent:1b,Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,IsBaby:1b,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Rotation:[180.0f,0.0f],Team:"NoName",Tags:["BoatCannonDisplay"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1,tag:{CustomModelData:1}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}]}]}]}
execute if score $BoatCannons CmdData matches 1 if entity @a unless entity @e[type=boat,tag=BoatBoat,tag=3] run summon boat 83 -30 12 {Invulnerable:1b,Tags:["Boat","BoatBoat","3"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New","3"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}],Passengers:[{id:"minecraft:interaction",Tags:["BoatCannon"],width:0,height:0,response:0b},{id:"minecraft:husk",Silent:1b,Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,IsBaby:1b,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Team:"NoName",Tags:["BoatCannonDisplay"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1,tag:{CustomModelData:1}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}]}]}]}
execute if score $BoatCannons CmdData matches 1 if entity @a unless entity @e[type=boat,tag=BoatBoat,tag=4] run summon boat 57 -30 -12 {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","4"],Passengers:[{id:"minecraft:armor_stand",Rotation:[180.0f,0.0f],Tags:["Boat","BoatAS","New","4"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}],Passengers:[{id:"minecraft:interaction",Tags:["BoatCannon"],width:0,height:0,response:0b},{id:"minecraft:husk",Silent:1b,Invulnerable:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,IsBaby:1b,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Rotation:[180.0f,0.0f],Team:"NoName",Tags:["BoatCannonDisplay"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1,tag:{CustomModelData:1}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}]}]}]}