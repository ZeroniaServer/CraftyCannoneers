execute at @s[nbt={Items:[{id:"minecraft:iron_sword"}]}] as @a[nbt=!{Inventory:[{id:"minecraft:iron_sword"}]},distance=..6] run function chests:checkitems
execute at @s[nbt={Items:[{id:"minecraft:crossbow"}]}] as @a[nbt=!{Inventory:[{id:"minecraft:crossbow"}]},distance=..6] run function chests:checkitems
execute at @s[nbt={Items:[{id:"minecraft:spyglass"}]}] as @a[nbt=!{Inventory:[{id:"minecraft:spyglass"}]},distance=..6] run function chests:checkitems
execute at @s[nbt={Items:[{id:"minecraft:diamond_hoe",tag:{Cannonball:8b}}]}] as @a[nbt=!{Inventory:[{id:"minecraft:diamond_hoe",tag:{Cannonball:8b}}]},distance=..6] run function chests:checkitems

data remove entity @s[nbt={Items:[{id:"minecraft:iron_sword"}]}] Items[{id:"minecraft:iron_sword"}]
data remove entity @s[nbt={Items:[{id:"minecraft:crossbow"}]}] Items[{id:"minecraft:crossbow"}]
data remove entity @s[nbt={Items:[{id:"minecraft:spyglass"}]}] Items[{id:"minecraft:spyglass"}]
data remove entity @s[nbt={Items:[{id:"minecraft:diamond_hoe",tag:{Cannonball:8b}}]}] Items[{id:"minecraft:diamond_hoe",tag:{Cannonball:8b}}]