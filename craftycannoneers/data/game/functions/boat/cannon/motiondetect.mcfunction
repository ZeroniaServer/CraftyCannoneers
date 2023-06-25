tag @s remove still
tag @s remove noplayerinput

execute store result score @s dx2 run scoreboard players get @s x2
execute store result score @s dy2 run scoreboard players get @s y2
execute store result score @s dz2 run scoreboard players get @s z2

data modify storage craftycannoneers:boat Pos set from entity @s Pos
execute store result score @s x2 run data get storage craftycannoneers:boat Pos[0] 100
execute store result score @s y2 run data get storage craftycannoneers:boat Pos[1] 100
execute store result score @s z2 run data get storage craftycannoneers:boat Pos[2] 100

execute if score @s x2 = @s dx2 if score @s y2 = @s dy2 if score @s z2 = @s dz2 run tag @s add still

execute on passengers run data modify storage craftycannoneers:boat Motion set from entity @s[type=player] Motion
execute on passengers store result score @s[type=camel] x2 run data get storage craftycannoneers:boat Motion[0] 100
execute on passengers store result score @s[type=camel] z2 run data get storage craftycannoneers:boat Motion[2] 100
execute on passengers if score @s[type=camel] x2 matches 0 if score @s[type=camel] z2 matches 0 on vehicle run tag @s add noplayerinput