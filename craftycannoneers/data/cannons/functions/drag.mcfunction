### incorporating drag/gravity
# drag depends on sign of x/z motion
execute as @e[tag=CannonballShot] if score @s x matches 500.. run scoreboard players operation @s x -= $drag CmdData
execute as @e[tag=CannonballShot] if score @s x matches ..-500 run scoreboard players operation @s x += $drag CmdData
execute as @e[tag=CannonballShot] if score @s z matches 500.. run scoreboard players operation @s z -= $drag CmdData
execute as @e[tag=CannonballShot] if score @s z matches ..-500 run scoreboard players operation @s z += $drag CmdData
# y velocity only needs a lower cap bc gravity just keeps going down
execute as @e[tag=CannonballShot] if score @s y matches -500.. run scoreboard players operation @s y -= $gravity CmdData

### storing back into cannonball motion
execute as @e[tag=CannonballShot] store result entity @s Motion[0] double 0.001 run scoreboard players get @s x
execute as @e[tag=CannonballShot] store result entity @s Motion[1] double 0.001 run scoreboard players get @s y
execute as @e[tag=CannonballShot] store result entity @s Motion[2] double 0.001 run scoreboard players get @s z