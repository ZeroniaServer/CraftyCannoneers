execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword"}]}] run loot give @s loot weapons:cutlass
execute if entity @s[tag=loaded] unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run loot give @s loot weapons:crossbow_loaded
execute unless entity @s[tag=loaded] unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run loot give @s loot weapons:crossbow
execute unless entity @s[nbt={Inventory:[{id:"minecraft:spyglass"}]}] run loot give @s loot weapons:spyglass
execute unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_hoe",tag:{Cannonball:8b}}]}] run loot give @s loot cannons:tracer