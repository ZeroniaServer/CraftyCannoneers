execute at @s[tag=ReleaseCrab] run function weapons:crabtrap/release_animation

execute at @s[tag=!ReleaseCrab] if entity @e[type=cat,tag=CrabVehicle,tag=!CrabtrapImmune,tag=!justReleased,limit=1,distance=..0.8] run function weapons:crabtrap/capture