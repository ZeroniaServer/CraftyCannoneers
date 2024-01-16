scoreboard players add @s CmdData 1

#> Ascend
execute at @s[scores={CmdData=1..9}] run function game:modifiers/lostcargo/ascend
execute at @s[scores={CmdData=9..20}] run tp @s ~ ~-0.05 ~

#> Emerge
execute at @s[scores={CmdData=7}] run function game:modifiers/lostcargo/emerge

#> As hopper minecart
execute on passengers at @s[type=hopper_minecart,tag=Opened] run function tutorial:treasurepit/opened

#> Bobble
execute if score @s CmdData matches 22 run data merge entity @s {start_interpolation:0,interpolation_duration:7,transformation:{translation:[0.0f,0.07f,0.0f]}}
execute if score @s CmdData matches 29 run data merge entity @s {start_interpolation:0,interpolation_duration:7,transformation:{translation:[0.0f,0.0f,0.0f]}}
scoreboard players set @s[scores={CmdData=36..}] CmdData 21

#> Once looted
execute at @s[tag=Looted] run function game:modifiers/lostcargo/breakbarrel