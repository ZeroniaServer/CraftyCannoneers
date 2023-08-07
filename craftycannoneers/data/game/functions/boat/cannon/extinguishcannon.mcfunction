tag @s remove OnFire
function game:boat/cannon/updategunpowder
scoreboard players reset @s[tag=!FireCannon,scores={firetime=1..}] firetime