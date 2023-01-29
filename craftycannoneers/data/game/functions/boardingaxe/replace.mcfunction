#> Save copy of inventory
function inventory:save

#> Place shulker box + load Trident variants into storage
setblock 0 300 0 yellow_shulker_box
execute if score $boarding CmdData matches 0 run loot replace block 0 300 0 container.0 loot weapons:boarding_axe
execute if score $boarding CmdData matches 1 run loot replace block 0 300 0 container.0 loot weapons:boarding_axe_kb
data modify storage craftycannoneers:inventory BoardingAxe set from block 0 300 0 Items[0]

#> Scan offhand
function game:boardingaxe/offhand

#> Scan hotbar + top two rows of inventory
function game:boardingaxe/hotbar

#> Scan bottom row of inventory
function game:boardingaxe/bottom

#> Load modified copy of inventory
function inventory:load

#> Cleanup
data remove storage craftycannoneers:inventory Items[]
data remove storage craftycannoneers:inventory BoardingAxe
setblock 0 300 0 air
scoreboard players reset $foundaxe CmdData
function inventory:clear