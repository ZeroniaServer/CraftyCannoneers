#> Place shulker box
setblock 0 300 0 yellow_shulker_box

#> Store hotbar + top two rows of inventory
data modify block 0 300 0 Items set from entity @s Inventory

#> Write to ender chest
loot replace entity @s enderchest.0 mine 0 300 0

#> Store bottom row of inventory
data modify block 0 300 0 Items set value []
item replace block 0 300 0 container.0 from entity @s inventory.18
item replace block 0 300 0 container.1 from entity @s inventory.19
item replace block 0 300 0 container.2 from entity @s inventory.20
item replace block 0 300 0 container.3 from entity @s inventory.21
item replace block 0 300 0 container.4 from entity @s inventory.22
item replace block 0 300 0 container.5 from entity @s inventory.23
item replace block 0 300 0 container.6 from entity @s inventory.24
item replace block 0 300 0 container.7 from entity @s inventory.25
item replace block 0 300 0 container.8 from entity @s inventory.26

#> Write to ender chest
loot replace entity @s enderchest.1 mine 0 300 0

#> Store offhand
data modify block 0 300 0 Items set value []
item replace block 0 300 0 container.0 from entity @s weapon.offhand

#> Write to ender chest
loot replace entity @s enderchest.2 mine 0 300 0

#> Remove shulker box
setblock 0 300 0 air