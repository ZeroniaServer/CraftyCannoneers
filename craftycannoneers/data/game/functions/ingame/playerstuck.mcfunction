execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=cannons:ships/purple] at @s if block ~1 ~1 ~ #game:playerstuck if block ~-1 ~1 ~ #game:shipblocks if block ~ ~1 ~1 #game:shipblocks if block ~ ~1 ~-1 #game:shipblocks run tag @s add IsStuck
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=cannons:ships/orange] at @s if block ~1 ~1 ~ #game:playerstuck if block ~-1 ~1 ~ #game:shipblocks if block ~ ~1 ~1 #game:shipblocks if block ~ ~1 ~-1 #game:shipblocks run tag @s add IsStuck

execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=cannons:ships/purple] at @s if block ~2 ~1 ~ #game:playerstuck if block ~-2 ~1 ~ #game:shipblocks if block ~ ~1 ~2 #game:shipblocks if block ~ ~1 ~-2 #game:shipblocks run tag @s add IsStuck
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,predicate=cannons:ships/orange] at @s if block ~2 ~1 ~ #game:playerstuck if block ~-2 ~1 ~ #game:shipblocks if block ~ ~1 ~2 #game:shipblocks if block ~ ~1 ~-2 #game:shipblocks run tag @s add IsStuck

execute as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=IsStuck] at @s if block ~1 ~ ~ ladder run tag @s remove IsStuck
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=IsStuck] at @s if block ~-1 ~ ~ ladder run tag @s remove IsStuck
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=IsStuck] at @s if block ~ ~ ~1 ladder run tag @s remove IsStuck
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=IsStuck] at @s if block ~ ~ ~-1 ladder run tag @s remove IsStuck

execute as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=IsStuck] at @s if block ~1 ~ ~ water run tag @s remove IsStuck
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=IsStuck] at @s if block ~-1 ~ ~ water run tag @s remove IsStuck
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=IsStuck] at @s if block ~ ~ ~1 water run tag @s remove IsStuck
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=IsStuck] at @s if block ~ ~ ~-1 water run tag @s remove IsStuck

execute as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=IsStuck] at @s if block ~ ~ ~ #minecraft:stairs run tag @s remove IsStuck
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=IsStuck] at @s if block ~1 ~ ~ #minecraft:stairs run tag @s remove IsStuck
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=IsStuck] at @s if block ~-1 ~ ~ #minecraft:stairs run tag @s remove IsStuck
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=IsStuck] at @s if block ~ ~ ~1 #minecraft:stairs run tag @s remove IsStuck
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=IsStuck] at @s if block ~ ~ ~-1 #minecraft:stairs run tag @s remove IsStuck

execute as @a[tag=IsStuck] at @s unless entity @e[type=area_effect_cloud,tag=JumpBoost,distance=..1] run summon area_effect_cloud ~ ~155 ~ {Tags:["JumpBoost"],Particle:"block air",Age:-1,ReapplicationDelay:-1,WaitTime:0,Radius:0.1f,Duration:1,Effects:[{Id:8,Amplifier:5,Duration:5,ShowParticles:0b}]}
execute as @e[type=area_effect_cloud,tag=JumpBoost,tag=!teleported] at @s run tp @s ~ ~-155 ~
tag @e[type=area_effect_cloud,tag=JumpBoost] add teleported
tag @a[tag=IsStuck] remove IsStuck