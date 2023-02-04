summon marker ~ ~ ~ {Tags:["BounceSound"]}
scoreboard players set $max RNGmax 5
execute store result score $sound RNGscore run data get entity @e[type=marker,tag=BounceSound,limit=1] UUID[0]
kill @e[type=marker,tag=BounceSound,limit=1]
scoreboard players operation $sound RNGscore %= $max RNGmax
scoreboard players reset $max RNGmax

execute if score $sound RNGscore matches 0 run playsound bounce master @a ~ ~ ~ 2 1
execute if score $sound RNGscore matches 1 run playsound bounce master @a ~ ~ ~ 2 1.1
execute if score $sound RNGscore matches 2 run playsound bounce master @a ~ ~ ~ 2 0.9
execute if score $sound RNGscore matches 3 run playsound bounce master @a ~ ~ ~ 2 0.95
execute if score $sound RNGscore matches 4 run playsound bounce master @a ~ ~ ~ 2 1.05

scoreboard players reset $sound RNGscore