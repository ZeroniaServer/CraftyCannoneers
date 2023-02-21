#> TODO: Check placer, give barrel back to them instantly??

execute if block ~ ~ ~ #game:barrel_exclude unless block ~ ~-1 ~ #game:barrel_exclude run playsound blastbarrelplace master @a ~ ~ ~ 0.6 1
execute if block ~ ~ ~ #game:barrel_exclude unless block ~ ~-1 ~ #game:barrel_exclude run particle item mooshroom_spawn_egg{CustomModelData:1} ~ ~ ~ 0.4 0 0.4 0.1 5 force @a[team=!Lobby]
execute if block ~ ~ ~ #game:barrel_exclude unless block ~ ~-1 ~ #game:barrel_exclude run particle cloud ~ ~0.1 ~ 0.2 0.1 0.2 0.03 3 force @a[team=!Lobby]
summon villager ~ ~ ~ {NoAI:1b,Silent:1b,NoGravity:1b,Age:-10000000,Tags:["BlastBarrel","BarrelVillager"],PersistenceRequired:1b,ActiveEffects:[{Id:11,Amplifier:100b,Duration:1000000,ShowParticles:0b}],Passengers:[{id:"minecraft:marker",Tags:["villager","bbarrel"],data:{Tags:["BlastBarrel","BarrelVillager"]}}]}
team join NoName @e[type=villager,tag=BarrelVillager,limit=1,sort=nearest]
summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Tags:["BlastBarrel","BarrelAS"],ArmorItems:[{},{},{},{id:"minecraft:mooshroom_spawn_egg",Count:1b,tag:{CustomModelData:1}}]}
kill @s