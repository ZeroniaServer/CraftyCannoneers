#> Correct lighting when under a roof
scoreboard players set $lighting CmdData 0
execute unless block ~ ~ ~ air run scoreboard players set $lighting CmdData 1
execute unless block ^ ^ ^0.5 air run scoreboard players set $lighting CmdData 1
execute unless block ^ ^ ^-0.5 air run scoreboard players set $lighting CmdData 1
execute unless block ^ ^ ^1 air run scoreboard players set $lighting CmdData 1
execute unless block ^ ^ ^-1 air run scoreboard players set $lighting CmdData 1
execute if score $lighting CmdData matches 1 run function game:boat/cannon/lighting
execute unless score $lighting CmdData matches 1 run data remove entity @s brightness

#> Rotate secondary display
function game:boat/euler