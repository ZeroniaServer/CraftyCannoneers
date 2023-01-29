#> Filter for Boarding Axes without knockback
data modify storage craftycannoneers:inventory Items append from block 0 300 0 Items[{id:"minecraft:stone_axe",tag:{Knockback:0}}]

#> Initiate replacement loop
function game:boardingaxe/initiateloop