execute if entity @s[tag=1] run scoreboard players set @s eyeclick 0
execute if entity @s[tag=2] run scoreboard players set @s eyeclick -90
execute if entity @s[tag=3] run scoreboard players set @s eyeclick 0
execute if entity @s[tag=4] run scoreboard players set @s eyeclick -90

execute if entity @s[tag=1] positioned 109 -30 0 run function game:boat/rotate
execute if entity @s[tag=2] positioned 31 -30 0 run function game:boat/rotate
execute if entity @s[tag=3] positioned 83 -30 12 run function game:boat/rotate
execute if entity @s[tag=4] positioned 57 -30 -12 run function game:boat/rotate

kill @s[type=marker,tag=respawnboat]