#> Filter for normal Harpoons
data modify storage craftycannoneers:inventory Items append from block 0 300 0 Items[{id:"minecraft:trident",tag:{Harpoon:1}}]

#> Initiate replacement loop
function game:harpoon/initiateloop