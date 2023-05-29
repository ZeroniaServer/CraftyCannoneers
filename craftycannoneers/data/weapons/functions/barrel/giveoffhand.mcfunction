#> Detecting cases
execute if entity @s[predicate=weapons:empty_offhand] run tag @s add emptyOffhand
execute if entity @s[predicate=weapons:barrel_offhand] run tag @s add stackOffhand
execute if entity @s[predicate=weapons:barrel_offhand_64] run tag @s add fullStackOffhand

#> If offhand is empty, replace with 1 barrel and use blank NBT to prevent animation
scoreboard players set @s[tag=emptyOffhand] spawnPlaceable 0
loot replace entity @s[tag=emptyOffhand] weapon.offhand loot weapons:barrel
item modify entity @s[tag=emptyOffhand] weapon.offhand weapons:blank

#> If offhand has barrel (under a stack), give 2 more and then restore the original stack amount to prevent animation
execute store result score @s hasBarrels run data get entity @s Inventory[{Slot:-106b}].Count
item modify entity @s[tag=stackOffhand,tag=!fullStackOffhand] weapon.offhand weapons:add_two
scoreboard players add @s[tag=stackOffhand,tag=!fullStackOffhand] hasBarrels 1
loot replace entity @s[tag=stackOffhand,tag=!fullStackOffhand] weapon.offhand loot weapons:barrel_return

#> If offhand had a stack of barrels, replace with a full stack and use blank NBT to prevent animation
scoreboard players set @s[tag=fullStackMainhand] spawnPlaceable 0
loot replace entity @s[tag=fullStackMainhand] weapon.offhand loot weapons:barrel_stack
item modify entity @s[tag=fullStackMainhand] weapon.offhand weapons:blank

#> If all else fails, give a new barrel somewhere
execute if entity @s[tag=!emptyOffhand,tag=!stackOffhand] run loot give @s loot weapons:barrel

#> Reset
tag @s[tag=emptyOffhand] remove emptyOffhand
tag @s[tag=stackOffhand] remove stackOffhand
tag @s[tag=fullStackOffhand] remove fullStackOffhand
scoreboard players reset @s[scores={spawnPlaceable=0..}]