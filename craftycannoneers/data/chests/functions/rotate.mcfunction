tag @s add Rotated
execute if score @s RNGscore matches 1.. run tp @s ~ ~ ~ ~1 ~
execute if score @s RNGscore matches 1.. run scoreboard players remove @s RNGscore 1
execute if score @s RNGscore matches 1.. at @s run function chests:rotate