execute as @e[type=marker,tag=CrabTrapSpawn] at @s run function weapons:crabtrap/failplace
execute as @e[type=item_display,tag=CrabTrap] at @s run function weapons:crabtrap/traploop
execute as @e[type=item_display,tag=ReleaseCrab] at @s run function weapons:crabtrap/release_animation