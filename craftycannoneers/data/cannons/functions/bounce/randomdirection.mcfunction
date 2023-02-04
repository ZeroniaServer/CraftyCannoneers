scoreboard players set @s RNGmax 10
execute store result score @s RNGscore run data get entity @s UUID[0]
scoreboard players operation @s RNGscore %= @s RNGmax

execute if score @s RNGscore matches ..0 at @s run tp @s ~ ~ ~ ~30 ~
execute if score @s RNGscore matches 1 at @s run tp @s ~ ~ ~ ~-30 ~
execute if score @s RNGscore matches 2 at @s run tp @s ~ ~ ~ ~45 ~
execute if score @s RNGscore matches 3 at @s run tp @s ~ ~ ~ ~-45 ~
execute if score @s RNGscore matches 4 at @s run tp @s ~ ~ ~ ~90 ~
execute if score @s RNGscore matches 5 at @s run tp @s ~ ~ ~ ~-90 ~
execute if score @s RNGscore matches 6 at @s run tp @s ~ ~ ~ ~10 ~
execute if score @s RNGscore matches 7 at @s run tp @s ~ ~ ~ ~-10 ~
execute if score @s RNGscore matches 8 at @s run tp @s ~ ~ ~ ~5 ~
execute if score @s RNGscore matches 9 at @s run tp @s ~ ~ ~ ~-5 ~

kill @s