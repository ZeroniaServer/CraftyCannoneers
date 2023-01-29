#> Filter for active and inactive Harpoons
data modify storage craftycannoneers:inventory Items append from block 0 300 0 Items[{id:"minecraft:trident",tag:{Harpoon:2}}]
data modify storage craftycannoneers:inventory Items append from block 0 300 0 Items[{id:"minecraft:trident",tag:{Harpoon:3}}]

#> Initiate replacement loop
function game:harpoon/initiateloop