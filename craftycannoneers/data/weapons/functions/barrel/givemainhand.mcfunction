#> Detecting cases
execute if entity @s[predicate=weapons:empty_mainhand] run tag @s add emptyMainhand
execute if entity @s[predicate=weapons:barrel_mainhand] run tag @s add stackMainhand
execute if entity @s[predicate=weapons:barrel_mainhand_64] run tag @s add fullStackMainhand

#> If mainhand is empty, use blank NBT to prevent animation
scoreboard players set @s[tag=emptyMainhand] spawnBarrel 0
loot replace entity @s[tag=emptyMainhand] weapon.mainhand loot weapons:barrel
item modify entity @s[tag=emptyMainhand] weapon.mainhand weapons:blank

#> If mainhand has barrel (not previously a full stack), give 2 more and then restore the original stack amount to prevent animation
scoreboard players reset @s hasBarrels
execute if entity @s[tag=stackMainhand,tag=!fullStackMainhand,nbt={SelectedItemSlot:0}] store result score @s hasBarrels run data get entity @s Inventory[{Slot:0b}].Count
execute unless score @s hasBarrels = @s hasBarrels if entity @s[tag=stackMainhand,tag=!fullStackMainhand,nbt={SelectedItemSlot:1}] store result score @s hasBarrels run data get entity @s Inventory[{Slot:1b}].Count
execute unless score @s hasBarrels = @s hasBarrels if entity @s[tag=stackMainhand,tag=!fullStackMainhand,nbt={SelectedItemSlot:2}] store result score @s hasBarrels run data get entity @s Inventory[{Slot:2b}].Count
execute unless score @s hasBarrels = @s hasBarrels if entity @s[tag=stackMainhand,tag=!fullStackMainhand,nbt={SelectedItemSlot:3}] store result score @s hasBarrels run data get entity @s Inventory[{Slot:3b}].Count
execute unless score @s hasBarrels = @s hasBarrels if entity @s[tag=stackMainhand,tag=!fullStackMainhand,nbt={SelectedItemSlot:4}] store result score @s hasBarrels run data get entity @s Inventory[{Slot:4b}].Count
execute unless score @s hasBarrels = @s hasBarrels if entity @s[tag=stackMainhand,tag=!fullStackMainhand,nbt={SelectedItemSlot:5}] store result score @s hasBarrels run data get entity @s Inventory[{Slot:5b}].Count
execute unless score @s hasBarrels = @s hasBarrels if entity @s[tag=stackMainhand,tag=!fullStackMainhand,nbt={SelectedItemSlot:6}] store result score @s hasBarrels run data get entity @s Inventory[{Slot:6b}].Count
execute unless score @s hasBarrels = @s hasBarrels if entity @s[tag=stackMainhand,tag=!fullStackMainhand,nbt={SelectedItemSlot:7}] store result score @s hasBarrels run data get entity @s Inventory[{Slot:7b}].Count
execute unless score @s hasBarrels = @s hasBarrels if entity @s[tag=stackMainhand,tag=!fullStackMainhand,nbt={SelectedItemSlot:8}] store result score @s hasBarrels run data get entity @s Inventory[{Slot:8b}].Count
item modify entity @s[tag=stackMainhand,tag=!fullStackMainhand] weapon.mainhand weapons:add_two
scoreboard players add @s[tag=stackMainhand,tag=!fullStackMainhand] hasBarrels 1
loot replace entity @s[tag=stackMainhand,tag=!fullStackMainhand] weapon.mainhand loot weapons:barrel_return

#> If mainhand has barrel (previously a full stack), use shulker box trick to prevent animation
execute if entity @s[tag=fullStackMainhand] run function weapons:barrel/replace/restorestack

#> If all else fails, give a new barrel somewhere
execute if entity @s[tag=!emptyMainhand,tag=!stackMainhand] run loot give @s loot weapons:barrel

#> Reset
tag @s[tag=emptyMainhand] remove emptyMainhand
tag @s[tag=stackMainhand] remove stackMainhand
tag @s[tag=fullStackMainhand] remove fullStackMainhand