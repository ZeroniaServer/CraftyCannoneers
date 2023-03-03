kill @e[type=armor_stand,tag=cannon,tag=!Tutorial]
execute as @e[type=villager,tag=cannon,tag=!Tutorial] at @s run function arenaclear:kill
kill @e[type=marker,tag=villager,tag=!Tutorial]

schedule function arenaclear:cannons/purple 5t