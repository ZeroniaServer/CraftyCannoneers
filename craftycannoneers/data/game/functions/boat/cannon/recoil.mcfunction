data modify storage craftycannoneers:boat Pos set from entity @s Pos
execute store result score @s x run data get storage craftycannoneers:boat Pos[0] 1000000
execute store result score @s z run data get storage craftycannoneers:boat Pos[2] 1000000

tp @s ^ ^ ^-0.001

data modify storage craftycannoneers:boat Pos set from entity @s Pos
execute store result score @s dx run data get storage craftycannoneers:boat Pos[0] 1000000
execute store result score @s dz run data get storage craftycannoneers:boat Pos[2] 1000000
data remove storage craftycannoneers:boat Pos

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dz -= @s z

#########
#How to change the speed:
#		"(...) Motion[0] double 0.002 (...)"		<--- the bigger this number, the faster the entity
#########

data modify storage craftycannoneers:boat Motion set value [0d, 0d, 0d]
execute store result storage craftycannoneers:boat Motion[0] double 0.0005 run scoreboard players get @s dx
execute store result storage craftycannoneers:boat Motion[2] double 0.0005 run scoreboard players get @s dz
tp @s @s
data modify entity @s Motion set from storage craftycannoneers:boat Motion
data remove storage craftycannoneers:boat Motion