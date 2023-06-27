#> Blast slimes
scoreboard players set $blast BombDelay 0
execute if entity @a[gamemode=!spectator,distance=..8.25] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=cat,tag=CrabVehicle,limit=1,distance=..8.25] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=drowned,tag=SharkEntity,limit=1,distance=..8.25] run scoreboard players set $blast BombDelay 1
execute if score $blast BombDelay matches 1 run function weapons:barrel/summonslime

#> Particles/sounds
playsound blastbarrelexplode master @a ~ ~ ~ 5 1.6
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[team=!Lobby]
particle dust 1 0 0 2 ~ ~1 ~ 1 1 1 0 30 force @a[team=!Lobby]
particle cloud ~ ~1 ~ 1 1 1 0.3 10 force @a[team=!Lobby]
particle explosion ~ ~ ~ 1 1 1 0.1 12 force @a[team=!Lobby]

#> Chain reaction
scoreboard players operation $tempuuid playerUUID = @s playerUUID
data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute as @e[type=bat,tag=BlastBarrel,distance=..5] run function weapons:barrel/chainreact
execute as @e[type=villager,tag=CBTrap,distance=..5] on vehicle run function game:modifiers/lostcargo/chainreact

#> Break nearby Cargo Barrels
execute as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..5] at @s run function game:modifiers/lostcargo/spillbarrel

#> Break nearby Crab Traps
execute as @e[type=item_display,tag=CrabTrap,distance=..5] at @s run function weapons:crabtrap/break

#> Break nearby Boats
kill @e[type=boat,tag=BoatBoat,distance=..5]

#> Hurt players in damage zones
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..5] run function weapons:barrel/damage/tier1