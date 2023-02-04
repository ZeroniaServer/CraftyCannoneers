scoreboard players set @s RNGmax 5
execute store result score @s RNGscore run data get entity @s UUID[0]
scoreboard players operation @s RNGscore %= @s RNGmax

execute if score @s RNGscore matches 0 run playsound bounce master @a ~ ~ ~ 2 1
execute if score @s RNGscore matches 1 run playsound bounce master @a ~ ~ ~ 2 1.1
execute if score @s RNGscore matches 2 run playsound bounce master @a ~ ~ ~ 2 0.9
execute if score @s RNGscore matches 3 run playsound bounce master @a ~ ~ ~ 2 0.95
execute if score @s RNGscore matches 4 run playsound bounce master @a ~ ~ ~ 2 1.05

kill @s