#> Detecting cases
execute if entity @s[predicate=weapons:empty_offhand] run tag @s add emptyOffhand
execute if entity @s[predicate=weapons:barrel_offhand] run tag @s add stackOffhand
execute if entity @s[predicate=weapons:barrel_offhand_64] run tag @s add fullStackOffhand

#> If offhand is empty, use blank NBT to prevent animation
scoreboard players set @s[tag=emptyOffhand] spawnBarrel 0
loot replace entity @s[tag=emptyOffhand] weapon.offhand loot weapons:barrel
item modify entity @s[tag=emptyOffhand] weapon.offhand weapons:blank

#> If offhand has barrel (not previously a full stack), give 2 more and then restore the original stack amount to prevent animation
execute store result score @s hasBarrels run data get entity @s Inventory[{Slot:-106b}].Count
item modify entity @s[tag=stackOffhand,tag=!fullStackOffhand] weapon.offhand weapons:add_two
scoreboard players add @s[tag=stackOffhand,tag=!fullStackOffhand] hasBarrels 1
loot replace entity @s[tag=stackOffhand,tag=!fullStackOffhand] weapon.offhand loot weapons:barrel_return

#> If offhand has barrel (previously a full stack), use shulker box trick to prevent animation
execute if entity @s[tag=fullStackOffhand] run function weapons:barrel/replace/restorestack

#> If all else fails, give a new barrel somewhere
execute if entity @s[tag=!emptyOffhand,tag=!stackOffhand] run loot give @s loot weapons:barrel

#> Reset
tag @s[tag=emptyOffhand] remove emptyOffhand
tag @s[tag=stackOffhand] remove stackOffhand
tag @s[tag=fullStackOffhand] remove fullStackOffhand