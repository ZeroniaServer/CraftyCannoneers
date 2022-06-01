execute as @e[type=armor_stand,tag=seagull,tag=1] at @s at @e[type=marker,tag=seagullSpawner,limit=1,sort=nearest] run tp @s ^ ^ ^6 facing entity @e[type=marker,tag=seagull,limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=seagull,tag=2] at @s at @e[type=marker,tag=seagullSpawner,limit=1,sort=nearest] run tp @s ^ ^2 ^-6 facing entity @e[type=marker,tag=seagull,limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=seagull,tag=3] at @s at @e[type=marker,tag=seagullSpawner,limit=1,sort=nearest] run tp @s ^6 ^-1 ^ facing entity @e[type=marker,tag=seagull,limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=seagull,tag=4] at @s at @e[type=marker,tag=seagullSpawner,limit=1,sort=nearest] run tp @s ^-6 ^ ^ facing entity @e[type=marker,tag=seagull,limit=1,sort=nearest]

execute as @e[type=marker,tag=seagull] at @s run tp @s ~ ~ ~ ~2 ~

execute as @a[team=Spectator] at @s as @e[type=marker,tag=seagullSpawner,distance=..20,limit=1,sort=nearest] at @s as @e[type=armor_stand,tag=seagull,distance=..12] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[team=Spectator,distance=..20]
execute as @a[team=Spectator] at @s as @e[type=marker,tag=seagullSpawner,distance=..20,limit=1,sort=nearest] at @s run particle dust 0 1 3 2 ~ ~ ~ 1 1 1 0.1 10 force @a[team=Spectator,distance=..20]