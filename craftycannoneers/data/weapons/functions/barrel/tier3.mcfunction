#> Ship Detection
tag @s remove canDamage
execute if predicate cannons:ships/orange run tag @s add canDamage
execute if predicate cannons:ships/purple run tag @s add canDamage

#> Blast slimes
scoreboard players set $blast BombDelay 0
execute if entity @a[gamemode=!spectator,distance=..10] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=cat,tag=CrabVehicle,limit=1,distance=..10] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=drowned,tag=SharkEntity,limit=1,distance=..10] run scoreboard players set $blast BombDelay 1
execute if score $blast BombDelay matches 1 run function weapons:barrel/summonslime

#> Cannonball Explosion
execute if entity @s[tag=canDamage] run function weapons:barrel/summonimpact

#> Particles/sounds
playsound blastbarrelexplode master @a ~ ~ ~ 5 1
particle flash ~ ~6 ~ 0 2 0 0 12 force @a[team=!Lobby]
particle dust 1 0 0 2 ~ ~6 ~ 2 4 2 0 40 force @a[team=!Lobby]
particle cloud ~ ~6 ~ 2 4 2 0.3 20 force @a[team=!Lobby]
execute unless entity @s[tag=canDamage] run particle explosion ~ ~5 ~ 2 4 2 0.1 25 force @a[team=!Lobby]
particle lava ~ ~5 ~ 2 4 2 0.1 30 force @a[team=!Lobby]
summon marker ~ ~1 ~ {Tags:["BarrelMaxFX","BlastBarrel","North","EW"],Rotation:[90.0f,0.0f]}
summon marker ~ ~1 ~ {Tags:["BarrelMaxFX","BlastBarrel","East","NS"],Rotation:[-90.0f,0.0f]}
summon marker ~ ~1 ~ {Tags:["BarrelMaxFX","BlastBarrel","South","EW"],Rotation:[180.0f,0.0f]}
summon marker ~ ~1 ~ {Tags:["BarrelMaxFX","BlastBarrel","West","NS"],Rotation:[0.0f,0.0f]}

#> Chain reaction
execute unless entity @s[tag=canDamage] run scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute unless entity @s[tag=canDamage] run data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute unless entity @s[tag=canDamage] as @e[type=bat,tag=BlastBarrel,distance=..10] run function weapons:barrel/chainreact
execute unless entity @s[tag=canDamage] as @e[type=husk,tag=CBTrap,distance=..6] on vehicle run function game:modifiers/lostcargo/chainreact

#> Break nearby Boats
kill @e[type=boat,tag=BoatBoat,distance=..10]

#> Blast items/projectiles back
execute as @e[type=item,distance=..10] run function weapons:barrel/blast3
execute as @e[type=arrow,distance=..10] run function weapons:barrel/blast3
execute as @e[type=trident,distance=..10] run function weapons:barrel/blast3
execute as @e[type=potion,distance=..10] run function weapons:barrel/blast3

#> Break Cargo Barrels
execute at @s[tag=!canDamage] as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..10] at @s run function game:modifiers/lostcargo/spillbarrel

#> Break nearby Crab Traps
execute as @e[type=item_display,tag=CrabTrap,distance=..10] at @s run function weapons:crabtrap/break

#> Hurt players in damage zones
execute at @s[tag=!canDamage] as @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..10] run function weapons:barrel/damage/tier3