#> Ship detection
tag @s remove canDamage
execute if predicate cannons:ships/orange run tag @s add canDamage
execute if predicate cannons:ships/purple run tag @s add canDamage

#> Blast slimes
scoreboard players set $blast BombDelay 0
execute if entity @a[gamemode=!spectator,distance=..7.5] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=cat,tag=CrabVehicle,limit=1,distance=..7.5] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=drowned,tag=SharkEntity,limit=1,distance=..7.5] run scoreboard players set $blast BombDelay 1
execute if score $blast BombDelay matches 1 run function weapons:barrel/summonslime

#> Cannonball Explosion
execute if predicate cannons:ships/orange run tag @s add canDamage
execute if predicate cannons:ships/purple run tag @s add canDamage
execute if entity @s[tag=canDamage] run function weapons:barrel/summonimpact

#> Particles/sounds
playsound blastbarrelexplode master @a ~ ~ ~ 5 1.4
particle flash ~ ~1 ~ 0 0 0 0 2 force @a[team=!Lobby]
particle dust 1 0 0 2 ~ ~1 ~ 3 3 3 0 40 force @a[team=!Lobby]
particle cloud ~ ~1 ~ 3 3 3 0.3 30 force @a[team=!Lobby]
execute unless entity @s[tag=canDamage] run particle explosion ~ ~ ~ 3 3 3 0.1 40 force @a[team=!Lobby]
particle lava ~ ~ ~ 3 3 3 0.1 30 force @a[team=!Lobby]

#> Chain reaction
execute unless entity @s[tag=canDamage] run scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute unless entity @s[tag=canDamage] run data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute unless entity @s[tag=canDamage] as @e[type=bat,tag=BlastBarrel,distance=..7.5] run function weapons:barrel/chainreact
execute unless entity @s[tag=canDamage] as @e[type=husk,tag=CBTrap,distance=..7.5] on vehicle run function game:modifiers/lostcargo/chainreact

#> Break nearby Boats
kill @e[type=boat,tag=BoatBoat,distance=..7.5]

#> Blast items/projectiles back
execute as @e[type=item,distance=..7.5] run function weapons:barrel/blast2
execute as @e[type=arrow,distance=..7.5] run function weapons:barrel/blast2
execute as @e[type=trident,distance=..7.5] run function weapons:barrel/blast2
execute as @e[type=potion,distance=..7.5] run function weapons:barrel/blast2

#> Break Cargo Barrels
execute at @s[tag=!canDamage] as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..7.5] at @s run function game:modifiers/lostcargo/spillbarrel

#> Break nearby Crab Traps
execute as @e[type=item_display,tag=CrabTrap,distance=..7.5] at @s run function weapons:crabtrap/break

#> Hurt players in damage zones
execute at @s[tag=!canDamage] as @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..7.5] run function weapons:barrel/damage/tier2
execute at @s[tag=canDamage] as @a[team=!Lobby,team=!Spectator,team=!Developer,distance=4..7.5] run function weapons:barrel/damage/tier2