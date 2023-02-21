execute as @e[type=marker,tag=BlastBarrelSpawn] at @s run function weapons:barrel/place
execute as @e[type=armor_stand,tag=IgniteBarrel] at @s run function weapons:barrel/ignite
execute as @e[type=armor_stand,tag=BlastBarrel] at @s run function weapons:barrel/illegalplacement
execute as @e[type=villager,tag=BlastBarrel] at @s run function weapons:barrel/illegalplacement
execute as @e[type=villager,tag=IgniteBarrel] at @s run function arenaclear:kill
execute as @e[type=marker,tag=BarrelMaxFX] at @s run function weapons:barrel/particlewave
tag @a remove lookAtBarrel