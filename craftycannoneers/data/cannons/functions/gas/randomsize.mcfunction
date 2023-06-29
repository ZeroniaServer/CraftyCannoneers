execute store result score @s RNGscore run data get entity @s UUID[0]
scoreboard players set @s RNGmax 3
scoreboard players operation @s RNGscore %= @s RNGmax
execute if score @s RNGscore matches 0 run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.675f,0.675f,0.675f],translation:[0f,1f,0f]}}
execute if score @s RNGscore matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,1f,0f]}}
execute if score @s RNGscore matches 2 run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.4375f,0.4375f,0.4375f],translation:[0f,1f,0f]}}