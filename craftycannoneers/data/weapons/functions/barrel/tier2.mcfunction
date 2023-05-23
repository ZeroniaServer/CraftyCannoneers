#> Ship detection
tag @s remove canDamage
execute if predicate cannons:ships/orange run tag @s add canDamage
execute if predicate cannons:ships/purple run tag @s add canDamage

#> Blast slimes
scoreboard players set $blast BombDelay 0
execute if entity @a[gamemode=!spectator,distance=..8.25] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=endermite,tag=CrabVehicle,limit=1,distance=..8.25] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=cat,tag=CrabVehicle,limit=1,distance=..8.25] run scoreboard players set $blast BombDelay 1
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
execute unless entity @s[tag=canDamage] as @e[type=villager,tag=BlastBarrel,distance=..6] run function weapons:barrel/chainreact

#> Break Cargo Barrels
execute at @s[tag=!canDamage] as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..6] run function game:modifiers/lostcargo/spillbarrel

#> Hurt players in damage zones
execute at @s[tag=!canDamage] as @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..6] run function weapons:barrel/damage/tier2