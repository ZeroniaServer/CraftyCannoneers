execute as @a[team=Orange,distance=..9] if score @s arrowsToShoot matches 1.. run function game:ingame/arrowcount
execute as @a[team=Orange,distance=..9] if score @s arrowsToShoot matches 1.. if entity @s[tag=loaded] run scoreboard players remove @s arrowsToShoot 1
execute as @a[team=Orange,distance=..9] unless score @s useCrossbow matches 1.. if score @s arrowsToShoot matches 1.. if score @s hasArrows < @s arrowsToShoot if score $orange hasArrows >= @s arrowsToShoot run function game:teamchest/antidupe/returnarrows