execute if score @s TrapDurability matches 5 run scoreboard players add $counter TrapDurability 1
execute if score @s TrapDurability matches 5 store result entity @s item.tag.id int 1 run scoreboard players get $counter TrapDurability
scoreboard players remove @s TrapDurability 1
tag @s remove Empty

particle item mooshroom_spawn_egg{CustomModelData:15} ~ ~0.5 ~ 0.2 0.25 0.2 0.1 40 force
particle cloud ~ ~ ~ 0 0 0 0.05 3 force
playsound crabcapture master @a ~ ~ ~ 1 2
playsound crabcapture2 master @a ~ ~ ~ 1 1.2
playsound crabcapture2 master @a ~ ~ ~ 1 1.2
playsound crabtrapbreak2 master @a ~ ~ ~ 1 1.2

execute as @e[type=cat,tag=CrabVehicle,tag=!justReleased,limit=1,distance=..1,sort=nearest] run function game:modifiers/crabs/killcrab
function weapons:crabtrap/break