execute unless score @s gpdisp_time matches 0.. run tag @s remove DisplayGP
execute if entity @s[tag=DisplayGP] run function cannons:loadgunpowder