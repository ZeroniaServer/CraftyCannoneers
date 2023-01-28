function tutorial:enterarea

loot replace entity @s hotbar.0 loot weapons:gunpowder
loot replace entity @s hotbar.1 loot cannons:tracer
loot replace entity @s hotbar.2 loot cannons:normal
loot replace entity @s hotbar.3 loot cannons:hot
loot replace entity @s hotbar.4 loot cannons:cluster
loot replace entity @s hotbar.5 loot cannons:gas
loot replace entity @s hotbar.6 loot cannons:chain
loot replace entity @s hotbar.7 loot cannons:bouncy
loot replace entity @s hotbar.8 loot cannons:golden

#> Apply NoDrop to CannonDock items.
item modify entity @s hotbar.0 game:addnodrop
item modify entity @s hotbar.1 game:addnodrop
item modify entity @s hotbar.2 game:addnodrop
item modify entity @s hotbar.3 game:addnodrop
item modify entity @s hotbar.4 game:addnodrop
item modify entity @s hotbar.5 game:addnodrop
item modify entity @s hotbar.6 game:addnodrop
item modify entity @s hotbar.7 game:addnodrop
item modify entity @s hotbar.8 game:addnodrop

title @s title {"translate":"tutorial.cannon_dock","color":"aqua"}
title @s subtitle {"translate":"tutorial.cannon_dock.description","color":"yellow"}

tag @s add OnDock