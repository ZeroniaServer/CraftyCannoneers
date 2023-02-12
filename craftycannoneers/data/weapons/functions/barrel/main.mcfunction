execute as @e[type=marker,tag=BlastBarrelSpawn] at @s run playsound blastbarrelplace master @a ~ ~ ~ 0.6 1
execute as @e[type=marker,tag=BlastBarrelSpawn] at @s run particle item mooshroom_spawn_egg{CustomModelData:1} ~ ~ ~ 0.4 0 0.4 0.1 5 force
execute as @e[type=marker,tag=BlastBarrelSpawn] at @s run particle cloud ~ ~0.1 ~ 0.2 0.1 0.2 0.03 3 force
execute as @e[type=marker,tag=BlastBarrelSpawn] at @s run summon villager ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Age:-10000000,Tags:["BlastBarrel","BarrelVillager","NoID"],PersistenceRequired:1b,Passengers:[{id:"minecraft:marker",Tags:["villager","NoID"],data:{Tags:["CannonVRight","cannon","Orange"]}}]}
execute as @e[type=marker,tag=BlastBarrelSpawn] at @s run summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Tags:["BlastBarrel","BarrelAS"],ArmorItems:[{},{},{},{id:"minecraft:mooshroom_spawn_egg",Count:1b,tag:{CustomModelData:1b}}]}
execute as @e[type=marker,tag=BlastBarrelSpawn] at @s run kill @s