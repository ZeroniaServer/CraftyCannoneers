#> Place shulker box
setblock 0 300 0 yellow_shulker_box

#> Copy hotbar + top two rows of inventory
data modify block 0 300 0 Items set from entity @s EnderItems[0].tag.BlockEntityTag.Items
loot replace entity @s hotbar.0 27 mine 0 300 0 air{drop_contents:1b}

#> Copy bottom row of inventory
data modify block 0 300 0 Items set value []
data modify block 0 300 0 Items set from entity @s EnderItems[1].tag.BlockEntityTag.Items
loot replace entity @s inventory.18 9 mine 0 300 0 air{drop_contents:1b}

#> Copy offhand
data modify block 0 300 0 Items set value []
data modify block 0 300 0 Items set from entity @s EnderItems[2].tag.BlockEntityTag.Items
loot replace entity @s weapon.offhand 1 mine 0 300 0 air{drop_contents:1b}

#> Remove shulker box
setblock 0 300 0 air