#> Ascend
execute at @s[tag=water,tag=!ascended] positioned ~ ~0.1 ~ if predicate game:located_water run tag @s add ascend
execute at @s[tag=water,tag=!ascended] positioned ~ ~-0.1 ~ if predicate game:located_water run tag @s add ascend
execute at @s[tag=water,tag=!ascended] unless block ~ ~0.9 ~ #game:sponge_replace unless block ~ ~0.9 ~ #game:raycast_exclude run tag @s add underwater
execute at @s[tag=ascend,tag=!underwater] run function game:modifiers/graverobbery/ascend
execute at @s[tag=water,tag=!ascended,tag=!underwater] positioned ~ ~-0.1 ~ unless predicate game:located_water at @s run function game:modifiers/graverobbery/emerge
execute at @s[tag=water,tag=!ascended,tag=!underwater] positioned ~ ~-0.1 ~ unless predicate game:located_water run tag @s add ascended
execute at @s[tag=water,tag=ascended,tag=!rightheight,tag=!underwater] on vehicle at @s run tp @s ~ ~-0.05 ~
execute at @s[tag=water,tag=ascended,tag=!rightheight,tag=!underwater] if block ~ ~0.24999 ~ water run tag @s add rightheight

#> Bobble in water
execute if entity @s[tag=water,tag=rightheight,tag=!underwater] on vehicle at @s run function game:modifiers/graverobbery/bobble

#> Crab tracker
# The idea in this case is that we will first store crab traps in the marker's data, which is used as a reference for loot loading and gradually removed with each filled slot. Then, we check physical slots normally in chest functions.
scoreboard players set $temp hasCrabTraps 0
execute unless entity @s[tag=Opened,tag=!LoadLoot] on passengers store result score $temp hasCrabTraps if data entity @s data.Items[{tag:{CrabTrap:1b,Empty:0b}}]
scoreboard players operation $curr crabs += $temp hasCrabTraps