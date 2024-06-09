scoreboard players set @s drag 25
scoreboard players set @s gravity 145

execute store result score $current RNGscore run random value 0..4
scoreboard players operation @s drag += $current RNGscore

execute store result score $current RNGscore run random value 0..4
scoreboard players operation @s gravity -= $current RNGscore