execute as @e[type=armor_stand,tag=BoatAS] at @s run data modify entity @s Rotation set from entity @e[type=boat,limit=1,sort=nearest,distance=..1] Rotation
execute as @e[type=boat,tag=BoatBoat,tag=!Sinking] at @s if entity @a[nbt={RootVehicle:{}},distance=..1.5] run tag @s add Sailing
execute as @e[type=armor_stand,tag=BoatAS] at @s if entity @a[team=Purple,nbt={RootVehicle:{}},distance=..1.5] run item replace entity @s armor.head with purple_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:10},{Pattern:ls,Color:10},{Pattern:ts,Color:10},{Pattern:hhb,Color:10},{Pattern:sku,Color:0}]}}
execute as @e[type=armor_stand,tag=BoatAS] at @s if entity @a[team=Orange,nbt={RootVehicle:{}},distance=..1.5] run item replace entity @s armor.head with orange_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:1},{Pattern:ls,Color:1},{Pattern:hhb,Color:1},{Pattern:ts,Color:1},{Pattern:sku,Color:0}]}}

tag @a[nbt={RootVehicle:{}}] add inBoat
execute as @a[tag=inBoat,nbt=!{RootVehicle:{}}] at @s run tp @s ^1.5 ^ ^
tag @a[tag=inBoat,nbt=!{RootVehicle:{}}] remove inBoat

execute as @e[type=boat,tag=BoatBoat,tag=!Sinking,tag=Sailing3,tag=1] at @s unless entity @a[nbt={RootVehicle:{}},distance=..1.5] run summon boat ~ ~-0.1 ~ {Invulnerable:1b,Tags:["Boat","BoatBoat","1"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[type=boat,tag=BoatBoat,tag=!Sinking,tag=Sailing3,tag=2] at @s unless entity @a[nbt={RootVehicle:{}},distance=..1.5] run summon boat ~ ~-0.1 ~ {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","2"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[type=boat,tag=BoatBoat,tag=!Sinking,tag=Sailing3,tag=3] at @s unless entity @a[nbt={RootVehicle:{}},distance=..1.5] run summon boat ~ ~-0.1 ~ {Invulnerable:1b,Tags:["Boat","BoatBoat","3"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[type=boat,tag=BoatBoat,tag=!Sinking,tag=Sailing3,tag=4] at @s unless entity @a[nbt={RootVehicle:{}},distance=..1.5] run summon boat ~ ~-0.1 ~ {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","4"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[type=boat,tag=BoatBoat,tag=!Sinking,tag=Sailing3] at @s unless entity @a[nbt={RootVehicle:{}},distance=..1.5] run kill @e[type=armor_stand,tag=BoatAS,limit=1,sort=nearest,distance=..3,tag=!New]
execute as @e[type=boat,tag=BoatBoat,tag=!Sinking,tag=Sailing3] at @s unless entity @a[nbt={RootVehicle:{}},distance=..1.5] run kill @s

tag @e[type=armor_stand,tag=BoatAS,tag=New] remove New

# execute as @e[type=boat,tag=BoatBoat,tag=!Sailing] at @s positioned ~ ~1 ~ as @a[distance=..0.7] at @s run tp @s ~ ~-0.3 ~

tag @e[type=boat,tag=Sailing2] add Sailing3
tag @e[type=boat,tag=Sailing1] add Sailing2
tag @e[type=boat,tag=Sailing] add Sailing1

execute unless entity @e[type=boat,tag=BoatBoat,tag=1,tag=Sailing] positioned 109 -31 0 unless entity @e[type=boat,tag=BoatBoat,tag=1,distance=..8] as @e[type=boat,tag=BoatBoat,tag=1] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..12] run tag @e[type=boat,tag=BoatBoat,tag=1] add Sinking
execute unless entity @e[type=boat,tag=BoatBoat,tag=2,tag=Sailing] positioned 31 -31 0 unless entity @e[type=boat,tag=BoatBoat,tag=2,distance=..8] as @e[type=boat,tag=BoatBoat,tag=2] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..12] run tag @e[type=boat,tag=BoatBoat,tag=2] add Sinking
execute unless entity @e[type=boat,tag=BoatBoat,tag=3,tag=Sailing] positioned 83 -31 12 unless entity @e[type=boat,tag=BoatBoat,tag=3,distance=..8] as @e[type=boat,tag=BoatBoat,tag=3] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..12] run tag @e[type=boat,tag=BoatBoat,tag=3] add Sinking
execute unless entity @e[type=boat,tag=BoatBoat,tag=4,tag=Sailing] positioned 57 -31 -12 unless entity @e[type=boat,tag=BoatBoat,tag=4,distance=..8] as @e[type=boat,tag=BoatBoat,tag=4] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..12] run tag @e[type=boat,tag=BoatBoat,tag=4] add Sinking

scoreboard players add @e[type=boat,tag=BoatBoat,tag=Sinking] CmdData 1
execute as @e[type=boat,tag=BoatBoat,tag=Sinking,scores={CmdData=1}] at @s run particle minecraft:bubble_column_up ~ ~ ~ 0.8 0.2 0.8 0.1 10 force
execute as @e[type=boat,tag=BoatBoat,tag=Sinking,scores={CmdData=1}] at @s run particle minecraft:splash ~ ~1 ~ 0.4 0.5 0.4 0.1 100 force
execute as @e[type=boat,tag=BoatBoat,tag=Sinking,scores={CmdData=1}] at @s run playsound minecraft:entity.generic.swim master @a ~ ~ ~ 1 0.8
execute as @e[type=boat,tag=BoatBoat,tag=Sinking,scores={CmdData=1}] at @s run playsound minecraft:entity.generic.swim master @a ~ ~ ~ 1 1
execute as @e[type=boat,tag=BoatBoat,tag=Sinking,scores={CmdData=1}] at @s run data merge entity @s {Motion:[0.0d,-2.0d,0.0d]}
execute as @e[type=boat,tag=BoatBoat,tag=Sinking,scores={CmdData=20..}] at @s run kill @e[type=armor_stand,tag=BoatAS,tag=!New,limit=1,sort=nearest,distance=..3]
execute as @e[type=boat,tag=BoatBoat,tag=Sinking,tag=1,scores={CmdData=20..}] at @s run summon boat 109 -30 0 {Invulnerable:1b,Tags:["Boat","BoatBoat","1"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[type=boat,tag=BoatBoat,tag=Sinking,tag=2,scores={CmdData=20..}] at @s run summon boat 31 -30 0 {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","2"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[type=boat,tag=BoatBoat,tag=Sinking,tag=3,scores={CmdData=20..}] at @s run summon boat 83 -30 12 {Invulnerable:1b,Tags:["Boat","BoatBoat","3"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[type=boat,tag=BoatBoat,tag=Sinking,tag=4,scores={CmdData=20..}] at @s run summon boat 57 -30 -12 {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","4"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[type=boat,tag=BoatBoat,tag=Sinking,scores={CmdData=20..}] at @s run kill @s

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


#> Cave entrances
execute positioned 81 -36.8 -17 run particle minecraft:bubble_column_up 81 -36.8 -17 1.4 0 0 0.2 5 force @a[distance=..12]
execute positioned 58 -36.8 17 run particle minecraft:bubble_column_up 58 -36.8 17 1.4 0 0 0.2 5 force @a[distance=..12]

execute as @a[team=!Lobby,team=!Spectator,predicate=game:bubble1] at @s run tp @s ~ ~ ~0.05
execute as @a[team=!Lobby,team=!Spectator,predicate=game:bubble2] at @s run tp @s ~ ~ ~-0.05
execute as @a[team=!Lobby,team=!Spectator,predicate=game:bubble1] at @s run tp @s ~ ~ ~0.05
execute as @a[team=!Lobby,team=!Spectator,predicate=game:bubble2] at @s run tp @s ~ ~ ~-0.05
execute as @a[team=!Lobby,team=!Spectator,predicate=game:bubble1] at @s run tp @s ~ ~ ~0.05
execute as @a[team=!Lobby,team=!Spectator,predicate=game:bubble2] at @s run tp @s ~ ~ ~-0.05
execute as @a[team=!Lobby,team=!Spectator,predicate=game:bubble1] at @s run tp @s ~ ~ ~0.05
execute as @a[team=!Lobby,team=!Spectator,predicate=game:bubble2] at @s run tp @s ~ ~ ~-0.05