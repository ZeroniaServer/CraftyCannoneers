#> Set up storage spaces
data modify storage craftycannoneers:inventory Inventory set from entity @s Inventory
data modify storage craftycannoneers:inventory Result set value []
scoreboard players set $pickedinv CmdData 0

#> Remove armor/default items
data remove storage craftycannoneers:inventory Inventory[{Slot:100b}]
data remove storage craftycannoneers:inventory Inventory[{Slot:101b}]
data remove storage craftycannoneers:inventory Inventory[{Slot:102b}]
data remove storage craftycannoneers:inventory Inventory[{Slot:103b}]
data remove storage craftycannoneers:inventory Inventory[{id:"minecraft:iron_sword"}]
data remove storage craftycannoneers:inventory Inventory[{id:"minecraft:crossbow"}]
data remove storage craftycannoneers:inventory Inventory[{id:"minecraft:spyglass"}]
data remove storage craftycannoneers:inventory Inventory[{id:"minecraft:diamond_hoe",tag:{Cannonball:8b}}]

#> Soft-remove all arrows if player has starter arrows
# The logic behind this kinda sucks, but it's way harder to remove only one slot
# and guarantee that it accounts for all starter arrows that this player has/needs
# (what if they spread out their arrow stack?). So we have to remove all arrows.
# But then, it's also hard to mark all slots as invalid in advance like we do with
# the single slots for other default items. So we have to soft-remove them and let
# the system filter out the empty slots by itself.
execute if score @s arrowsToShoot matches 1.. run data remove storage craftycannoneers:inventory Inventory[{id:"minecraft:arrow"}]