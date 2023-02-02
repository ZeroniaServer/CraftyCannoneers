execute at @s run tp @s ~ ~1.62 ~
execute at @s if block ^ ^ ^1 #cannons:cannonball_passable run tp @s ^ ^ ^1

data modify storage craftycannoneers:blastbomb Pos set from entity @s Pos
execute store result score @s x run data get storage craftycannoneers:blastbomb Pos[0] 1000000
execute store result score @s y run data get storage craftycannoneers:blastbomb Pos[1] 1000000
execute store result score @s z run data get storage craftycannoneers:blastbomb Pos[2] 1000000

execute at @s run tp @s ^ ^ ^0.001

data modify storage craftycannoneers:blastbomb Pos set from entity @s Pos
execute store result score @s dx run data get storage craftycannoneers:blastbomb Pos[0] 1000000
execute store result score @s dy run data get storage craftycannoneers:blastbomb Pos[1] 1000000
execute store result score @s dz run data get storage craftycannoneers:blastbomb Pos[2] 1000000
data remove storage craftycannoneers:blastbomb Pos

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dy -= @s y
scoreboard players operation @s dz -= @s z

#########
#How to change the speed:
#		"(...) Motion[0] double 0.002 (...)"		<--- the bigger this number, the faster the entity
#########

data modify storage craftycannoneers:blastbomb Motion set value [0d, 0d, 0d]
execute store result storage craftycannoneers:blastbomb Motion[0] double 0.0035 run scoreboard players get @s dx
execute store result storage craftycannoneers:blastbomb Motion[1] double 0.0015 run scoreboard players get @s dy
execute store result storage craftycannoneers:blastbomb Motion[2] double 0.0035 run scoreboard players get @s dz
data modify entity @s Motion set from storage craftycannoneers:blastbomb Motion
data remove storage craftycannoneers:blastbomb Motion

tag @s add BombThrown
