scoreboard players add @s BombDelay 1

data merge entity @s[scores={BombDelay=4}] {Marker:1b,NoGravity:1b}

#> Summon AECs + tag players as Blasted
execute if score @s BombDelay matches 4 as @a[tag=!Blasted,gamemode=!spectator,distance=..5] at @s run summon area_effect_cloud ~ ~155 ~ {Tags:["BlastAEC"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,Effects:[{Id:25,Amplifier:100,Duration:2,ShowParticles:0b}]}
execute if score @s BombDelay matches 4 run tag @a[tag=!Blasted,gamemode=!spectator,distance=..5] add Blasted

#> Summon slimes
execute if score @s BombDelay matches 5 if entity @a[gamemode=!spectator,distance=..8.25] run function weapons:bomb/summonslime

#> Set off Blast Barrels and Cargo Traps
execute if score @s BombDelay matches 6.. as @e[type=villager,tag=CBTrap,distance=..7] on vehicle run tag @s add TrapExplode

#> Set off Blast Barrels
execute if score @s BombDelay matches 6.. at @s as @e[type=villager,tag=BarrelVillager,distance=..7] run function weapons:barrel/chainreact

#> Explode
execute if score @s BombDelay matches 6.. run function weapons:bomb/explode