execute store result score $bounce RNGscore run random value 0..9
execute if score $bounce RNGscore matches ..0 run rotate @s ~30 ~
execute if score $bounce RNGscore matches 1 run rotate @s ~-30 ~
execute if score $bounce RNGscore matches 2 run rotate @s ~45 ~
execute if score $bounce RNGscore matches 3 run rotate @s ~-45 ~
execute if score $bounce RNGscore matches 4 run rotate @s ~90 ~
execute if score $bounce RNGscore matches 5 run rotate @s ~-90 ~
execute if score $bounce RNGscore matches 6 run rotate @s ~10 ~
execute if score $bounce RNGscore matches 7 run rotate @s ~-10 ~
execute if score $bounce RNGscore matches 8 run rotate @s ~5 ~
execute if score $bounce RNGscore matches 9 run rotate @s ~-5 ~