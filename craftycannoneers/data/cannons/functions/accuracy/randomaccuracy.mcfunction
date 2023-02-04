summon marker ~ ~ ~ {Tags:["RandomAccuracy"]}

scoreboard players set @s drag 25
scoreboard players set @s gravity 145

scoreboard players set $current drag 25
scoreboard players set $current gravity 145

scoreboard players set $current RNGmax 5
execute store result score $current RNGscore run data get entity @e[type=marker,tag=RandomAccuracy,limit=1] UUID[0]
scoreboard players operation $current RNGscore %= $current RNGmax

scoreboard players operation $current drag += $current RNGscore

scoreboard players set $current RNGmax 5
execute store result score $current RNGscore run data get entity @e[type=marker,tag=RandomAccuracy,limit=1] UUID[1]
kill @e[type=marker,tag=RandomAccuracy,limit=1]
scoreboard players operation $current RNGscore %= $current RNGmax
scoreboard players reset $current RNGmax

scoreboard players operation $current gravity -= $current RNGscore
scoreboard players reset $current RNGscore

scoreboard players operation @s drag = $current drag
scoreboard players reset $current drag

scoreboard players operation @s gravity = $current gravity
scoreboard players reset $current gravity