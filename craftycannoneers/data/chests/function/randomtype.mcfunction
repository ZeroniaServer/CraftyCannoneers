execute store result score @s RNGscore run random value 0..99
execute if score @s RNGscore matches ..60 run tag @s add Common
execute if score @s RNGscore matches 61..85 run tag @s add Uncommon
execute if score @s RNGscore matches 86.. run tag @s add Rare