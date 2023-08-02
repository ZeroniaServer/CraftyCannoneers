#> Correct lighting when under a roof
scoreboard players set $lighting CmdData 0
execute unless block ~ ~ ~ air unless block ~ ~ ~ light run scoreboard players set $lighting CmdData 1
execute unless block ^ ^ ^0.5 air unless block ^ ^ ^0.5 light run scoreboard players set $lighting CmdData 1
execute unless block ^ ^ ^-0.5 air unless block ^ ^ ^-0.5 light run scoreboard players set $lighting CmdData 1
execute unless block ^ ^ ^1 air unless block ^ ^ ^1 light run scoreboard players set $lighting CmdData 1
execute unless block ^ ^ ^-1 air unless block ^ ^ ^-1 light run scoreboard players set $lighting CmdData 1
execute if score $lighting CmdData matches 1 run function game:boat/lighting
execute if score $lighting CmdData matches 1 on passengers run function game:boat/lighting
execute unless score $lighting CmdData matches 1 run data remove entity @s[tag=lit] brightness
execute unless score $lighting CmdData matches 1 run tag @s remove lit
execute unless score $lighting CmdData matches 1 on passengers run data remove entity @s[tag=lit] brightness
execute unless score $lighting CmdData matches 1 on passengers run tag @s remove lit

#> Rotate secondary display
execute on passengers positioned as @s run tp @s ~ ~ ~ ~ ~ 