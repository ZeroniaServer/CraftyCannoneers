execute store result score $bounce RNGscore run random value 0..9
execute if score $bounce RNGscore matches ..0 run tp @s ~ ~ ~ ~30 ~
execute if score $bounce RNGscore matches 1 run tp @s ~ ~ ~ ~-30 ~
execute if score $bounce RNGscore matches 2 run tp @s ~ ~ ~ ~45 ~
execute if score $bounce RNGscore matches 3 run tp @s ~ ~ ~ ~-45 ~
execute if score $bounce RNGscore matches 4 run tp @s ~ ~ ~ ~90 ~
execute if score $bounce RNGscore matches 5 run tp @s ~ ~ ~ ~-90 ~
execute if score $bounce RNGscore matches 6 run tp @s ~ ~ ~ ~10 ~
execute if score $bounce RNGscore matches 7 run tp @s ~ ~ ~ ~-10 ~
execute if score $bounce RNGscore matches 8 run tp @s ~ ~ ~ ~5 ~
execute if score $bounce RNGscore matches 9 run tp @s ~ ~ ~ ~-5 ~