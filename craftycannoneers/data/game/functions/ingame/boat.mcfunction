execute as @e[tag=BoatAS] at @s run data modify entity @s Rotation set from entity @e[type=boat,limit=1,sort=nearest,distance=..1] Rotation
execute as @e[tag=BoatBoat,tag=!Sinking] at @s if entity @a[nbt={RootVehicle:{}},distance=..1] run tag @s add Sailing
execute as @e[tag=BoatAS] at @s if entity @a[team=Purple,nbt={RootVehicle:{}},distance=..1] run item replace entity @s armor.head with purple_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:10},{Pattern:ls,Color:10},{Pattern:ts,Color:10},{Pattern:hhb,Color:10},{Pattern:sku,Color:0}]}}
execute as @e[tag=BoatAS] at @s if entity @a[team=Orange,nbt={RootVehicle:{}},distance=..1] run item replace entity @s armor.head with orange_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:1},{Pattern:ls,Color:1},{Pattern:hhb,Color:1},{Pattern:ts,Color:1},{Pattern:sku,Color:0}]}}

execute as @e[tag=BoatBoat,tag=!Sinking,tag=Sailing,tag=1] at @s unless data entity @s Passengers[1] run summon boat ~ ~0.2 ~ {Invulnerable:1b,Tags:["Boat","BoatBoat","1"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[tag=BoatBoat,tag=!Sinking,tag=Sailing,tag=2] at @s unless data entity @s Passengers[1] run summon boat ~ ~0.2 ~ {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","2"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[tag=BoatBoat,tag=!Sinking,tag=Sailing,tag=3] at @s unless data entity @s Passengers[1] run summon boat ~ ~0.2 ~ {Invulnerable:1b,Tags:["Boat","BoatBoat","3"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[tag=BoatBoat,tag=!Sinking,tag=Sailing,tag=4] at @s unless data entity @s Passengers[1] run summon boat ~ ~0.2 ~ {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","4"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[tag=BoatBoat,tag=!Sinking,tag=Sailing] at @s unless data entity @s Passengers[1] run kill @e[tag=BoatAS,limit=1,sort=nearest,distance=..3,tag=!New]
execute as @e[tag=BoatBoat,tag=!Sinking,tag=Sailing] at @s unless data entity @s Passengers[1] run kill @s

tag @e[tag=BoatAS,tag=New] remove New




execute unless entity @e[tag=BoatBoat,tag=1,tag=Sailing] positioned 109 -31 0 unless entity @e[tag=BoatBoat,tag=1,distance=..8] as @e[tag=BoatBoat,tag=1] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..12] run tag @e[tag=BoatBoat,tag=1] add Sinking
execute unless entity @e[tag=BoatBoat,tag=2,tag=Sailing] positioned 31 -31 0 unless entity @e[tag=BoatBoat,tag=2,distance=..8] as @e[tag=BoatBoat,tag=2] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..12] run tag @e[tag=BoatBoat,tag=2] add Sinking
execute unless entity @e[tag=BoatBoat,tag=3,tag=Sailing] positioned 83 -31 12 unless entity @e[tag=BoatBoat,tag=3,distance=..8] as @e[tag=BoatBoat,tag=3] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..12] run tag @e[tag=BoatBoat,tag=3] add Sinking
execute unless entity @e[tag=BoatBoat,tag=4,tag=Sailing] positioned 57 -31 -12 unless entity @e[tag=BoatBoat,tag=4,distance=..8] as @e[tag=BoatBoat,tag=4] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..12] run tag @e[tag=BoatBoat,tag=4] add Sinking

scoreboard players add @e[tag=Boat,tag=Sinking] CmdData 1
execute as @e[tag=BoatBoat,tag=Sinking,scores={CmdData=1}] at @s run particle minecraft:bubble_column_up ~ ~ ~ 0.8 0.2 0.8 0.1 10 force
execute as @e[tag=BoatBoat,tag=Sinking,scores={CmdData=1}] at @s run particle minecraft:splash ~ ~1 ~ 0.4 0.5 0.4 0.1 100 force
execute as @e[tag=BoatBoat,tag=Sinking,scores={CmdData=1}] at @s run playsound minecraft:entity.generic.swim master @a ~ ~ ~ 1 0.8
execute as @e[tag=BoatBoat,tag=Sinking,scores={CmdData=1}] at @s run playsound minecraft:entity.generic.swim master @a ~ ~ ~ 1 1
execute as @e[tag=BoatBoat,tag=Sinking,scores={CmdData=1}] at @s run data merge entity @s {Motion:[0.0d,-2.0d,0.0d]}
execute as @e[tag=BoatBoat,tag=Sinking,scores={CmdData=20..}] at @s run kill @e[tag=BoatAS,tag=!New,limit=1,sort=nearest,distance=..3]
execute as @e[tag=BoatBoat,tag=Sinking,tag=1,scores={CmdData=20..}] at @s run summon boat 109 -30 0 {Invulnerable:1b,Tags:["Boat","BoatBoat","1"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[tag=BoatBoat,tag=Sinking,tag=2,scores={CmdData=20..}] at @s run summon boat 31 -30 0 {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","2"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[tag=BoatBoat,tag=Sinking,tag=3,scores={CmdData=20..}] at @s run summon boat 83 -30 12 {Invulnerable:1b,Tags:["Boat","BoatBoat","3"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[tag=BoatBoat,tag=Sinking,tag=4,scores={CmdData=20..}] at @s run summon boat 57 -30 -12 {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","4"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[tag=BoatBoat,tag=Sinking,scores={CmdData=20..}] at @s run kill @s

#> Lilypads
execute positioned 96 -31 8 unless block 96 -31 8 lily_pad unless entity @e[type=boat,distance=..6] run playsound minecraft:block.lily_pad.place master @a ~ ~ ~ 0.4 1.3
execute positioned 96 -31 8 unless block 96 -31 8 lily_pad unless entity @e[type=boat,distance=..6] run setblock 96 -31 8 lily_pad

execute positioned 98 -31 -10 unless block 98 -31 -10 lily_pad unless entity @e[type=boat,distance=..6] run playsound minecraft:block.lily_pad.place master @a ~ ~ ~ 0.4 1.3
execute positioned 98 -31 -10 unless block 98 -31 -10 lily_pad unless entity @e[type=boat,distance=..6] run setblock 98 -31 -10 lily_pad

execute positioned 89 -31 -17 unless block 89 -31 -17 lily_pad unless entity @e[type=boat,distance=..6] run playsound minecraft:block.lily_pad.place master @a ~ ~ ~ 0.4 1.3
execute positioned 89 -31 -17 unless block 89 -31 -17 lily_pad unless entity @e[type=boat,distance=..6] run setblock 89 -31 -17 lily_pad

execute positioned 44 -31 -8 unless block 44 -31 -8 lily_pad unless entity @e[type=boat,distance=..6] run playsound minecraft:block.lily_pad.place master @a ~ ~ ~ 0.4 1.3
execute positioned 44 -31 -8 unless block 44 -31 -8 lily_pad unless entity @e[type=boat,distance=..6] run setblock 44 -31 -8 lily_pad

execute positioned 42 -31 10 unless block 42 -31 10 lily_pad unless entity @e[type=boat,distance=..6] run playsound minecraft:block.lily_pad.place master @a ~ ~ ~ 0.4 1.3
execute positioned 42 -31 10 unless block 42 -31 10 lily_pad unless entity @e[type=boat,distance=..6] run setblock 42 -31 10 lily_pad

execute positioned 51 -31 17 unless block 51 -31 17 lily_pad unless entity @e[type=boat,distance=..6] run playsound minecraft:block.lily_pad.place master @a ~ ~ ~ 0.4 1.3
execute positioned 51 -31 17 unless block 51 -31 17 lily_pad unless entity @e[type=boat,distance=..6] run setblock 51 -31 17 lily_pad