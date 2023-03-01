execute as @e[type=marker,tag=BlastBarrelSpawn] at @s run function weapons:barrel/failplace
scoreboard players reset @a[scores={spawnBarrel=0..}]
execute as @e[type=armor_stand,tag=IgniteBarrel] at @s run function weapons:barrel/ignite
execute as @e[type=villager,tag=IgniteBarrel] at @s run function arenaclear:kill
execute as @e[type=marker,tag=BarrelMaxFX] run function weapons:barrel/particlewave
execute as @e[type=armor_stand,tag=BarrelAnchor] at @s run function weapons:barrel/anchor
execute as @e[type=slime,tag=BarrelSlime] at @s run function weapons:barrel/slime