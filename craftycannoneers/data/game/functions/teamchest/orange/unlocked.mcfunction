#> Complete unlock
execute if entity @s[tag=!PlayedSound2] if entity @a[team=Purple,distance=..6] run function game:teamchest/orange/unlock

execute if entity @s[tag=PlayedSound2] if entity @a[team=Purple,distance=..6] run scoreboard players reset @s CmdData
execute if entity @s[tag=PlayedSound2] unless entity @a[team=Purple,distance=..6] run scoreboard players add @s CmdData 1
execute if entity @s[tag=PlayedSound2] unless entity @a[team=Purple,distance=..6] if score @s CmdData matches 80 run tag @s remove PlayedSound2
execute if entity @s[tag=!PlayedSound2] unless entity @a[team=Purple,distance=..6] run scoreboard players reset @s CmdData

tp @s ~ ~ ~ ~ ~