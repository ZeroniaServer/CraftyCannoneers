data modify storage craftycannoneers:cannonball Pos set from entity @s Pos
execute store result score @s x run data get storage craftycannoneers:cannonball Pos[0] 1000000
execute store result score @s y run data get storage craftycannoneers:cannonball Pos[1] 1000000
execute store result score @s z run data get storage craftycannoneers:cannonball Pos[2] 1000000

execute if entity @s[scores={PowerM=1}] at @s run tp @s ^ ^ ^0.0006
execute if entity @s[scores={PowerM=2}] at @s run tp @s ^ ^ ^0.0007
execute if entity @s[scores={PowerM=3}] at @s run tp @s ^ ^ ^0.0008
execute if entity @s[scores={PowerM=4}] at @s run tp @s ^ ^ ^0.0009
execute if entity @s[scores={PowerM=5}] at @s run tp @s ^ ^ ^0.0010
execute if entity @s[scores={PowerM=6}] at @s run tp @s ^ ^ ^0.0011
execute if entity @s[scores={PowerM=7}] at @s run tp @s ^ ^ ^0.0012
execute if entity @s[scores={PowerM=8}] at @s run tp @s ^ ^ ^0.0013
execute if entity @s[scores={PowerM=9}] at @s run tp @s ^ ^ ^0.0014
execute if entity @s[scores={PowerM=10}] at @s run tp @s ^ ^ ^0.0015
execute if entity @s[scores={PowerM=11}] at @s run tp @s ^ ^ ^0.0016
execute if entity @s[scores={PowerM=12}] at @s run tp @s ^ ^ ^0.0017
execute if entity @s[scores={PowerM=13}] at @s run tp @s ^ ^ ^0.0018
execute if entity @s[scores={PowerM=14}] at @s run tp @s ^ ^ ^0.0019

data modify storage craftycannoneers:cannonball Pos set from entity @s Pos
execute store result score @s dx run data get storage craftycannoneers:cannonball Pos[0] 1000000
execute store result score @s dy run data get storage craftycannoneers:cannonball Pos[1] 1000000
execute store result score @s dz run data get storage craftycannoneers:cannonball Pos[2] 1000000
data remove storage craftycannoneers:cannonball Pos

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dy -= @s y
scoreboard players operation @s dz -= @s z

#########
#How to change the speed:
#        "(...) Motion[0] double 0.002 (...)"        <--- the bigger this number, the faster the entity
#########

data modify storage craftycannoneers:cannonball Motion set value [0d, 0d, 0d]
execute store result storage craftycannoneers:cannonball Motion[0] double 0.003 run scoreboard players get @s dx
execute store result storage craftycannoneers:cannonball Motion[1] double 0.003 run scoreboard players get @s dy
execute store result storage craftycannoneers:cannonball Motion[2] double 0.003 run scoreboard players get @s dz
data modify entity @s Motion set from storage craftycannoneers:cannonball Motion

tag @s add CannonballShot

execute store result score @s x run data get storage craftycannoneers:cannonball Motion[0] 1000
execute store result score @s y run data get storage craftycannoneers:cannonball Motion[1] 1000
execute store result score @s z run data get storage craftycannoneers:cannonball Motion[2] 1000
data remove storage craftycannoneers:cannonball Motion