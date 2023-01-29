data modify storage craftycannoneers:inventory Slot set from storage craftycannoneers:inventory Items[0].Slot
data modify storage craftycannoneers:inventory Items[0] set from storage craftycannoneers:inventory BoardingAxe
data modify storage craftycannoneers:inventory Items[0].Slot set from storage craftycannoneers:inventory Slot
data remove storage craftycannoneers:inventory Slot
data modify block 0 300 0 Items append from storage craftycannoneers:inventory Items[0]
data remove storage craftycannoneers:inventory Items[0]
scoreboard players remove $foundaxe CmdData 1
execute if score $foundaxe CmdData matches 1.. run function game:boardingaxe/replaceloop