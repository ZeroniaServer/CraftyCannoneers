#> Summon AECs + slimes and tag players as Blasted
execute at @s as @a[tag=!Blasted,gamemode=!spectator,distance=..5] at @s run summon area_effect_cloud ~ ~155 ~ {Tags:["BounceAEC"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,effects:[{id:"minecraft:levitation",amplifier:100,duration:2,show_particles:0b}]}
execute at @s as @a[tag=!Blasted,gamemode=!spectator,distance=..5] run tag @s add Blasted
execute at @s if entity @a[gamemode=!spectator,distance=..6.75] run function cannons:bounce/tpslime
execute at @s unless score $tp bounceID matches 1 if entity @a[gamemode=!spectator,distance=..6.75] run function cannons:bounce/summonslime
scoreboard players reset $tp bounceID