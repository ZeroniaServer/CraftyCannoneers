execute at @s run summon marker ~ ~ ~ {Tags:["RandomAccuracy"]}

scoreboard players set @s drag 25
scoreboard players set @s gravity 145

scoreboard players set @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] drag 25
scoreboard players set @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] gravity 145

scoreboard players set @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] RNGmax 5
execute store result score @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] RNGscore run data get entity @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] UUID[0]
execute store result score @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] RNGscore run scoreboard players operation @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] RNGscore %= @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] RNGmax

scoreboard players operation @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] drag += @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] RNGscore

scoreboard players set @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] RNGmax 5
execute store result score @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] RNGscore run data get entity @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] UUID[1]
execute store result score @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] RNGscore run scoreboard players operation @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] RNGscore %= @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] RNGmax

scoreboard players operation @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] gravity -= @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] RNGscore

scoreboard players operation @s drag = @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] drag
scoreboard players operation @s gravity = @e[type=marker,tag=RandomAccuracy,limit=1,sort=nearest] gravity

kill @e[type=marker,tag=RandomAccuracy]