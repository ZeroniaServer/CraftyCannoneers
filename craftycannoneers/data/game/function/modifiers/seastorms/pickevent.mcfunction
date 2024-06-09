execute store result score @s RNGscore run random value 0..2

execute if score @s RNGscore matches 0 run function game:modifiers/seastorms/lightning
execute if score @s RNGscore matches 1 run function game:modifiers/seastorms/thunder
execute if score @s RNGscore matches 2 unless score $WindDirection CmdData matches 0..1 run function game:modifiers/seastorms/winds

kill @s