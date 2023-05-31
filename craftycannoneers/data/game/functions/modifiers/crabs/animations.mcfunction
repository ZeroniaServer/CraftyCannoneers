data modify entity @s[tag=!chase] Rotation[0] set from entity @e[type=endermite,tag=CrabVehicle,limit=1,sort=nearest] Rotation[0]
data modify entity @s[tag=chase] Rotation[0] set from entity @e[type=cat,tag=CrabVehicle,limit=1,sort=nearest] Rotation[0]
execute if entity @s[nbt={item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:117},Count:1b}}] on vehicle unless entity @s[nbt={Motion:[0.0d,0.0d,0.0d]}] on passengers run tag @s add Moving
execute on vehicle if entity @s[type=endermite] run function game:modifiers/crabs/lifetime

execute if entity @s[tag=Moving,nbt={item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:117},Count:1b}}] run data merge entity @s {item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:118},Count:1b}}

#> TODO: don't play the step sounds every tick (I think this may be too much but I'm not sure)
execute at @s[tag=Moving,predicate=!game:inwater] run function game:modifiers/crabs/stepsounds

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
execute if entity @s[tag=follow] if entity @a[team=!Spectator,distance=..8] run scoreboard players set @s crabtime 100
execute as @s[tag=!hasitem,scores={crabtime=100..}] run function game:modifiers/crabs/switchmode

#> Make sprints temporary
scoreboard players add @s[tag=itemsprint] CmdData 1
execute if score @s[tag=chase] CmdData matches 50.. on vehicle run function game:modifiers/crabs/return
execute if score @s CmdData matches 50.. run tag @s remove itemsprint
execute if score @s CmdData matches 50.. on passengers if data entity @s item{id:"minecraft:goat_horn"} at @s run playsound ravehorn master @a ~ ~ ~ 6 1
execute if score @s CmdData matches 50.. run scoreboard players reset @s CmdData

execute if entity @s[tag=roam] run particle dust 0 1 0 0.5 ~ ~1 ~ 0 0 0 0 10 force @a
execute if entity @s[tag=follow] run particle dust 1 0.533 0 0.5 ~ ~1 ~ 0 0 0 0 10 force @a
execute if entity @s[tag=steal] run particle dust 1 0 0 0.5 ~ ~1 ~ 0 0 0 0 10 force @a

execute on vehicle unless entity @e[type=item_display,tag=CrabTrap,limit=1,distance=..2] run tag @s remove justReleased