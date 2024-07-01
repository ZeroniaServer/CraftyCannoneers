#> Dismount nearby Crabs/Sharks so they can be moved
execute as @e[type=cat,tag=CrabVehicle,tag=!dismounted,distance=..7] run function game:modifiers/crabs/dismount
execute as @e[type=cod,tag=NewVCod,tag=!dismounted,distance=..7] run function game:modifiers/sharks/dismount

# Tier 1
execute if score @s CmdData matches 1..5 run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Tags:["BarrelAnchor"],Passengers:[{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:16,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:16,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:16,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:16,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:16,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:16,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:16,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:16,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:16,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:16,NoGravity:1b,CustomNameVisible:0b}]}

# Tier 2
execute if score @s[tag=!canDamage] CmdData matches 6..9 run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Tags:["BarrelAnchor"],Passengers:[{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b}]}
execute if score @s[tag=canDamage] CmdData matches 6..9 run summon armor_stand ~ ~-6 ~ {NoGravity:1b,Marker:1b,Tags:["BarrelAnchor"],Passengers:[{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:22,NoGravity:1b,CustomNameVisible:0b}]}

# Tier 3
execute if score @s[tag=!canDamage] CmdData matches 10 run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Tags:["BarrelAnchor"],Passengers:[{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b}]}
execute if score @s[tag=canDamage] CmdData matches 10 run summon armor_stand ~ ~-10 ~ {NoGravity:1b,Marker:1b,Tags:["BarrelAnchor"],Passengers:[{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b},{id:"minecraft:slime",Invulnerable:1b,Silent:1b,DeathTime:17s,DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:generic.attack_damage",base:0d}],Tags:["BarrelSlime"],Size:36,NoGravity:1b,CustomNameVisible:0b}]}

data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute as @e[type=slime,tag=BarrelSlime,tag=!HasName] run data modify entity @s CustomName set from storage craftycannoneers:temp CustomName
team join Collide @e[type=slime,tag=BarrelSlime,tag=!HasName]
tag @e[type=slime,tag=BarrelSlime,tag=!HasName] add HasName

tag @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..7] add UtilKilled
execute store result score @a[tag=UtilKilled,distance=..7] KillerUUID run scoreboard players get @s playerUUID