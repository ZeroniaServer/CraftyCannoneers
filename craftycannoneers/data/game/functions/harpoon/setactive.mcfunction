#> Filter for normal Harpoons
data modify storage craftycannoneers:inventory Items append from block 0 300 0 Items[{id:"minecraft:trident",components:{"minecraft:custom_data":{Harpoon:1}}}]

#> Initiate replacement loop
function game:harpoon/initiateloop