execute if score @s TrapDurability matches 5 run scoreboard players add $counter TrapDurability 1
execute if score @s TrapDurability matches 5 store result entity @s item.tag.id int 1 run scoreboard players get $counter TrapDurability
scoreboard players remove @s TrapDurability 1
tag @s remove Empty
## TODO add particles, sound, etc.
execute store success score $killcrab CmdData as @e[type=endermite,tag=CrabVehicle,tag=!justReleased,limit=1,distance=..1,sort=nearest] run function game:modifiers/crabs/killcrab
execute unless score $killcrab CmdData matches 1 as @e[type=cat,tag=CrabVehicle,tag=!justReleased,limit=1,distance=..1,sort=nearest] run function game:modifiers/crabs/killcrab
function weapons:crabtrap/break