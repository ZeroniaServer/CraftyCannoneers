tag @s remove Shoot
tag @s remove FireCannon
execute unless score @s CannonID matches 8 run function game:boat/cannon/resetvalues
scoreboard players reset @s CannonID
scoreboard players reset @s cannonshot
function game:boat/cannon/updategunpowder