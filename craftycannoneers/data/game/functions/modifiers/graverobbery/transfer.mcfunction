data modify entity @s data.Items set value []
execute as fffffe5c-ffff-ffbb-0000-01a400000045 on passengers if data entity @s data.Item run data modify entity @e[type=marker,tag=gravedata,tag=GraveEntity,tag=new,limit=1] data.Items append from entity @s data.Item
tag @s remove new
data modify entity @s data.Items[0].Slot set value 0b
data modify entity @s data.Items[1].Slot set value 1b
data modify entity @s data.Items[2].Slot set value 2b
data modify entity @s data.Items[3].Slot set value 3b
data modify entity @s data.Items[4].Slot set value 4b