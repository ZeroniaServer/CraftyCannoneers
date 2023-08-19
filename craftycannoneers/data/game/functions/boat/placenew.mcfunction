execute if entity @s[tag=1] run tp @s ~ ~ ~ 0 ~
execute if entity @s[tag=2] run tp @s ~ ~ ~ -180 ~

execute if entity @s[tag=1] positioned 109 -31 0 run function game:boat/rotate
execute if entity @s[tag=2] positioned 31 -31 0 run function game:boat/rotate
execute if entity @s[tag=3] positioned 83 -31 12 run function game:boat/rotate
execute if entity @s[tag=4] positioned 57 -31 -12 run function game:boat/rotate

kill @s[type=marker,tag=respawnboat]