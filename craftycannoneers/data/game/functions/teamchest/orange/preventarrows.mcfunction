execute if score @s arrowsToShoot matches 1.. run function game:ingame/arrowcount
scoreboard players operation $temp arrowsToShoot = @s arrowsToShoot
scoreboard players operation $temp arrowsToShoot -= @s hasArrows
execute unless score @s useCrossbow matches 1.. if score @s arrowsToShoot matches 1.. if score @s hasArrows < @s arrowsToShoot if score $orange hasArrows >= $temp arrowsToShoot unless score $orange hasArrows matches 0 run function game:teamchest/antidupe/returnarrows
scoreboard players reset $temp arrowsToShoot