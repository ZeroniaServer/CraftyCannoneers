execute as fffffe5c-ffff-ffbb-0000-01a400000045 on passengers run function inventory:randomizer/reset
data modify storage craftycannoneers:inventory Inventory set from entity @s Inventory
scoreboard players set $pickedinv CmdData 0

#> Remove armor
data remove storage craftycannoneers:inventory Inventory[{Slot:100b}]
data remove storage craftycannoneers:inventory Inventory[{Slot:101b}]
data remove storage craftycannoneers:inventory Inventory[{Slot:102b}]
data remove storage craftycannoneers:inventory Inventory[{Slot:103b}]

#> Filter out Cutlass
data modify storage craftycannoneers:inventory Default set from storage craftycannoneers:inventory Inventory[{id:"minecraft:iron_sword"}]
execute if data storage craftycannoneers:inventory Default store result score $slot CmdData run data get storage craftycannoneers:inventory Default.Slot
execute if data storage craftycannoneers:inventory Default as fffffe5c-ffff-ffbb-0000-01a400000045 on passengers if score @s[tag=!invalid] CmdData = $slot CmdData run tag @s add invalid
data remove storage craftycannoneers:inventory Default

#> Filter out Crossbow
data modify storage craftycannoneers:inventory Default set from storage craftycannoneers:inventory Inventory[{id:"minecraft:crossbow"}]
execute if data storage craftycannoneers:inventory Default store result score $slot CmdData run data get storage craftycannoneers:inventory Default.Slot
execute if data storage craftycannoneers:inventory Default as fffffe5c-ffff-ffbb-0000-01a400000045 on passengers if score @s[tag=!invalid] CmdData = $slot CmdData run tag @s add invalid
data remove storage craftycannoneers:inventory Default

#> Filter out Spotting Spyglass
data modify storage craftycannoneers:inventory Default set from storage craftycannoneers:inventory Inventory[{id:"minecraft:spyglass"}]
execute if data storage craftycannoneers:inventory Default store result score $slot CmdData run data get storage craftycannoneers:inventory Default.Slot
execute if data storage craftycannoneers:inventory Default as fffffe5c-ffff-ffbb-0000-01a400000045 on passengers if score @s[tag=!invalid] CmdData = $slot CmdData run tag @s add invalid
data remove storage craftycannoneers:inventory Default

#> Filter out Tracer Cannonball
data modify storage craftycannoneers:inventory Default set from storage craftycannoneers:inventory Inventory[{id:"minecraft:diamond_hoe",tag:{Cannonball:8b}}]
execute if data storage craftycannoneers:inventory Default store result score $slot CmdData run data get storage craftycannoneers:inventory Default.Slot
execute if data storage craftycannoneers:inventory Default as fffffe5c-ffff-ffbb-0000-01a400000045 on passengers if score @s[tag=!invalid] CmdData = $slot CmdData run tag @s add invalid
data remove storage craftycannoneers:inventory Default

#> Soft-remove all arrows if player has starter arrows
# The logic behind this kinda sucks, but it's way harder to remove only one slot
# and guarantee that it accounts for all starter arrows that this player has/needs
# (what if they spread out their arrow stack?). So we have to remove all arrows.
# But then, it's also hard to mark all slots as invalid in advance like we do with
# the single slots for other default items. So we have to soft-remove them and let
# the system filter out the empty slots by itself.
execute if score @s arrowsToShoot matches 1.. run data remove storage craftycannoneers:inventory Inventory[{id:"minecraft:arrow"}]

execute as fffffe5c-ffff-ffbb-0000-01a400000045 on passengers if entity @s[tag=invalid] run function inventory:randomizer/remove