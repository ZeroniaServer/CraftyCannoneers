#> Prevent putting in default items
execute if entity @s[tag=Opened] as @e[type=chest_minecart,tag=purpleteamchest] run function game:teamchest/antidupe/main

#> Teleport in place
tp @e[type=chest_minecart,tag=purpleteamchest] ~ ~ ~ ~ ~

#> Close
execute if entity @s[tag=Opened] unless entity @a[team=Orange,distance=..6] unless entity @a[team=Purple,distance=..5] run function game:teamchest/purple/close

#> Locked
execute if entity @e[type=item_display,tag=purplechestdisplay,tag=!Unlocked] if entity @a[team=Orange,distance=..6] run function game:teamchest/purple/locked

#> Unlocked
execute if entity @e[type=item_display,tag=purplechestdisplay,tag=Unlocked] run function game:teamchest/purple/unlocked

#> Restore
execute if entity @e[type=item_display,tag=purplechestdisplay,tag=!Unlocked] if entity @s[tag=PlayedSound] unless entity @a[team=Orange,distance=..6] run function game:teamchest/purple/restore
execute if entity @s[tag=!PlayedSound2] unless entity @a[team=Orange,distance=..6] run tag @e[type=item_display,tag=purplechestdisplay,tag=Unlocked] remove Unlocked