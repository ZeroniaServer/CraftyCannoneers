data modify block 0 300 0 Items set value []
data modify block 0 300 0 Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items
function cannons:replacetracer/setgreen
execute if score $foundtracer CmdData matches 1.. run loot replace entity @s enderchest.0 mine 0 300 0