### incorporating drag/gravity
# drag depends on sign of x/z motion
execute if score @s x matches 500.. run scoreboard players operation @s x -= @s drag
execute if score @s x matches ..-500 run scoreboard players operation @s x += @s drag
execute if score @s z matches 500.. run scoreboard players operation @s z -= @s drag
execute if score @s z matches ..-500 run scoreboard players operation @s z += @s drag
# y velocity only needs a lower cap bc gravity just keeps going down
execute if score @s y matches -500.. run scoreboard players operation @s y -= @s gravity

### storing back into cannonball motion
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s x
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s y
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s z