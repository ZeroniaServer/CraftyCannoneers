scoreboard players add @s click 1

#> Particles/sounds
item replace entity @s[scores={click=1}] container.0 with air
execute if score @s click matches 1 run function game:modifiers/lostcargo/trapeffects

#> Blast slimes
execute if score @s click matches 3 if entity @a[gamemode=!spectator,distance=..9] run function game:modifiers/lostcargo/summonslime

#> Chain reaction
execute if score @s click matches 4 as @e[type=villager,tag=CBTrap,distance=..7] on vehicle run tag @s add TrapExplode

#> Set off Blast Barrels
execute if score @s click matches 4 run data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute at @s[scores={click=4}] as @e[type=villager,tag=BarrelVillager,distance=..7] run function weapons:barrel/chainreact

#> Break nearby Cargo Barrels
execute as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..7] run function game:modifiers/lostcargo/spillbarrel

#> Kill the entire barrel (all entities associated with it)
execute if score @s click matches 5 run function game:modifiers/lostcargo/killbarrel