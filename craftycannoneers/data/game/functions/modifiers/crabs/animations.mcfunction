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

#> Pinch when in steal mode
execute if entity @s[tag=steal] run function game:modifiers/crabs/pinch

#> Water detection - allows crab to swim
execute on vehicle at @s[type=endermite,tag=!inwater] if predicate game:inwater at @s run function game:modifiers/crabs/enterwater
execute on vehicle at @s[type=endermite,tag=inwater] unless predicate game:inwater at @s run function game:modifiers/crabs/exitwater

#> Mode switching
scoreboard players reset @s[tag=hasitem] crabtime
scoreboard players add @s[tag=!hasitem] crabtime 1
execute if entity @s[tag=follow] if entity @a[team=!Spectator,distance=..10] run scoreboard players set @s crabtime 100
execute as @s[tag=!hasitem,scores={crabtime=100..}] run function game:modifiers/crabs/switchmode

#> Make sprints temporary
scoreboard players add @s[tag=itemsprint] CmdData 1
execute if score @s[tag=chase] CmdData matches 50.. on vehicle run function game:modifiers/crabs/return
execute if score @s CmdData matches 50.. run tag @s remove itemsprint
execute if score @s CmdData matches 50.. run scoreboard players reset @s CmdData

execute if entity @s[tag=roam] run particle dust 0 1 0 0.5 ~ ~1 ~ 0 0 0 0 10 force @a
execute if entity @s[tag=follow] run particle dust 1 0.533 0 0.5 ~ ~1 ~ 0 0 0 0 10 force @a
execute if entity @s[tag=steal] run particle dust 1 0 0 0.5 ~ ~1 ~ 0 0 0 0 10 force @a