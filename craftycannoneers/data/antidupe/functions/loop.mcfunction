execute as @e[type=chest_minecart,tag=orangeteamchest,limit=1] run function antidupe:chestcount
execute as @e[type=chest_minecart,tag=purpleteamchest,limit=1] run function antidupe:chestcount

execute if score $orange1 hasArrows > $orange2 hasArrows as @e[type=chest_minecart,tag=orangeteamchest] at @s as @a[team=Orange,distance=..9] at @s if score @s arrowsToShoot matches 1.. if score @s hasArrows < @s arrowsToShoot run function antidupe:returnarrows
execute if score $purple1 hasArrows > $purple2 hasArrows as @e[type=chest_minecart,tag=purpleteamchest] at @s as @a[team=Purple,distance=..9] at @s if score @s arrowsToShoot matches 1.. if score @s hasArrows < @s arrowsToShoot run function antidupe:returnarrows

execute unless score $orange1 hasArrows = $orange2 hasArrows store result score $orange2 hasArrows run scoreboard players get $orange1 hasArrows
execute unless score $purple1 hasArrows = $purple2 hasArrows store result score $purple2 hasArrows run scoreboard players get $purple1 hasArrows

execute as @a[team=Orange] at @s if entity @e[type=chest_minecart,tag=orangeteamchest,distance=..9] if score @s hasArrows < @s arrowsToShoot if score $orange1 hasArrows >= @s arrowsToShoot run function antidupe:returnarrows
execute as @a[team=Purple] at @s if entity @e[type=chest_minecart,tag=purpleteamchest,distance=..9] if score @s hasArrows < @s arrowsToShoot if score $purple1 hasArrows >= @s arrowsToShoot run function antidupe:returnarrows