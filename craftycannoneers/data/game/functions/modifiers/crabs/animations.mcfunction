data modify entity @s Rotation[0] set from entity @e[type=cat,tag=CrabVehicle,limit=1,sort=nearest] Rotation[0]
execute on passengers run data modify entity @s Rotation[0] set from entity @e[type=cat,tag=CrabVehicle,limit=1,sort=nearest] Rotation[0]
execute if entity @s[nbt={item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:117},Count:1b}}] on vehicle unless entity @s[nbt={Motion:[0.0d,0.0d,0.0d]}] on passengers run tag @s add Moving
execute on vehicle on controller if entity @s[type=endermite] run function game:modifiers/crabs/lifetime

execute if entity @s[tag=Moving,nbt={item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:117},Count:1b}}] run data merge entity @s {item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:118},Count:1b}}

#> TODO: don't play the step sounds every tick (I think this may be too much but I'm not sure)
execute unless score $crabrave CmdData matches 1 at @s[tag=Moving,predicate=!game:inwater] run function game:modifiers/crabs/stepsounds

execute on vehicle if entity @s[nbt={Motion:[0.0d,0.0d,0.0d]}] on passengers run tag @s remove Moving
execute if entity @s[tag=!Moving,nbt={item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:118},Count:1b}}] run data merge entity @s {item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:117},Count:1b}}

#> Pinch when in steal mode
execute if entity @s[tag=steal] run function game:modifiers/crabs/pinch

#> Water detection - allows crab to swim
execute on vehicle at @s[tag=!inwater] if predicate game:inwater at @s run function game:modifiers/crabs/enterwater
execute on vehicle at @s[tag=inwater] unless predicate game:inwater at @s run function game:modifiers/crabs/exitwater
execute on vehicle at @s[tag=inwater] if predicate game:inwater on controller if entity @s[type=endermite] on vehicle run function game:modifiers/crabs/enterwater

#> Swim towards players if underwater
execute if entity @s[tag=!roam] on vehicle at @s if predicate game:inwater unless block ~ ~0.5 ~ #cannons:cannonball_passable if entity @a[team=!Lobby,team=!Spectator,distance=1..7,predicate=game:inwater,limit=1] run tag @s add waterstuck
execute if entity @s[tag=!roam] on vehicle at @s[tag=!waterstuck] if predicate game:inwater unless block ~ ~ ~1 #cannons:cannonball_passable if entity @a[team=!Lobby,team=!Spectator,distance=1..7,predicate=game:inwater,limit=1] run tag @s add waterstuck
execute if entity @s[tag=!roam] on vehicle at @s[tag=!waterstuck] if predicate game:inwater unless block ~ ~ ~-1 #cannons:cannonball_passable if entity @a[team=!Lobby,team=!Spectator,distance=1..7,predicate=game:inwater,limit=1] run tag @s add waterstuck
execute if entity @s[tag=!roam] on vehicle at @s[tag=!waterstuck] if predicate game:inwater unless block ~1 ~ ~ #cannons:cannonball_passable if entity @a[team=!Lobby,team=!Spectator,distance=1..7,predicate=game:inwater,limit=1] run tag @s add waterstuck
execute if entity @s[tag=!roam] on vehicle at @s[tag=!waterstuck] if predicate game:inwater unless block ~-1 ~ ~ #cannons:cannonball_passable if entity @a[team=!Lobby,team=!Spectator,distance=1..7,predicate=game:inwater,limit=1] run tag @s add waterstuck
execute if entity @s[tag=!roam] on vehicle at @s[tag=!waterstuck] if predicate game:inwater unless block ~ ~0.5 ~1 #cannons:cannonball_passable if entity @a[team=!Lobby,team=!Spectator,distance=1..7,predicate=game:inwater,limit=1] run tag @s add waterstuck
execute if entity @s[tag=!roam] on vehicle at @s[tag=!waterstuck] if predicate game:inwater unless block ~ ~0.5 ~-1 #cannons:cannonball_passable if entity @a[team=!Lobby,team=!Spectator,distance=1..7,predicate=game:inwater,limit=1] run tag @s add waterstuck
execute if entity @s[tag=!roam] on vehicle at @s[tag=!waterstuck] if predicate game:inwater unless block ~1 ~0.5 ~ #cannons:cannonball_passable if entity @a[team=!Lobby,team=!Spectator,distance=1..7,predicate=game:inwater,limit=1] run tag @s add waterstuck
execute if entity @s[tag=!roam] on vehicle at @s[tag=!waterstuck] if predicate game:inwater unless block ~-1 ~0.5 ~ #cannons:cannonball_passable if entity @a[team=!Lobby,team=!Spectator,distance=1..7,predicate=game:inwater,limit=1] run tag @s add waterstuck
execute unless score $crabrave CmdData matches 1 on vehicle at @s[tag=waterstuck] run function game:modifiers/crabs/waterstuck

#> Mode switching
scoreboard players reset @s[tag=hasitem] crabtime
scoreboard players add @s[tag=!hasitem] crabtime 1
execute if entity @s[tag=follow] if entity @a[team=!Spectator,distance=..8] run scoreboard players set @s crabtime 100
execute if entity @s[tag=!hasitem,scores={crabtime=100..}] run function game:modifiers/crabs/switchmode

#> Make sprints temporary
scoreboard players add @s[tag=itemsprint] CmdData 1
execute at @s[tag=itemsprint,scores={CmdData=..3}] on vehicle run damage @s 0.1 sonic_boom by @s
execute at @s[tag=itemsprint,scores={CmdData=4..}] on vehicle at @a[team=Orange,distance=..5,limit=1,sort=nearest] run damage @s[tag=Purple] 0.1 sonic_boom at ~ ~ ~
execute at @s[tag=itemsprint,scores={CmdData=4..}] on vehicle at @a[team=Purple,distance=..5,limit=1,sort=nearest] run damage @s[tag=Orange] 0.1 sonic_boom at ~ ~ ~
execute at @s[tag=itemsprint,scores={CmdData=4..}] on vehicle at @a[distance=..5,limit=1,sort=nearest] run damage @s[tag=!Purple,tag=!Orange] 0.1 sonic_boom at ~ ~ ~
execute if score @s[tag=chase] CmdData matches 50.. on vehicle run function game:modifiers/crabs/return
execute if score @s CmdData matches 50.. run tag @s remove itemsprint
execute if score @s CmdData matches 50.. on passengers if data entity @s item{id:"minecraft:goat_horn"} on vehicle run tag @s add hashorn
execute if score @s CmdData matches 50.. on passengers if data entity @s item{id:"minecraft:goat_horn"} at @s run playsound ravehorn master @a ~ ~ ~ 6 1
execute if score @s CmdData matches 50.. on passengers if data entity @s item{id:"minecraft:goat_horn"} at @s run scoreboard players set $crabrave CmdData 1
execute if score @s CmdData matches 50.. on passengers if data entity @s item{id:"minecraft:goat_horn"} at @s run scoreboard players reset $ravetime CmdData
execute if score @s CmdData matches 50.. run scoreboard players reset @s CmdData

execute on vehicle unless entity @e[type=item_display,tag=CrabTrap,limit=1,distance=..2] run tag @s remove justReleased

#> Crabrave
execute if score $crabrave CmdData matches 1 run data merge entity @s {item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:119},Count:1b}}
execute if score $crabrave CmdData matches 1 at @s run particle note ~ ~0.2 ~ 0.2 0.2 0.2 0.1 1 force
execute if score $crabrave CmdData matches 1 on vehicle run effect give @s slowness 1 100 true

#> Crab Trap Immunity
execute on vehicle run scoreboard players add @s[tag=CrabtrapImmune] eyeclick 1
execute if entity @s[tag=!chase] on vehicle at @s[tag=CrabtrapImmune,scores={eyeclick=1}] run function game:modifiers/crabs/chase
execute if entity @s[tag=!roam] on vehicle if entity @s[tag=CrabtrapImmune,scores={eyeclick=1}] on passengers if entity @s[type=item_display] run function game:modifiers/crabs/forceroammode
execute if entity @s[tag=chase] on vehicle at @s[tag=CrabtrapImmune,scores={eyeclick=40..}] run function game:modifiers/crabs/return
execute on vehicle run tag @s[tag=CrabtrapImmune,scores={eyeclick=40..}] remove CrabtrapImmune
execute on vehicle run scoreboard players reset @s[tag=!CrabtrapImmune,scores={eyeclick=1..}] eyeclick

#> Crab tracking
scoreboard players add $curr crabs 1
execute on passengers if data entity @s {item:{tag:{CrabTrap:1b,Empty:0b}}} run scoreboard players add $curr crabs 1

#> Get out of blocks
# execute unless block ~ ~ ~ #