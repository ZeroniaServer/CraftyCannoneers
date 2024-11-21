scoreboard players remove @s TrapDurability 1
tag @s remove Empty

particle item{item:{id:"mooshroom_spawn_egg",components:{"minecraft:custom_model_data":{floats:[15.0f]}}}} ~ ~0.5 ~ 0.2 0.25 0.2 0.1 40 force @a[team=!Lobby]
particle cloud ~ ~ ~ 0 0 0 0.05 3 force @a[team=!Lobby]
playsound crabcapture master @a ~ ~ ~ 1 2
playsound crabcapture2 master @a ~ ~ ~ 1 1.2
playsound crabcapture2 master @a ~ ~ ~ 1 1.2
playsound crabtrapbreak2 master @a ~ ~ ~ 1 1.2

execute as @e[type=cat,tag=CrabVehicle,tag=!justReleased,limit=1,distance=..1,sort=nearest] run function game:modifiers/crabs/killcrab
function weapons:crabtrap/break