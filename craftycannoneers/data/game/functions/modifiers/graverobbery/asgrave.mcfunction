#> Ascend/emerge from water
execute at @s[tag=water,tag=!ascended] positioned ~ ~0.1 ~ if predicate game:located_water run tag @s add ascend
execute at @s[tag=water,tag=!ascended] positioned ~ ~-0.1 ~ if predicate game:located_water run tag @s add ascend
execute at @s[tag=water,tag=!ascended] unless block ~ ~0.9 ~ #game:sponge_replace unless block ~ ~0.9 ~ #game:raycast_exclude run tag @s add underwater
execute at @s[tag=ascend,tag=!ascended,tag=!underwater] run function game:modifiers/graverobbery/ascend
execute at @s[tag=water,tag=ascended,tag=!rightheight,tag=!underwater] at @s run tp @s ~ ~-0.05 ~
execute at @s[tag=water,tag=ascended,tag=!rightheight,tag=!underwater] positioned ~ ~0.0624999 ~ if predicate game:located_water run tag @s add rightheight

execute if entity @s[tag=rightheight] unless score @s CmdData matches 31.. run scoreboard players set @s CmdData 31
execute if entity @s[tag=!water] unless score @s CmdData matches 31.. run scoreboard players set @s CmdData 31

#> Bobble in water
execute if entity @s[tag=water,tag=rightheight,tag=!underwater] at @s run function game:modifiers/graverobbery/bobble

#> Crab tracker
# The idea in this case is that we will first store crab traps in the marker's data, which is used as a reference for loot loading and gradually removed with each filled slot. Then, we check physical slots normally in chest functions.
scoreboard players set $temp hasCrabTraps 0
execute on passengers unless entity @s[tag=Opened,tag=!LoadLoot] on passengers store result score $temp hasCrabTraps if data entity @s data.Items[{tag:{CrabTrap:1b,Empty:0b}}]
scoreboard players operation $curr crabs += $temp hasCrabTraps