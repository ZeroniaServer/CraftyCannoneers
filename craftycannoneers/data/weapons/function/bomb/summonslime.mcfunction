#> Dismount nearby Crabs/Sharks so they can be moved
execute as @e[type=cat,tag=CrabVehicle,tag=!dismounted,distance=..6] run function game:modifiers/crabs/dismount
execute as @e[type=cod,tag=NewVCod,tag=!dismounted,distance=..6] run function game:modifiers/sharks/dismount

#> Blast nearby Boats backwards
execute at @s as @e[type=boat,tag=BoatBoat,distance=..6] run function game:boat/blast

#> Summon wind charge entity and damage players
summon slime ~ ~-0.82 ~ {Invulnerable:1b,Silent:1b,Tags:["BlastSlime"],Size:0,NoAI:1b,CustomNameVisible:0b,DeathTime:17s,DeathLootTable:"minecraft:empty",active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}]}
summon wind_charge ~ ~ ~ {Motion:[0.0d,-10.0d,0.0d]}
data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute positioned ~ ~-100 ~ summon slime positioned ~ ~100 ~ run function weapons:bomb/damage
execute store result score @a[tag=UtilKilled,distance=..6] KillerUUID run scoreboard players get @s playerUUID