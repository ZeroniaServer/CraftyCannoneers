scoreboard players set @s RNGmax 2
execute store result score @s RNGscore run data get entity @s UUID[0]
scoreboard players operation @s RNGscore %= @s RNGmax

execute if score @s RNGscore matches 0 run function game:modifiers/seastorms/lightning
execute if score @s RNGscore matches 1 run function game:modifiers/seastorms/thunder

scoreboard players set $StormTime CmdData 91

kill @s