#> Rotate the sail along with the boat
execute on vehicle rotated as @s on passengers positioned as @s[type=!player] run tp @s ~ ~ ~ ~ ~

#> Handle Boat Cannon if enabled
execute if score $BoatCannons CmdData matches 1 run function game:boat/cannon