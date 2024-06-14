execute store result score @s crabtime run random value 0..20
execute if score @s crabtime matches 0..5 run data merge entity @s {Attributes:[{Base:0.8d,Name:"minecraft:generic.movement_speed"}]}
execute if score @s crabtime matches 6..12 run data merge entity @s {Attributes:[{Base:0.4d,Name:"minecraft:generic.movement_speed"}]}
execute if score @s crabtime matches 13..15 run data merge entity @s {Attributes:[{Base:1.1d,Name:"minecraft:generic.movement_speed"}]}
execute if score @s crabtime matches 16..19 run data merge entity @s {Attributes:[{Base:1.6d,Name:"minecraft:generic.movement_speed"}]}
execute if score @s crabtime matches 20 run data merge entity @s {Attributes:[{Base:3.0d,Name:"minecraft:generic.movement_speed"}]}

scoreboard players reset @s crabtime
scoreboard players reset @s crabmode