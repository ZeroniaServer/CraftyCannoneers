execute if score @s CmdData matches 1..5 as @a[tag=!Blasted,gamemode=!spectator,distance=..5] at @s run summon area_effect_cloud ~ ~155 ~ {Tags:["BlastAEC"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,Effects:[{Id:25,Amplifier:100,Duration:2,ShowParticles:0b}]}
execute if score @s CmdData matches 1..5 run tag @a[tag=!Blasted,gamemode=!spectator,distance=..5] add Blasted

execute if score @s CmdData matches 6..9 as @a[tag=!Blasted,gamemode=!spectator,distance=..8] at @s run summon area_effect_cloud ~ ~155 ~ {Tags:["BlastAEC"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,Effects:[{Id:25,Amplifier:100,Duration:2,ShowParticles:0b}]}
execute if score @s CmdData matches 6..9 run tag @a[tag=!Blasted,gamemode=!spectator,distance=..8] add Blasted

execute if score @s CmdData matches 10.. as @a[tag=!Blasted,gamemode=!spectator,distance=..12] at @s run summon area_effect_cloud ~ ~155 ~ {Tags:["BlastAEC"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,Effects:[{Id:25,Amplifier:100,Duration:2,ShowParticles:0b}]}
execute if score @s CmdData matches 10.. run tag @a[tag=!Blasted,gamemode=!spectator,distance=..12] add Blasted