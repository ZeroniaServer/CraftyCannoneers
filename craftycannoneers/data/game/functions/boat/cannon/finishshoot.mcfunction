scoreboard players operation $current playerUUID = @s playerUUID
scoreboard players operation $current PowerM = @s PowerM
scoreboard players operation $current PowerV = @s PowerM
scoreboard players operation $current drag = @s drag
scoreboard players operation $current gravity = @s gravity
execute as @e[type=armor_stand,tag=NewCannonball] run function game:boat/cannon/prepcannonball

tag @s remove Shoot
tag @s remove FireCannon
execute unless score @s CannonID matches 8 run function game:boat/cannon/resetvalues
scoreboard players reset @s CannonID
scoreboard players reset @s cannonshot