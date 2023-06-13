scoreboard players add @s BombDelay 1

data merge entity @s[scores={BombDelay=4}] {Marker:1b,NoGravity:1b}

#> Summon AECs + tag players as Blasted
execute if score @s BombDelay matches 4 as @a[tag=!Blasted,gamemode=!spectator,distance=..5] at @s run summon area_effect_cloud ~ ~155 ~ {Tags:["BlastAEC"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,Effects:[{Id:25,Amplifier:100,Duration:2,ShowParticles:0b}]}
execute if score @s BombDelay matches 4 run tag @a[tag=!Blasted,gamemode=!spectator,distance=..5] add Blasted
execute if score $Wildlife CmdData matches 1 if score @s BombDelay matches 4 as @e[type=cat,tag=CrabVehicle,distance=..5] at @s run summon area_effect_cloud ~ ~155 ~ {Tags:["BlastAEC"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,Effects:[{Id:25,Amplifier:80,Duration:2,ShowParticles:0b}]}

#> Summon slimes
scoreboard players set $blast BombDelay 0
execute if entity @a[gamemode=!spectator,distance=..8.25] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=cat,tag=CrabVehicle,limit=1,distance=..8.25] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=drowned,tag=SharkEntity,limit=1,distance=..8.25] run scoreboard players set $blast BombDelay 1
execute if score @s BombDelay matches 5 if score $blast BombDelay matches 1 run function weapons:bomb/summonslime

#> Blast nearby Boats backwards
execute if score @s BombDelay matches 4.. run summon marker ~ ~ ~ {Tags:["posanchor"]}
execute if score @s BombDelay matches 4.. as @e[type=boat,tag=BoatBoat,distance=..6] run function game:boat/blast
kill @e[type=marker,tag=posanchor]

#> Set off Cargo Traps
execute if score @s BombDelay matches 6.. as @e[type=villager,tag=CBTrap,distance=..4] on vehicle run tag @s add TrapExplode

#> Set off Blast Barrels
execute if score @s BombDelay matches 6.. run data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute if score @s BombDelay matches 6.. run scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if score @s BombDelay matches 6.. as @e[type=villager,tag=BarrelVillager,distance=..4] run function weapons:barrel/chainreact

#> Break nearby Cargo Barrels
execute if score @s BombDelay matches 6.. as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..4] run function game:modifiers/lostcargo/spillbarrel

#> Explode
execute if score @s BombDelay matches 6.. run function weapons:bomb/explode