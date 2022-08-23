#> Summon new boat
execute at @s[tag=1,tag=DismountCheck,tag=!Sinking] run summon boat ~ -31.3 ~ {Invulnerable:1b,Tags:["Boat","BoatBoat","1"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New","1"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute at @s[tag=2,tag=DismountCheck,tag=!Sinking] run summon boat ~ -31.3 ~ {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","2"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New","2"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute at @s[tag=3,tag=DismountCheck,tag=!Sinking] run summon boat ~ -31.3 ~ {Invulnerable:1b,Tags:["Boat","BoatBoat","3"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New","3"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute at @s[tag=4,tag=DismountCheck,tag=!Sinking] run summon boat ~ -31.3 ~ {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","4"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New","4"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}

execute at @s[tag=1,tag=Sinking] run summon boat 109 -30 0 {Invulnerable:1b,Tags:["Boat","BoatBoat","1"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New","1"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute at @s[tag=2,tag=Sinking] run summon boat 31 -30 0 {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","2"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New","2"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute at @s[tag=3,tag=Sinking] run summon boat 83 -30 12 {Invulnerable:1b,Tags:["Boat","BoatBoat","3"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New","3"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}
execute at @s[tag=4,tag=Sinking] run summon boat 57 -30 -12 {Invulnerable:1b,Rotation:[180.0f,0.0f],Tags:["Boat","BoatBoat","4"],Passengers:[{id:"minecraft:armor_stand",Tags:["Boat","BoatAS","New","4"],Marker:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:sku,Color:0}]}}}]},{}]}

#> Teleport previous occupant up
execute at @s[tag=1,tag=DismountCheck,tag=!Sinking] as @a[tag=inBoat1,distance=..1] at @s run tp @s ~ ~1.6 ~
execute at @s[tag=2,tag=DismountCheck,tag=!Sinking] as @a[tag=inBoat2,distance=..1] at @s run tp @s ~ ~1.6 ~
execute at @s[tag=3,tag=DismountCheck,tag=!Sinking] as @a[tag=inBoat3,distance=..1] at @s run tp @s ~ ~1.6 ~
execute at @s[tag=4,tag=DismountCheck,tag=!Sinking] as @a[tag=inBoat4,distance=..1] at @s run tp @s ~ ~1.6 ~

#> Untag previous occupant
execute if entity @s[tag=1] run tag @a[tag=inBoat1] remove inBoat1
execute if entity @s[tag=2] run tag @a[tag=inBoat2] remove inBoat2
execute if entity @s[tag=3] run tag @a[tag=inBoat3] remove inBoat3
execute if entity @s[tag=4] run tag @a[tag=inBoat4] remove inBoat4

#> Kill old boat
execute at @s[tag=1] run kill @e[type=armor_stand,tag=BoatAS,tag=1,tag=!New]
execute at @s[tag=2] run kill @e[type=armor_stand,tag=BoatAS,tag=2,tag=!New]
execute at @s[tag=3] run kill @e[type=armor_stand,tag=BoatAS,tag=3,tag=!New]
execute at @s[tag=4] run kill @e[type=armor_stand,tag=BoatAS,tag=4,tag=!New]
kill @s