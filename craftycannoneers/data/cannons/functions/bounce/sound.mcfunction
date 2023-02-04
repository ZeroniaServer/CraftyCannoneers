execute at @s run summon marker ~ ~ ~ {Tags:["BounceSound"]}
scoreboard players set @e[type=marker,tag=BounceSound] RNGmax 5
execute as @e[type=marker,tag=BounceSound] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=BounceSound] run scoreboard players operation @s RNGscore %= @s RNGmax

execute as @e[type=marker,tag=BounceSound,scores={RNGscore=0}] at @s run playsound bounce master @a ~ ~ ~ 2 1
execute as @e[type=marker,tag=BounceSound,scores={RNGscore=1}] at @s run playsound bounce master @a ~ ~ ~ 2 1.1
execute as @e[type=marker,tag=BounceSound,scores={RNGscore=2}] at @s run playsound bounce master @a ~ ~ ~ 2 0.9
execute as @e[type=marker,tag=BounceSound,scores={RNGscore=3}] at @s run playsound bounce master @a ~ ~ ~ 2 0.95
execute as @e[type=marker,tag=BounceSound,scores={RNGscore=4}] at @s run playsound bounce master @a ~ ~ ~ 2 1.05

kill @e[type=marker,tag=BounceSound]