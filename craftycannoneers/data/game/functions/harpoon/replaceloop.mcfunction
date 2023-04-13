data modify storage craftycannoneers:inventory Slot set from storage craftycannoneers:inventory Items[-1].Slot
data modify storage craftycannoneers:inventory Items[-1] set from storage craftycannoneers:inventory Harpoon
data modify storage craftycannoneers:inventory Items[-1].Slot set from storage craftycannoneers:inventory Slot
data remove storage craftycannoneers:inventory Slot
data modify block 0 300 0 Items append from storage craftycannoneers:inventory Items[-1]
data remove storage craftycannoneers:inventory Items[-1]
scoreboard players remove $foundharpoon CmdData 1
execute if score $foundharpoon CmdData matches 1.. run function game:harpoon/replaceloop