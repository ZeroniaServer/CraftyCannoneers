#> Summon AECs + tag players as Blasted
execute at @s[scores={BombDelay=1}] as @a[tag=!Blasted,gamemode=!spectator,distance=..4] at @s run summon area_effect_cloud ~ ~155 ~ {Tags:["BlastAEC"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,Effects:[{Id:25,Amplifier:100,Duration:2,ShowParticles:0b}]}
execute at @s[scores={BombDelay=1}] as @a[tag=!Blasted,gamemode=!spectator,distance=..4] run tag @s add Blasted

#> Summon slimes
execute at @s[scores={BombDelay=2}] run function weapons:bomb/summonslime