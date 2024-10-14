scoreboard players add @s click 1

#> Particles/sounds
item replace entity @s[scores={click=1}] container.0 with air
execute if score @s click matches 1 run function game:modifiers/lostcargo/trapeffects

#> Blast slimes
scoreboard players set $blast BombDelay 0
execute if entity @a[gamemode=!spectator,distance=..9] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=cat,tag=CrabVehicle,limit=1,distance=..9] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=drowned,tag=SharkEntity,limit=1,distance=..9] run scoreboard players set $blast BombDelay 1
execute if score @s click matches 3 if score $blast BombDelay matches 1 run function game:modifiers/lostcargo/summonslime

#> Set off Blast Barrels/Cargo Traps
execute if score @s click matches 4 run scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if score @s click matches 4 run data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute if score @s click matches 4 as @e[type=husk,tag=CBTrap,distance=..4] on vehicle run function game:modifiers/lostcargo/chainreact
execute if score @s click matches 4 as @e[type=bat,tag=BlastBarrel,distance=..4] run function weapons:barrel/chainreact

#> Break nearby Boats
execute if score @s click matches 2 run kill @e[type=oak_boat,tag=BoatBoat,distance=..4]

#> Break nearby Cargo Barrels
execute if score @s click matches 2 as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..4] at @s run function game:modifiers/lostcargo/spillbarrel

#> Break nearby Crab Traps
execute if score @s click matches 2 as @e[type=item_display,tag=CrabTrap,distance=..4] at @s run function weapons:crabtrap/break

#> Remount nearby Crabs/Sharks
execute if score @s click matches 5 as @e[type=cat,tag=CrabVehicle,tag=dismounted,distance=..10] run function game:modifiers/crabs/remount
execute if score @s click matches 5 as @e[type=cod,tag=NewVCod,tag=dismounted,distance=..10] run function game:modifiers/sharks/remount

#> Kill the entire barrel (all entities associated with it)
execute if score @s click matches 5 run function game:modifiers/lostcargo/killbarrel