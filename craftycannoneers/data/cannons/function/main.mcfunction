#> Load Gunpowder
execute as @e[type=item_display,tag=DisplayGP] at @s run function cannons:loadgunpowder

#> Cannon Displays
execute as @e[type=item_display,tag=CannonDisp] at @s run function cannons:display

#> Light Flash
execute as @e[type=marker,tag=LightFlash] at @s run function cannons:lightflash

#> Shoot
execute as @e[type=armor_stand,tag=cannonball] at @s run function cannons:shoot

#> Fire Ring
execute as @e[type=marker,tag=RingOfFire] at @s run function cannons:firering/functionality

#> Gas
function cannons:gas/main

#> Bounce
execute as @e[type=slime,tag=BounceSlime] at @s run function cannons:bounce/slime
execute as @e[type=area_effect_cloud,tag=BounceAEC] at @s run function cannons:bounce/aec

#> Player Cannonball Cooldown
function cannons:pcbcooldown

#> Weakpoints
function game:shipweakpoint/main
execute if score $OrangeWPDelay CmdData matches 1.. run scoreboard players add $OrangeWPDelay CmdData 1
execute if score $OrangeWPDelay CmdData matches 20.. run scoreboard players reset $OrangeWPDelay CmdData
execute if score $PurpleWPDelay CmdData matches 1.. run scoreboard players add $PurpleWPDelay CmdData 1
execute if score $PurpleWPDelay CmdData matches 20.. run scoreboard players reset $PurpleWPDelay CmdData

#> Damage Calculation
execute as @e[type=marker,tag=ImpactMarker,tag=!calcingDamage,limit=1] at @s run function cannons:damagecalc

#> Remove hold tags
execute as @a run function cannons:removeholdtags