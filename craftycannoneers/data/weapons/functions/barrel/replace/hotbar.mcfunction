data modify storage craftycannoneers:inventory Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items
execute store result score $barrelSlot CmdData run data get entity @s SelectedItemSlot

execute if score $barrelSlot CmdData matches 0 run data modify storage craftycannoneers:inventory Items[{Slot:0b}].Count set value 64b
execute if score $barrelSlot CmdData matches 0 run data remove storage craftycannoneers:inventory Items[{Slot:0b}].tag.Blank

execute if score $barrelSlot CmdData matches 1 run data modify storage craftycannoneers:inventory Items[{Slot:1b}].Count set value 64b
execute if score $barrelSlot CmdData matches 1 run data remove storage craftycannoneers:inventory Items[{Slot:1b}].tag.Blank

execute if score $barrelSlot CmdData matches 2 run data modify storage craftycannoneers:inventory Items[{Slot:2b}].Count set value 64b
execute if score $barrelSlot CmdData matches 2 run data remove storage craftycannoneers:inventory Items[{Slot:2b}].tag.Blank

execute if score $barrelSlot CmdData matches 3 run data modify storage craftycannoneers:inventory Items[{Slot:3b}].Count set value 64b
execute if score $barrelSlot CmdData matches 3 run data remove storage craftycannoneers:inventory Items[{Slot:3b}].tag.Blank

execute if score $barrelSlot CmdData matches 4 run data modify storage craftycannoneers:inventory Items[{Slot:4b}].Count set value 64b
execute if score $barrelSlot CmdData matches 4 run data remove storage craftycannoneers:inventory Items[{Slot:4b}].tag.Blank

execute if score $barrelSlot CmdData matches 5 run data modify storage craftycannoneers:inventory Items[{Slot:5b}].Count set value 64b
execute if score $barrelSlot CmdData matches 5 run data remove storage craftycannoneers:inventory Items[{Slot:5b}].tag.Blank

execute if score $barrelSlot CmdData matches 6 run data modify storage craftycannoneers:inventory Items[{Slot:6b}].Count set value 64b
execute if score $barrelSlot CmdData matches 6 run data remove storage craftycannoneers:inventory Items[{Slot:6b}].tag.Blank

execute if score $barrelSlot CmdData matches 7 run data modify storage craftycannoneers:inventory Items[{Slot:7b}].Count set value 64b
execute if score $barrelSlot CmdData matches 7 run data remove storage craftycannoneers:inventory Items[{Slot:7b}].tag.Blank

execute if score $barrelSlot CmdData matches 8 run data modify storage craftycannoneers:inventory Items[{Slot:8b}].Count set value 64b
execute if score $barrelSlot CmdData matches 8 run data remove storage craftycannoneers:inventory Items[{Slot:8b}].tag.Blank

data modify block 0 300 0 Items set from storage craftycannoneers:inventory Items
data remove storage craftycannoneers:inventory Items
loot replace entity @s enderchest.0 mine 0 300 0