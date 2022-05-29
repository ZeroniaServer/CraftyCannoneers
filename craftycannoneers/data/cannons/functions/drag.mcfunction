### incorporating drag/gravity
# drag depends on sign of x/z motion
execute as @e[type=armor_stand,tag=CannonballShot] if score @s x matches 500.. run scoreboard players operation @s x -= @s drag
execute as @e[type=armor_stand,tag=CannonballShot] if score @s x matches ..-500 run scoreboard players operation @s x += @s drag
execute as @e[type=armor_stand,tag=CannonballShot] if score @s z matches 500.. run scoreboard players operation @s z -= @s drag
execute as @e[type=armor_stand,tag=CannonballShot] if score @s z matches ..-500 run scoreboard players operation @s z += @s drag
# y velocity only needs a lower cap bc gravity just keeps going down
execute as @e[type=armor_stand,tag=CannonballShot] if score @s y matches -500.. run scoreboard players operation @s y -= @s gravity

### storing back into cannonball motion
execute as @e[type=armor_stand,tag=CannonballShot] store result entity @s Motion[0] double 0.001 run scoreboard players get @s x
execute as @e[type=armor_stand,tag=CannonballShot] store result entity @s Motion[1] double 0.001 run scoreboard players get @s y
execute as @e[type=armor_stand,tag=CannonballShot] store result entity @s Motion[2] double 0.001 run scoreboard players get @s z