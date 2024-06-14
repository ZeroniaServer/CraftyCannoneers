tag @s remove still

execute store result score @s dx2 run scoreboard players get @s x2
execute store result score @s dy2 run scoreboard players get @s y2
execute store result score @s dz2 run scoreboard players get @s z2

data modify storage craftycannoneers:boat Pos set from entity @s Pos
execute store result score @s x2 run data get storage craftycannoneers:boat Pos[0] 10
execute store result score @s y2 run data get storage craftycannoneers:boat Pos[1] 10
execute store result score @s z2 run data get storage craftycannoneers:boat Pos[2] 10

scoreboard players set $still CmdData 0
scoreboard players operation @s dx2 -= @s x2
scoreboard players operation @s dy2 -= @s y2
scoreboard players operation @s dz2 -= @s z2
execute if score @s dx2 matches ..-1 run scoreboard players operation @s dx2 *= -1 const
execute if score @s dy2 matches ..-1 run scoreboard players operation @s dy2 *= -1 const
execute if score @s dz2 matches ..-1 run scoreboard players operation @s dz2 *= -1 const
execute if score @s dx2 < 2 const if score @s dy2 < 2 const if score @s dz2 < 2 const run scoreboard players set $still CmdData 1
execute if score $still CmdData matches 1 run scoreboard players add @s ctr 1
execute if score $still CmdData matches 0 run scoreboard players reset @s ctr
execute if score @s ctr matches 4.. run tag @s add still