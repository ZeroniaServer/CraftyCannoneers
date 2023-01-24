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

#> Gas
function cannons:gas/main

#> Bounce
function cannons:bounce/main

#> Player Cannonball Cooldown
function cannons:pcbcooldown

#> Weakpoints
function game:shipweakpoint/main
execute if score $OrangeWPDelay CmdData matches 1.. run scoreboard players add $OrangeWPDelay CmdData 1
execute if score $OrangeWPDelay CmdData matches 20.. run scoreboard players reset $OrangeWPDelay CmdData
execute if score $PurpleWPDelay CmdData matches 1.. run scoreboard players add $PurpleWPDelay CmdData 1
execute if score $PurpleWPDelay CmdData matches 20.. run scoreboard players reset $PurpleWPDelay CmdData

#> Damage Calculation
execute as @e[type=marker,tag=ImpactMarker] at @s run function cannons:damagecalc

#> Remove hold tags
execute as @a run function cannons:removeholdtags