tag @s remove Shoot
tag @s remove FireCannon
scoreboard players reset @s CannonID
scoreboard players reset @s playerUUID
scoreboard players reset @s cannonshot
scoreboard players set @s PowerM 0
execute if entity @s[tag=!Sailing] run function game:boat/cannon/transfergunpowder
execute if entity @s[tag=Sailing] run function game:boat/cannon/updategunpowder