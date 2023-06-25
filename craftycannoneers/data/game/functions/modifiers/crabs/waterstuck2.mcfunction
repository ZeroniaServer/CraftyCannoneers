tp @s ~ ~ ~
data modify storage craftycannoneers:crab Pos set from entity @s Pos
execute store result score $crab dx run data get storage craftycannoneers:crab Pos[0] 1000000
execute store result score $crab dy run data get storage craftycannoneers:crab Pos[1] 1000000
execute store result score $crab dz run data get storage craftycannoneers:crab Pos[2] 1000000