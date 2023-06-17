
tag @s remove Shoot
tag @s remove FireCannon
execute unless score @s CannonID matches 8 run function game:boat/cannon/resetvalues
scoreboard players reset @s CannonID
scoreboard players reset @s cannonshot
execute if entity @s[tag=!Sailing] run function game:boat/cannon/transfergunpowder
execute if entity @s[tag=Sailing] run function game:boat/cannon/updategunpowder