execute store result score @s crabtime run random value 0..20
execute if score @s crabtime matches 0..5 run attribute @s movement_speed base set 0.8
execute if score @s crabtime matches 6..12 run attribute @s movement_speed base set 0.4
execute if score @s crabtime matches 13..15 run attribute @s movement_speed base set 1.1
execute if score @s crabtime matches 16..19 run attribute @s movement_speed base set 1.6
execute if score @s crabtime matches 20 run attribute @s movement_speed base set 3.0
scoreboard players reset @s crabtime
scoreboard players reset @s crabmode