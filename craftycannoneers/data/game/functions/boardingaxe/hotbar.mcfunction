data modify block 0 300 0 Items set value []
data modify block 0 300 0 Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items
execute if score $boarding CmdData matches 1 run function game:boardingaxe/kb
execute if score $boarding CmdData matches 0 run function game:boardingaxe/nokb
loot replace entity @s enderchest.0 mine 0 300 0