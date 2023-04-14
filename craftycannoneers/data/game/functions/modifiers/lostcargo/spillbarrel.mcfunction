#> Drop 5 items from each loot table if this barrel has not been opened yet
execute on passengers unless entity @s[tag=Opened] run function game:modifiers/lostcargo/dropall

#> Drop the remaining unloaded slots if this barrel has not fully loaded loot yet
execute on passengers if entity @s[tag=LoadLoot] run function game:modifiers/lostcargo/dropunloaded

#> Otherwise, drop whatever was already in the barrel
tag @s add spill
function game:modifiers/lostcargo/breakbarrel