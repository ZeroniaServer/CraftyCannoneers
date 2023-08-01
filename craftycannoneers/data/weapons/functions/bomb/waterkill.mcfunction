particle splash ~ ~0.5 ~ 0.1 0.2 0.1 0.1 20 normal @a[team=!Lobby]
particle item ender_eye{CustomModelData:2} ~ ~-0.7 ~ 0.1 0.1 0.1 0.1 15 normal @a[team=!Lobby]
tag @s add currbomb
execute as @e[type=snowball,tag=BubbleSource] run function weapons:bomb/killbubble
kill @s