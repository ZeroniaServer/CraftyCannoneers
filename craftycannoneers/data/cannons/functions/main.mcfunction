#> Load Gunpowder
execute as @e[type=armor_stand,tag=DisplayGP] at @s run function cannons:loadgunpowder

#> Cannon Tick
execute as @e[type=armor_stand,tag=CannonDisp] at @s run function cannons:cannontick

#> Light Flash
execute as @e[type=marker,tag=LightFlash] at @s run function cannons:lightflash

#> Shoot
execute as @e[type=armor_stand,tag=cannonball] at @s run function cannons:shoot

#> Fire Ring
function cannons:firering/main

#> Gas - TODO OPTIMIZE
function cannons:gas/main
execute as @e[tag=GasBubble] run function cannons:gas/chase

#> Weakpoints - TODO OPTIMIZE
function game:shipweakpoint/spot

#> Damage Calculation
execute as @e[type=marker,tag=ImpactMarker] at @s run function cannons:damagecalc

#> Global
tag @a remove HoldCB
tag @a remove HoldFB
tag @a remove HoldCBC
tag @a remove HoldGCB
tag @a remove HoldCCB
tag @a remove HoldBCB
tag @a remove HoldPCB
tag @a remove HoldTCB
tag @a remove HoldGOCB