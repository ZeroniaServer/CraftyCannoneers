execute as @e[type=item_display,tag=CrabDisplay] at @s run function game:modifiers/crabs/animations

#> Crab Rave
execute if score $crabrave CmdData matches 1.. run scoreboard players add $ravetime CmdData 1
execute if score $ravetime CmdData matches 101.. run scoreboard players reset $crabrave CmdData
execute if score $ravetime CmdData matches 101.. run scoreboard players reset $ravetime CmdData

#> Spawn crabs
execute if loaded 70 -28 0 if score $gametime CmdData matches ..39 unless score $curr crabs matches 5.. run function game:modifiers/crabs/spawnnew
execute if loaded 70 -28 0 if score $gametime CmdData matches 40.. unless score $total crabs matches 5.. run function game:modifiers/crabs/spawnnew