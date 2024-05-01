#> Check if this inventory partition contains red Tracer Cannonball
data modify storage craftycannoneers:inventory Items append from block 0 300 0 Items[{id:"minecraft:diamond_hoe",components:{"custom_model_data":91}}]

execute store success score $foundtracer CmdData if data storage craftycannoneers:inventory Items[0]

#> If so, replace with green Tracer Cannonball and write it back to the remote inventory
execute if score $foundtracer CmdData matches 1.. run data modify storage craftycannoneers:inventory Slot set from storage craftycannoneers:inventory Items[0].Slot
execute if score $foundtracer CmdData matches 1.. run data modify storage craftycannoneers:inventory Items[0] set from storage craftycannoneers:inventory Tracer
execute if score $foundtracer CmdData matches 1.. run data modify storage craftycannoneers:inventory Items[0].Slot set from storage craftycannoneers:inventory Slot
execute if score $foundtracer CmdData matches 1.. run data remove storage craftycannoneers:inventory Slot

execute if score $foundtracer CmdData matches 1.. run data modify block 0 300 0 Items append from storage craftycannoneers:inventory Items[0]

#> Cleanup
data modify storage craftycannoneers:inventory Items set value []