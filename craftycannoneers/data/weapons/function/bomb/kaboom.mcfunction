scoreboard players add @s BombDelay 1

data merge entity @s[scores={BombDelay=1}] {start_interpolation:0,interpolation_duration:1,transformation:{scale:[2.5f,2.5f,2.5f]}}

#> Summon AECs + tag players as Blasted
execute if score @s BombDelay matches 1 as @a[tag=!Blasted,gamemode=!spectator,distance=..5] at @s run summon area_effect_cloud ~ ~155 ~ {Tags:["BlastAEC"],Particle:{type:"block",block_state:"minecraft:air"},Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,effects:[{id:"minecraft:levitation",amplifier:100,duration:2,show_particles:0b}]}
execute if score @s BombDelay matches 2 run tag @a[tag=!Blasted,gamemode=!spectator,distance=..5] add Blasted
execute if score $Wildlife CmdData matches 1 if score @s BombDelay matches 1 as @e[type=cat,tag=CrabVehicle,distance=..5] at @s run summon area_effect_cloud ~ ~155 ~ {Tags:["BlastAEC"],Particle:{type:"block",block_state:"minecraft:air"},Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,effects:[{id:"minecraft:levitation",amplifier:80,duration:2,show_particles:0b}]}

#> Summon slimes
scoreboard players set $blast BombDelay 0
execute if entity @a[gamemode=!spectator,distance=..8.25] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=cat,tag=CrabVehicle,limit=1,distance=..8.25] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=drowned,tag=SharkEntity,limit=1,distance=..8.25] run scoreboard players set $blast BombDelay 1
execute if score @s BombDelay matches 2 if score $blast BombDelay matches 1 run function weapons:bomb/summonslime

#> Blast nearby Boats backwards
execute if score @s BombDelay matches 2.. at @s as @e[type=boat,tag=BoatBoat,distance=..6] run function game:boat/blast

#> Do the same for items/projectiles
execute if score @s BombDelay matches 2..3 at @s as @e[type=item,distance=..6] run function weapons:bomb/blast
execute if score @s BombDelay matches 2..3 at @s as @e[type=arrow,distance=..6] run function weapons:bomb/blast
execute if score @s BombDelay matches 2..3 at @s as @e[type=trident,distance=..6] run function weapons:bomb/blast
# execute if score @s BombDelay matches 2..3 at @s as @e[type=potion,distance=..6] run function weapons:bomb/blast

#> Set off Blast Barrels/Cargo Traps
execute if score @s BombDelay matches 3 run data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute if score @s BombDelay matches 3 run scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if score @s BombDelay matches 3 as @e[type=bat,tag=BlastBarrel,distance=..4] run function weapons:barrel/chainreact
execute if score @s BombDelay matches 3 as @e[type=husk,tag=CBTrap,distance=..4] on vehicle run function game:modifiers/lostcargo/chainreact

#> Break nearby Cargo Barrels
execute if score @s BombDelay matches 3 as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..4] at @s run function game:modifiers/lostcargo/spillbarrel

#> Break nearby Crab Traps
execute if score @s BombDelay matches 3 as @e[type=item_display,tag=CrabTrap,distance=..4] at @s run function weapons:crabtrap/break

#> Explosion effects
execute if score @s BombDelay matches 2 run function weapons:bomb/explode

#> Kill
execute if score @s BombDelay matches 3.. run function weapons:bomb/kill