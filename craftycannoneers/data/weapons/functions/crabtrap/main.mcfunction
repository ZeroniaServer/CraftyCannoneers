execute as @e[type=marker,tag=CrabTrapSpawn] at @s run function weapons:crabtrap/failplace
execute as @e[type=item_display,tag=CrabTrap] at @s run function weapons:crabtrap/traploop
execute as @e[type=item_display,tag=ReleaseCrab] at @s run function weapons:crabtrap/release_animation

scoreboard players add @e[type=endermite,tag=CrabtrapImmune] eyeclick 1
scoreboard players add @e[type=cat,tag=CrabtrapImmune] eyeclick 1

tag @e[type=endermite,tag=CrabtrapImmune,scores={eyeclick=40..}] remove CrabtrapImmune
tag @e[type=cat,tag=CrabtrapImmune,scores={eyeclick=40..}] remove CrabtrapImmune

scoreboard players reset @e[type=endermite,tag=!CrabtrapImmune,scores={eyeclick=1..}] eyeclick
scoreboard players reset @e[type=cat,tag=!CrabtrapImmune,scores={eyeclick=1..}] eyeclick