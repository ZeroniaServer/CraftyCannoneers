scoreboard players add @s BombDelay 1

data merge entity @s[scores={BombDelay=4}] {Marker:1b,NoGravity:1b}

#> Summon AECs + tag players as Blasted
execute at @s[scores={BombDelay=4}] as @a[tag=!Blasted,gamemode=!spectator,distance=..5] at @s run summon area_effect_cloud ~ ~155 ~ {Tags:["BlastAEC"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,Effects:[{Id:25,Amplifier:100,Duration:2,ShowParticles:0b}]}
execute at @s[scores={BombDelay=4}] as @a[tag=!Blasted,gamemode=!spectator,distance=..5] run tag @s add Blasted

#> Summon slimes
execute at @s[scores={BombDelay=5}] run function weapons:bomb/summonslime

#> Explode
execute at @s[scores={BombDelay=6..}] run function weapons:bomb/explode