data modify storage craftycannoneers:chest Inventory set from entity @s Items

execute if data storage craftycannoneers:chest Inventory[{id:"minecraft:iron_sword"}] as @a[nbt=!{Inventory:[{id:"minecraft:iron_sword"}]},distance=..6] run function chests:checkitems
execute if data storage craftycannoneers:chest Inventory[{id:"minecraft:crossbow"}] as @a[nbt=!{Inventory:[{id:"minecraft:crossbow"}]},distance=..6] run function chests:checkitems
execute if data storage craftycannoneers:chest Inventory[{id:"minecraft:spyglass"}] as @a[nbt=!{Inventory:[{id:"minecraft:spyglass"}]},distance=..6] run function chests:checkitems
execute if data storage craftycannoneers:chest Inventory[{id:"minecraft:diamond_hoe",tag:{Cannonball:8b}}] as @a[nbt=!{Inventory:[{id:"minecraft:diamond_hoe",tag:{Cannonball:8b}}]},distance=..6] run function chests:checkitems

data remove storage craftycannoneers:chest Inventory[{id:"minecraft:iron_sword"}]
data remove storage craftycannoneers:chest Inventory[{id:"minecraft:crossbow"}]
data remove storage craftycannoneers:chest Inventory[{id:"minecraft:spyglass"}]
data remove storage craftycannoneers:chest Inventory[{id:"minecraft:diamond_hoe",tag:{Cannonball:8b}}]

#> Count crab traps
execute if score $Wildlife CmdData matches 1 run scoreboard players operation $prev hasCrabTraps = @s hasCrabTraps
execute if score $Wildlife CmdData matches 1 store result score @s hasCrabTraps if data storage craftycannoneers:chest Inventory[{tag:{CrabTrap:1b,Empty:0b}}]
execute if score $Wildlife CmdData matches 1 unless score $prev hasCrabTraps = @s hasCrabTraps as @a[team=!Lobby,team=!Spectator,distance=..6] store result score @s hasCrabTraps run clear @s mooshroom_spawn_egg{CrabTrap:1b,Empty:0b} 0
execute if score $Wildlife CmdData matches 1 run scoreboard players operation $curr crabs += @s hasCrabTraps

data modify entity @s Items set from storage craftycannoneers:chest Inventory