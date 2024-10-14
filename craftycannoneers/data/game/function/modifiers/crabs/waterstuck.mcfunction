data modify storage craftycannoneers:crab Pos set from entity @s Pos
execute store result score $crab x run data get storage craftycannoneers:crab Pos[0] 1000000
execute store result score $crab y run data get storage craftycannoneers:crab Pos[1] 1000000
execute store result score $crab z run data get storage craftycannoneers:crab Pos[2] 1000000

execute facing entity @a[limit=1,sort=nearest,distance=1..7,team=!Lobby,team=!Spectator,predicate=game:inwater] feet positioned ^ ^-0.01 ^0.01 as 00000539-ffff-fe5c-0000-004500000015 run function game:modifiers/crabs/waterstuck2
rotate @s facing entity @a[limit=1,sort=nearest,distance=1..7,team=!Lobby,team=!Spectator,predicate=game:inwater] feet

scoreboard players operation $crab dx -= $crab x
scoreboard players operation $crab dy -= $crab y
scoreboard players operation $crab dz -= $crab z

#########
#How to change the speed:
#		"(...) Motion[0] double 0.002 (...)"		<--- the bigger this number, the faster the entity
#########

data modify storage craftycannoneers:crab Motion set value [0d, 0d, 0d]
execute store result storage craftycannoneers:crab Motion[0] double 0.00002 run scoreboard players get $crab dx
execute store result storage craftycannoneers:crab Motion[1] double 0.00001 run scoreboard players get $crab dy
execute store result storage craftycannoneers:crab Motion[2] double 0.00002 run scoreboard players get $crab dz
data modify entity @s Motion set from storage craftycannoneers:crab Motion

tag @s remove waterstuck