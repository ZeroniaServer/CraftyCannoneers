scoreboard players set @s RNGmax 3
execute store result score @s RNGscore run data get entity @s UUID[0]
scoreboard players operation @s RNGscore %= @s RNGmax

execute if score @s RNGscore matches 0 run function game:modifiers/seastorms/lightning
execute if score @s RNGscore matches 1 run function game:modifiers/seastorms/thunder
execute if score @s RNGscore matches 2 unless score $WindDirection CmdData matches 0..1 run function game:modifiers/seastorms/winds

kill @s