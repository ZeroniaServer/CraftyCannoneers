execute if entity @a[scores={spawnBarrel=1..}] run say hi
execute as @e[type=marker,tag=BlastBarrelSpawn] at @s run function weapons:barrel/failplace
scoreboard players reset @a[scores={spawnBarrel=1..}]
execute as @e[type=armor_stand,tag=IgniteBarrel] at @s run function weapons:barrel/ignite
execute as @e[type=villager,tag=IgniteBarrel] at @s run function arenaclear:kill
execute as @e[type=marker,tag=BarrelMaxFX] run function weapons:barrel/particlewave
tag @a remove lookAtBarrel