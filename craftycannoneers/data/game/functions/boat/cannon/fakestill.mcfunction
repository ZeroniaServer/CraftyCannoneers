tag @s add still
data modify storage craftycannoneers:boat Pos set from entity @s Pos
execute store result score @s x2 run data get storage craftycannoneers:boat Pos[0] 10
execute store result score @s y2 run data get storage craftycannoneers:boat Pos[1] 10
execute store result score @s z2 run data get storage craftycannoneers:boat Pos[2] 10
scoreboard players set @s dx2 0
scoreboard players set @s dy2 0
scoreboard players set @s dz2 0
scoreboard players set @s ctr 5
tag @s add fakestill