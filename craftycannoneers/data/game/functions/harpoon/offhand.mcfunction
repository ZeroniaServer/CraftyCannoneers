data modify block 0 300 0 Items set value []
data modify block 0 300 0 Items set from entity @s EnderItems[2].tag.BlockEntityTag.Items

execute if score $harpoon CmdData matches 0 run function game:harpoon/setnormal
execute if score $harpoon CmdData matches 1 run function game:harpoon/setactive
loot replace entity @s enderchest.2 mine 0 300 0