particle item mooshroom_spawn_egg{CustomModelData:15} ~ ~ ~ 0.4 0 0.4 0.1 5 force @a[team=!Lobby]
particle cloud ~ ~0.1 ~ 0.2 0.1 0.2 0.03 3 force @a[team=!Lobby]
playsound minecraft:block.wood.place master @a ~ ~ ~ 1 1.2
playsound minecraft:block.chain.place master @a ~ ~ ~ 0.6 1.2
playsound minecraft:block.wooden_trapdoor.open master @a ~ ~ ~ 1 1.1

execute if entity @s[tag=Empty] run tag @e[type=endermite,tag=CrabVehicle,distance=..2] add CrabtrapImmune
execute if entity @s[tag=Empty] run tag @e[type=cat,tag=CrabVehicle,distance=..2] add CrabtrapImmune

execute if entity @s[tag=Empty] run function weapons:crabtrap/rotate
execute if entity @s[tag=!Empty] run function weapons:crabtrap/rotate_full
kill @s