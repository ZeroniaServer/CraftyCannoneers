tag @s remove OnFire
execute if entity @s[tag=!Sailing] run function game:boat/cannon/transfergunpowder
execute if entity @s[tag=Sailing] run function game:boat/cannon/updategunpowder
scoreboard players reset @s[tag=!FireCannon,scores={firetime=1..}] firetime