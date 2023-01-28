data modify block 0 300 0 Items set value []
data modify block 0 300 0 Items set from entity @s EnderItems[1].tag.BlockEntityTag.Items
function cannons:replacetracer/setgreen
execute if score $foundtracer CmdData matches 1.. run loot replace entity @s enderchest.1 mine 0 300 0