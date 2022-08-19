execute as @e[type=armor_stand,tag=BoatAS] at @s run data modify entity @s Rotation set from entity @e[type=boat,limit=1,sort=nearest,distance=..1] Rotation
execute as @e[type=boat,tag=BoatBoat,tag=!Sinking] at @s if entity @a[predicate=game:inboat,distance=..1.5] run tag @s add Sailing
execute as @e[type=armor_stand,tag=BoatAS] at @s if entity @a[team=Purple,predicate=game:inboat,distance=..1.5] run item replace entity @s armor.head with purple_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:10},{Pattern:ls,Color:10},{Pattern:ts,Color:10},{Pattern:hhb,Color:10},{Pattern:sku,Color:0}]}}
execute as @e[type=armor_stand,tag=BoatAS] at @s if entity @a[team=Orange,predicate=game:inboat,distance=..1.5] run item replace entity @s armor.head with orange_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:1},{Pattern:ls,Color:1},{Pattern:hhb,Color:1},{Pattern:ts,Color:1},{Pattern:sku,Color:0}]}}

tag @a[predicate=game:inboat] add inBoat
execute as @a[tag=inBoat,predicate=!game:inboat] at @s run tp @s ~ ~1.6 ~
tag @a[tag=inBoat,predicate=!game:inboat] remove inBoat

execute as @e[type=boat,tag=BoatBoat,tag=!Sailing,tag=!Sinking] at @s run tp @s ~ -31.3 ~

execute as @e[type=boat,tag=BoatBoat,tag=!Sinking,tag=DismountCheck,tag=1] at @s unless entity @a[predicate=game:inboat,distance=..1.5] run summon boat ~ -31.3 ~ {Invulnerable:1b,Tags:["Boat","BoatBoat","1"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[type=boat,tag=BoatBoat,tag=!Sinking,tag=DismountCheck,tag=2] at @s unless entity @a[predicate=game:inboat,distance=..1.5] run summon boat ~ -31.3 ~ {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","2"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[type=boat,tag=BoatBoat,tag=!Sinking,tag=DismountCheck,tag=3] at @s unless entity @a[predicate=game:inboat,distance=..1.5] run summon boat ~ -31.3 ~ {Invulnerable:1b,Tags:["Boat","BoatBoat","3"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[type=boat,tag=BoatBoat,tag=!Sinking,tag=DismountCheck,tag=4] at @s unless entity @a[predicate=game:inboat,distance=..1.5] run summon boat ~ -31.3 ~ {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","4"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute as @e[type=boat,tag=BoatBoat,tag=!Sinking,tag=DismountCheck] at @s unless entity @a[predicate=game:inboat,distance=..1.5] run kill @e[type=armor_stand,tag=BoatAS,limit=1,sort=nearest,distance=..3,tag=!New]
execute as @e[type=boat,tag=BoatBoat,tag=!Sinking,tag=DismountCheck] at @s unless entity @a[predicate=game:inboat,distance=..1.5] run kill @s

tag @e[type=armor_stand,tag=BoatAS,tag=New] remove New

execute as @e[type=boat,tag=Sailing] unless score @s click matches 7.. run scoreboard players add @s click 1
execute as @e[type=boat,tag=Sailing] if score @s click matches 7.. run tag @s add DismountCheck

execute unless entity @e[type=boat,tag=BoatBoat,tag=1,tag=Sailing] positioned 109 -31 0 unless entity @e[type=boat,tag=BoatBoat,tag=1,distance=..8] as @e[type=boat,tag=BoatBoat,tag=1] at @s unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..12] run tag @e[type=boat,tag=BoatBoat,tag=1] add Sinking
execute unless entity @e[type=boat,tag=BoatBoat,tag=2,tag=Sailing] positioned 31 -31 0 unless entity @e[type=boat,tag=BoatBoat,tag=2,distance=..8] as @e[type=boat,tag=BoatBoat,tag=2] at @s unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..12] run tag @e[type=boat,tag=BoatBoat,tag=2] add Sinking
execute unless entity @e[type=boat,tag=BoatBoat,tag=3,tag=Sailing] positioned 83 -31 12 unless entity @e[type=boat,tag=BoatBoat,tag=3,distance=..8] as @e[type=boat,tag=BoatBoat,tag=3] at @s unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..12] run tag @e[type=boat,tag=BoatBoat,tag=3] add Sinking
execute unless entity @e[type=boat,tag=BoatBoat,tag=4,tag=Sailing] positioned 57 -31 -12 unless entity @e[type=boat,tag=BoatBoat,tag=4,distance=..8] as @e[type=boat,tag=BoatBoat,tag=4] at @s unless entity @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..12] run tag @e[type=boat,tag=BoatBoat,tag=4] add Sinking

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

#boat safeguards
execute as @e[type=armor_stand,tag=BoatAS,predicate=!game:inboat] run kill @s
execute unless entity @e[type=boat,tag=BoatBoat,tag=1] run summon boat 109 -30 0 {Invulnerable:1b,Tags:["Boat","BoatBoat","1"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute unless entity @e[type=boat,tag=BoatBoat,tag=2] run summon boat 31 -30 0 {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","2"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute unless entity @e[type=boat,tag=BoatBoat,tag=3] run summon boat 83 -30 12 {Invulnerable:1b,Tags:["Boat","BoatBoat","3"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute unless entity @e[type=boat,tag=BoatBoat,tag=4] run summon boat 57 -30 -12 {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","4"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}

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
execute positioned 81 -36.8 -17 run particle minecraft:bubble_column_up 81 -36.8 -17 1.4 0 0 0.2 5 force @a[distance=..16]
execute positioned 58 -36.8 17 run particle minecraft:bubble_column_up 58 -36.8 17 1.4 0 0 0.2 5 force @a[distance=..16]

execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble1] at @s run tag @s add InBubble
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble1,tag=!InBubble] at @s run scoreboard players set @s bubblewarn 1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble2] at @s run tag @s add InBubble
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble2,tag=!InBubble] at @s run scoreboard players set @s bubblewarn 1

scoreboard players add @a[tag=InBubble] bubblewarn 1
scoreboard players add @a[tag=!InBubble,scores={bubblewarn=1..}] bubblewarn 1
execute as @a[tag=InBubble,scores={bubblewarn=2}] at @s run playsound minecraft:block.bubble_column.upwards_inside master @s ~ ~ ~ 1 0.8
execute as @a[tag=InBubble,scores={bubblewarn=15}] at @s run playsound minecraft:block.bubble_column.whirlpool_inside master @s ~ ~ ~ 1 0.8
execute as @a[tag=InBubble,scores={bubblewarn=15}] at @s run tellraw @s {"text":"A bubble column blocks your path...","color":"aqua"}
scoreboard players set @a[tag=InBubble,scores={bubblewarn=60..}] bubblewarn 14
scoreboard players reset @a[tag=!InBubble,scores={bubblewarn=60..}] bubblewarn
tag @a[tag=InBubble,scores={bubblewarn=30..}] remove InBubble
tag @a remove InBubble

execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble1] at @s if block ~ ~ ~0.1 water run tp @s ~ ~ ~0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble2] at @s if block ~ ~ ~-0.1 water run tp @s ~ ~ ~-0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble1] at @s if block ~ ~ ~0.1 water run tp @s ~ ~ ~0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble2] at @s if block ~ ~ ~-0.1 water run tp @s ~ ~ ~-0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble1] at @s if block ~ ~ ~0.1 water run tp @s ~ ~ ~0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble2] at @s if block ~ ~ ~-0.1 water run tp @s ~ ~ ~-0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble1] at @s if block ~ ~ ~0.1 water run tp @s ~ ~ ~0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble2] at @s if block ~ ~ ~-0.1 water run tp @s ~ ~ ~-0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble1] at @s if block ~ ~ ~0.1 water run tp @s ~ ~ ~0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble2] at @s if block ~ ~ ~-0.1 water run tp @s ~ ~ ~-0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble1] at @s if block ~ ~ ~0.1 water run tp @s ~ ~ ~0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble2] at @s if block ~ ~ ~-0.1 water run tp @s ~ ~ ~-0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble1] at @s if block ~ ~ ~0.1 water run tp @s ~ ~ ~0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble2] at @s if block ~ ~ ~-0.1 water run tp @s ~ ~ ~-0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble1] at @s if block ~ ~ ~0.1 water run tp @s ~ ~ ~0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble2] at @s if block ~ ~ ~-0.1 water run tp @s ~ ~ ~-0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble1] at @s if block ~ ~ ~0.1 water run tp @s ~ ~ ~0.1
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=game:bubble2] at @s if block ~ ~ ~-0.1 water run tp @s ~ ~ ~-0.1