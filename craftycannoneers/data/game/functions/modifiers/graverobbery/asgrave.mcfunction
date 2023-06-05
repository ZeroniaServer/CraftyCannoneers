#> TODO everything else actually useful

#> Crab tracker
# The idea in this case is that we will first store crab traps in the marker's data, which is used as a reference for loot loading and gradually removed with each filled slot. Then, we check physical slots normally in chest functions.
scoreboard players set $temp hasCrabTraps 0
execute unless entity @s[tag=Opened,tag=!LoadLoot] on passengers store result score $temp hasCrabTraps if data entity @s data.Items[{tag:{CrabTrap:1b,Empty:0b}}]
scoreboard players operation $curr crabs += $temp hasCrabTraps