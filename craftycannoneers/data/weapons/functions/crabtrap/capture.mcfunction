execute if score @s TrapDurability matches 5 run scoreboard players add $counter TrapDurability 1
execute if score @s TrapDurability matches 5 store result entity @s item.tag.id int 1 run scoreboard players get $counter TrapDurability
scoreboard players remove @s TrapDurability 1
tag @s remove Empty

particle item mooshroom_spawn_egg{CustomModelData:15} ~ ~0.5 ~ 0.2 0.25 0.2 0.1 40 force
particle cloud ~ ~ ~ 0 0 0 0.05 3 force
playsound minecraft:block.wood.break master @a ~ ~ ~ 1 1.2
playsound minecraft:block.wooden_trapdoor.close master @a ~ ~ ~ 1 1.2
playsound minecraft:block.wooden_trapdoor.close master @a ~ ~ ~ 1 1.2
playsound minecraft:entity.sheep.shear master @a ~ ~ ~ 1 2

execute store success score $killcrab CmdData as @e[type=endermite,tag=CrabVehicle,tag=!justReleased,limit=1,distance=..1,sort=nearest] run function game:modifiers/crabs/killcrab
execute unless score $killcrab CmdData matches 1 as @e[type=cat,tag=CrabVehicle,tag=!justReleased,limit=1,distance=..1,sort=nearest] run function game:modifiers/crabs/killcrab
function weapons:crabtrap/break