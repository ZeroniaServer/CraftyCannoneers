#> Summon AECs + slimes and tag players as Blasted
execute at @s as @a[tag=!Blasted,gamemode=!spectator,distance=..5] at @s run summon area_effect_cloud ~ ~155 ~ {Tags:["BounceAEC"],custom_particle:{type:"block",block_state:"minecraft:air"},Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,potion_contents:{custom_effects:[{id:"minecraft:levitation",amplifier:100,duration:2,show_particles:0b}]}}
execute at @s run tag @a[tag=!Blasted,gamemode=!spectator,distance=..5] add Blasted
execute if score $Wildlife CmdData matches 1 at @s as @e[type=cat,tag=CrabVehicle,distance=..5] at @s run summon area_effect_cloud ~ ~155 ~ {Tags:["BounceAEC"],custom_particle:{type:"block",block_state:"minecraft:air"},Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,potion_contents:{custom_effects:[{id:"minecraft:levitation",amplifier:80,duration:2,show_particles:0b}]}}
scoreboard players set $blast BombDelay 0
execute if entity @a[gamemode=!spectator,distance=..6.75] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=cat,tag=CrabVehicle,limit=1,distance=..6.75] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=drowned,tag=SharkEntity,limit=1,distance=..6.75] run scoreboard players set $blast BombDelay 1
execute unless score $blast BombDelay matches 1 if entity @e[type=oak_boat,tag=Boat,limit=1,distance=..6.75] run scoreboard players set $blast BombDelay 1
execute at @s if score $blast BombDelay matches 1 run function cannons:bounce/tpslime
execute at @s unless score $tp bounceID matches 1 if score $blast BombDelay matches 1 run function cannons:bounce/summonslime
scoreboard players reset $tp bounceID