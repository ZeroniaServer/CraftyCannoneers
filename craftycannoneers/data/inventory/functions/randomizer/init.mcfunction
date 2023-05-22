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

#> TODO Filter out starter arrows??

execute as fffffe5c-ffff-ffbb-0000-01a400000045 on passengers if entity @s[tag=invalid] run function inventory:randomizer/remove