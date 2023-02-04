data modify storage craftycannoneers:cannonball Pos set from entity @s Pos
execute store result score @s x run data get storage craftycannoneers:cannonball Pos[0] 1000000
execute store result score @s y run data get storage craftycannoneers:cannonball Pos[1] 1000000
execute store result score @s z run data get storage craftycannoneers:cannonball Pos[2] 1000000

tp @s[scores={PowerM=1}] ^ ^ ^0.0006
tp @s[scores={PowerM=2}] ^ ^ ^0.0007
tp @s[scores={PowerM=3}] ^ ^ ^0.0008
tp @s[scores={PowerM=4}] ^ ^ ^0.0009
tp @s[scores={PowerM=5}] ^ ^ ^0.0010
tp @s[scores={PowerM=6}] ^ ^ ^0.0011
tp @s[scores={PowerM=7}] ^ ^ ^0.0012
tp @s[scores={PowerM=8}] ^ ^ ^0.0013
tp @s[scores={PowerM=9}] ^ ^ ^0.0014
tp @s[scores={PowerM=10}] ^ ^ ^0.0015
tp @s[scores={PowerM=11}] ^ ^ ^0.0016
tp @s[scores={PowerM=12}] ^ ^ ^0.0017
tp @s[scores={PowerM=13}] ^ ^ ^0.0018
tp @s[scores={PowerM=14}] ^ ^ ^0.0019

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