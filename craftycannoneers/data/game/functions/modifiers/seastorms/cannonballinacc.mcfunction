execute if score $WindDirection CmdData matches 0 run data modify entity @s[tag=cannonball] Motion[0] set value 0.6
execute if score $WindDirection CmdData matches 1 run data modify entity @s[tag=cannonball] Motion[0] set value -0.6

execute if score $WindDirection CmdData matches 0 run data modify entity @s[tag=Bomb] Motion[0] set value 1.8
execute if score $WindDirection CmdData matches 1 run data modify entity @s[tag=Bomb] Motion[0] set value -1.8

execute if score $WindDirection CmdData matches 0 run data modify entity @s[type=arrow] Motion[0] set value 3.2
execute if score $WindDirection CmdData matches 1 run data modify entity @s[type=arrow] Motion[0] set value -3.2

execute if score $WindDirection CmdData matches 0 run data modify entity @s[type=trident] Motion[0] set value 1.2
execute if score $WindDirection CmdData matches 1 run data modify entity @s[type=trident] Motion[0] set value -1.2

execute store result entity @s Air short 1 run scoreboard players get $toggle CmdData