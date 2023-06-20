data modify storage craftycannoneers:blastbomb Pos set from entity @s Pos
execute store result score @s x run data get storage craftycannoneers:blastbomb Pos[0] 1000000
execute store result score @s z run data get storage craftycannoneers:blastbomb Pos[2] 1000000

execute at @e[type=marker,tag=posanchor,limit=1] facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.001

data modify storage craftycannoneers:blastbomb Pos set from entity @s Pos
execute store result score @s dx run data get storage craftycannoneers:blastbomb Pos[0] 1000000
execute store result score @s dz run data get storage craftycannoneers:blastbomb Pos[2] 1000000

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dz -= @s z

#########
#How to change the speed:
#		"(...) Motion[0] double 0.002 (...)"		<--- the bigger this number, the faster the entity
#########

data modify storage craftycannoneers:blastbomb Motion set value [0d, 0.4d, 0d]
execute store result storage craftycannoneers:blastbomb Motion[0] double 0.0035 run scoreboard players get @s dx
execute store result storage craftycannoneers:blastbomb Motion[2] double 0.0035 run scoreboard players get @s dz
tp @s @s
data modify entity @s Motion set from storage craftycannoneers:blastbomb Motion