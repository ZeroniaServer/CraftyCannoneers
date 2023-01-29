#> Save copy of inventory
function inventory:save

#> Place shulker box + load Trident variants into storage
setblock 0 300 0 yellow_shulker_box
execute if score $harpoon CmdData matches 0 run loot replace block 0 300 0 container.0 loot weapons:harpoon
execute if score $harpoon CmdData matches 1 run loot replace block 0 300 0 container.0 loot weapons:harpoon_active
data modify storage craftycannoneers:inventory Harpoon set from block 0 300 0 Items[0]

#> Scan offhand
function game:harpoon/offhand

#> Scan hotbar + top two rows of inventory
function game:harpoon/hotbar

#> Scan bottom row of inventory
function game:harpoon/bottom

#> Load modified copy of inventory
function inventory:load

#> Cleanup
data remove storage craftycannoneers:inventory Items[]
data remove storage craftycannoneers:inventory Harpoon
setblock 0 300 0 air
scoreboard players reset $foundharpoon CmdData
function inventory:clear