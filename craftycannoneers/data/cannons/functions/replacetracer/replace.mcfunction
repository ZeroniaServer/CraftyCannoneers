#> Save copy of inventory
function inventory:save

#> Place shulker box + load copy of Tracer Cannonball
setblock 0 300 0 yellow_shulker_box
loot replace block 0 300 0 container.0 loot cannons:tracer
data modify storage craftycannoneers:inventory Tracer set from block 0 300 0 Items[0]

#> Try offhand
function cannons:replacetracer/offhand

#> Try hotbar + top two rows of inventory
execute unless score $foundtracer CmdData matches 1.. run function cannons:replacetracer/hotbar

#> Try bottom row of inventory
execute unless score $foundtracer CmdData matches 1.. run function cannons:replacetracer/bottom

#> Load modified copy of inventory
execute if score $foundtracer CmdData matches 1.. run function inventory:load

#> Failsafe
execute unless score $foundtracer CmdData matches 1.. run function cannons:replacetracer/givenew

#> Cleanup
data remove storage craftycannoneers:inventory Items[]
data remove storage craftycannoneers:inventory Tracer
scoreboard players reset $foundtracer CmdData
setblock 0 300 0 air
# function inventory:clear