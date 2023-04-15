#> Reset spawnpoints
execute as @e[type=marker,tag=CargoSpawn,tag=Spawned,tag=Purple] unless entity @e[type=hopper_minecart,tag=Purple,tag=CargoHopper,tag=!Looted] run tag @s remove Done
execute as @e[type=marker,tag=CargoSpawn,tag=Spawned,tag=Purple] unless entity @e[type=hopper_minecart,tag=Purple,tag=CargoHopper,tag=!Looted] run tag @s remove Spawned

execute as @e[type=marker,tag=CargoSpawn,tag=Spawned,tag=Orange] unless entity @e[type=hopper_minecart,tag=Orange,tag=CargoHopper,tag=!Looted] run tag @s remove Done
execute as @e[type=marker,tag=CargoSpawn,tag=Spawned,tag=Orange] unless entity @e[type=hopper_minecart,tag=Orange,tag=CargoHopper,tag=!Looted] run tag @s remove Spawned