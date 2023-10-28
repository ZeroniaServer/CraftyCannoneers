#> Wind particles on affected projectiles
execute if score $WindDirection CmdData matches 0 at @s[tag=!TracerCannonball] positioned ^ ^ ^0.3 rotated -90 0 run particle minecraft:cloud ~-1 ~ ~ ^ ^ ^1000000 0.0000005 0 force
execute if score $WindDirection CmdData matches 1 at @s[tag=!TracerCannonball] positioned ^ ^ ^0.3 rotated 90 0 run particle minecraft:cloud ~1 ~ ~ ^ ^ ^1000000 0.0000005 0 force 

#> Set constants for wind motion calculation
# TODO refine values?
scoreboard players set $WindMax CmdData 32000
execute if entity @s[tag=cannonball] run scoreboard players set $WindRate CmdData 100
execute if entity @s[tag=Bomb] run scoreboard players set $WindRate CmdData 450
execute if entity @s[type=arrow] run scoreboard players set $WindRate CmdData 800
execute if entity @s[type=trident] run scoreboard players set $WindRate CmdData 600

#> Account for wind direction
execute if score $WindDirection CmdData matches 1 run scoreboard players operation $WindMax CmdData *= -1 const
execute if score $WindDirection CmdData matches 1 run scoreboard players operation $WindRate CmdData *= -1 const

#> Separate handling for Cannonballs because they have a drag/gravity system
execute if entity @s[tag=cannonball] run scoreboard players operation @s x += $WindRate CmdData
execute if entity @s[tag=cannonball] if score $WindDirection CmdData matches 0 run scoreboard players operation @s x < $WindMax CmdData
execute if entity @s[tag=cannonball] if score $WindDirection CmdData matches 1 run scoreboard players operation @s x > $WindMax CmdData
execute if entity @s[tag=cannonball] run return 0

#> Additive motion for all other projectiles
execute store result score $CurrMotion CmdData run data get entity @s Motion[0] 10000
scoreboard players operation $CurrMotion CmdData += $WindRate CmdData
execute if score $WindDirection CmdData matches 0 run scoreboard players operation $CurrMotion CmdData < $WindMax CmdData
execute if score $WindDirection CmdData matches 1 run scoreboard players operation $CurrMotion CmdData > $WindMax CmdData
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get $CurrMotion CmdData
execute store result score $CurrMotion CmdData run data get entity @s Motion[0] 10000

execute store result entity @s Air short 1 run scoreboard players get $toggle CmdData