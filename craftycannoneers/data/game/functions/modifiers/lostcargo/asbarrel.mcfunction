scoreboard players add @s CmdData 1

#> Ascend
execute if entity @s[scores={CmdData=1..35}] run function game:modifiers/lostcargo/ascend
execute if entity @s[scores={CmdData=36..47}] on vehicle at @s run tp @s ~ ~-0.05 ~

#> Emerge
execute at @s[scores={CmdData=40}] run function game:modifiers/lostcargo/emerge

#> Bobble
execute if score @s CmdData matches 50..56 on vehicle at @s run tp @s ~ ~0.01 ~
execute if score @s CmdData matches 57..63 on vehicle at @s run tp @s ~ ~-0.01 ~
scoreboard players set @s[scores={CmdData=63..}] CmdData 49

#> Once looted
execute if entity @s[tag=ContainerLooted] run function game:modifiers/lostcargo/oncelooted

#> Trap explode
execute at @s[tag=TrapExplode] run function game:modifiers/lostcargo/trapexplode