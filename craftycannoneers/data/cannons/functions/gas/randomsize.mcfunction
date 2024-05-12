execute store result score @s RNGscore run random value 0..2
execute if score @s RNGscore matches 0 run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.675f,0.675f,0.675f],translation:[0.0f,1.0f,0.0f]}}
execute if score @s RNGscore matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.75f,0.0f]}}
execute if score @s RNGscore matches 2 run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.4375f,0.4375f,0.4375f],translation:[0.0f,0.5f,0.0f]}}
execute on vehicle run kill