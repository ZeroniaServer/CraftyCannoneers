### incorporating drag/gravity
# drag depends on sign of x/z motion
execute if score @s x matches 500.. run scoreboard players operation @s x -= @s drag
execute if score @s x matches ..-500 run scoreboard players operation @s x += @s drag
execute if score @s z matches 500.. run scoreboard players operation @s z -= @s drag
execute if score @s z matches ..-500 run scoreboard players operation @s z += @s drag
# y velocity only needs a lower cap bc gravity just keeps going down
execute if score @s y matches -500.. run scoreboard players operation @s y -= @s gravity

### storing back into cannonball motion
data modify storage craftycannoneers:cannonball Motion set value [0d, 0d, 0d]
execute store result storage craftycannoneers:cannonball Motion[0] double 0.001 run scoreboard players get @s x
execute store result storage craftycannoneers:cannonball Motion[1] double 0.001 run scoreboard players get @s y
execute store result storage craftycannoneers:cannonball Motion[2] double 0.001 run scoreboard players get @s z
data modify entity @s Motion set from storage craftycannoneers:cannonball Motion