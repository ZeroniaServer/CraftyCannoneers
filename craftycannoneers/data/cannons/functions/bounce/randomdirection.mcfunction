summon marker ~ ~ ~ {Tags:["BounceRNG"]}
scoreboard players set @e[type=marker,tag=BounceRNG] RNGmax 10
execute as @e[type=marker,tag=BounceRNG] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=BounceRNG] run scoreboard players operation @s RNGscore %= @s RNGmax

execute if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=..0}] at @s run tp @s ~ ~ ~ ~30 ~
execute if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=1}] at @s run tp @s ~ ~ ~ ~-30 ~
execute if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=2}] at @s run tp @s ~ ~ ~ ~45 ~
execute if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=3}] at @s run tp @s ~ ~ ~ ~-45 ~
execute if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=4}] at @s run tp @s ~ ~ ~ ~90 ~
execute if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=5}] at @s run tp @s ~ ~ ~ ~-90 ~
execute if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=6}] at @s run tp @s ~ ~ ~ ~10 ~
execute if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=7}] at @s run tp @s ~ ~ ~ ~-10 ~
execute if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=8}] at @s run tp @s ~ ~ ~ ~5 ~
execute if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=9}] at @s run tp @s ~ ~ ~ ~-5 ~

kill @e[type=marker,tag=BounceRNG]