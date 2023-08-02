particle item mooshroom_spawn_egg{CustomModelData:15} ~ ~ ~ 0.4 0 0.4 0.1 5 force @a[team=!Lobby]
particle cloud ~ ~0.1 ~ 0.2 0.1 0.2 0.03 3 force @a[team=!Lobby]
playsound crabtrapplace master @a ~ ~ ~ 1 1.2
playsound crabtrapplace2 master @a ~ ~ ~ 0.6 1.2
playsound crabtrapopen master @a ~ ~ ~ 1 1.1

execute if entity @s[tag=Empty] run tag @e[type=cat,tag=CrabVehicle,distance=..2] add CrabtrapImmune

data modify storage craftycannoneers:crab angle set from entity @s Rotation[0]
function weapons:crabtrap/rotate with storage craftycannoneers:crab
kill @s