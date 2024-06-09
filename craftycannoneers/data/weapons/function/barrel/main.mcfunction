execute as @e[type=marker,tag=BlastBarrelSpawn] at @s run function weapons:barrel/failplace
execute as @e[type=item_display,tag=IgniteBarrel] at @s run function weapons:barrel/ignite
execute as @e[type=marker,tag=BarrelMaxFX] run function weapons:barrel/particlewave
execute as @e[type=armor_stand,tag=BarrelAnchor] run function weapons:barrel/anchor
execute as @e[type=slime,tag=BarrelSlime] at @s run function weapons:barrel/slime