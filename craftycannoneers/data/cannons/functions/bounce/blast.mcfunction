#> Summon AECs + slimes and tag players as Blasted
execute at @s as @a[tag=!Blasted,gamemode=!spectator,distance=..5] at @s run summon area_effect_cloud ~ ~155 ~ {Tags:["BounceAEC"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,Effects:[{Id:25,Amplifier:100,Duration:2,ShowParticles:0b}]}
execute at @s as @a[tag=!Blasted,gamemode=!spectator,distance=..5] run tag @s add Blasted
execute at @s[tag=!blastedOnce] run function cannons:bounce/summonslime
execute at @s[tag=blastedOnce] run function cannons:bounce/tpslime
tag @s add blastedOnce