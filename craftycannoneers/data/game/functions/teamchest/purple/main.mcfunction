#> Close
execute if entity @s[tag=Opened] unless entity @a[team=Orange,distance=..6] unless entity @a[team=Purple,distance=..5] run function game:teamchest/purple/close

#> Locked
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] if entity @a[team=Orange,distance=..6] run function game:teamchest/purple/locked

#> Unlocked
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=Unlocked] run function game:teamchest/purple/unlocked

#> Restore
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] if entity @s[tag=PlayedSound] unless entity @a[team=Orange,distance=..6] run function game:teamchest/purple/restore
execute if entity @s[tag=!PlayedSound2] unless entity @a[team=Orange,distance=..6] run tag @e[type=armor_stand,tag=purplechestdisplay,tag=Unlocked] remove Unlocked

#> Force update position
execute store result entity @s Air short 1 run scoreboard players get $toggle CmdData