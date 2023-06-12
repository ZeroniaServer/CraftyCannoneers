scoreboard players reset @s playerUUID
scoreboard players set @s PowerM 0
function cannons:accuracy/randomaccuracy
execute if entity @s[tag=!Sailing] run function game:boat/cannon/transfergunpowder
execute if entity @s[tag=Sailing] run function game:boat/cannon/updategunpowder