data modify entity @s[tag=!chase] Rotation[0] set from entity @e[type=endermite,tag=CrabVehicle,limit=1,sort=nearest] Rotation[0]
data modify entity @s[tag=chase] Rotation[0] set from entity @e[type=cat,tag=CrabVehicle,limit=1,sort=nearest] Rotation[0]
execute if entity @s[nbt={item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:117},Count:1b}}] on vehicle unless entity @s[nbt={Motion:[0.0d,0.0d,0.0d]}] on passengers run tag @s add Moving
execute on vehicle if entity @s[type=endermite] run function game:modifiers/crabs/lifetime

execute if entity @s[tag=Moving,nbt={item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:117},Count:1b}}] run data merge entity @s {item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:118},Count:1b}}

#> TODO: add all blocks (using block tag checks instead of seperate blocks, group all island blocks like stone types, wood types and grass/dirt together for the same particle fx)
#> TODO: don't play the step sounds every tick (I think this may be too much but I'm not sure)
## sand fx 
execute if entity @s[tag=Moving] if block ~ ~-0.5 ~ sand run particle block sand ~ ~-0.2 ~ 0.2 0 0.2 0.1 1 normal
execute if entity @s[tag=Moving] if block ~ ~-0.5 ~ sand run playsound minecraft:block.sand.step master @a ~ ~ ~ 0.2 2
## dirt/grass fx 
execute if entity @s[tag=Moving] if block ~ ~-0.5 ~ grass_block run particle block grass_block ~ ~-0.2 ~ 0.2 0 0.2 0.1 1 normal
execute if entity @s[tag=Moving] if block ~ ~-0.5 ~ grass_block run playsound minecraft:block.grass.step master @a ~ ~ ~ 0.2 2
execute if entity @s[tag=Moving] if block ~ ~-0.5 ~ dirt run particle block dirt ~ ~-0.2 ~ 0.2 0 0.2 0.1 1 normal
execute if entity @s[tag=Moving] if block ~ ~-0.5 ~ dirt run playsound minecraft:block.gravel.step master @a ~ ~ ~ 0.2 2
## stone fx 
execute if entity @s[tag=Moving] if block ~ ~-0.5 ~ stone run particle block stone ~ ~-0.2 ~ 0.2 0 0.2 0.1 1 normal
execute if entity @s[tag=Moving] if block ~ ~-0.5 ~ stone run playsound minecraft:block.stone.step master @a ~ ~ ~ 0.2 2

execute on vehicle if entity @s[nbt={Motion:[0.0d,0.0d,0.0d]}] on passengers run tag @s remove Moving
execute if entity @s[tag=!Moving,nbt={item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:118},Count:1b}}] run data merge entity @s {item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:117},Count:1b}}

##FORMAT FOR DAMAGE
##Make sure this only happens when the crab is in a mode where it can pinch you. Adjust values as necessary
##This also allows us to control exactly when we make the crab's claw snap
execute if entity @s[tag=!chase] run function game:modifiers/crabs/pinch