scoreboard players operation @s playerUUID = $current playerUUID
function cannons:namecannonball
scoreboard players operation @s PowerM = $current PowerM
scoreboard players operation @s PowerV = $current PowerM
scoreboard players operation @s PowerV += $current PowerM
scoreboard players operation @s PowerV += $current PowerM
scoreboard players operation @s drag = $current drag
scoreboard players operation @s gravity = $current gravity

execute if score @s PowerM matches 2 run scoreboard players set @s drag 20
execute if score @s PowerM matches 3 run scoreboard players set @s drag 30
execute if score @s PowerM matches 4 run scoreboard players set @s drag 50
execute if score @s PowerM matches 5.. run scoreboard players set @s drag 80

execute if score @s PowerM matches 1 run scoreboard players set @s gravity 50
execute if score @s PowerM matches 2 run scoreboard players set @s gravity 120
execute if score @s PowerM matches 3 run scoreboard players set @s gravity 200
execute if score @s PowerM matches 4 run scoreboard players set @s gravity 250
execute if score @s PowerM matches 5.. run scoreboard players add @s gravity 100

execute at @s[tag=CannonballCluster,tag=!0,tag=!clusteracc] run function cannons:clusteraccuracy
execute at @s[tag=ChainCannonball,tag=!chainacc] run function cannons:chainaccuracy
tag @s[tag=!ChainCannonball] add AccuracySet 

tag @s remove NewCannonball