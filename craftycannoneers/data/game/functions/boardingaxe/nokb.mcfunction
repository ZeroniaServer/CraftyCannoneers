#> Filter for Boarding Axes with knockback
data modify storage craftycannoneers:inventory Items append from block 0 300 0 Items[{id:"minecraft:stone_axe",tag:{Knockback:1}}]

#> Initiate replacement loop
function game:boardingaxe/initiateloop