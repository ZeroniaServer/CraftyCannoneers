scoreboard players set @s RNGscore 0
scoreboard players set @s RNGmax 100

execute store result score @s RNGscore run data get entity @s UUID[2]
scoreboard players operation @s RNGscore %= @s RNGmax

execute if entity @s[scores={RNGscore=..25}] run tag @s add CBGunpowder
execute if entity @s[scores={RNGscore=26..50}] run tag @s add CBGold
execute if entity @s[scores={RNGscore=51..55}] run tag @s add CBCannonball
execute if entity @s[scores={RNGscore=56..60}] run tag @s add CBWeapons
execute if entity @s[scores={RNGscore=61..70}] run tag @s add CBMovement
execute if entity @s[scores={RNGscore=71..80}] run tag @s add CBBoarding

tag @s add HasType