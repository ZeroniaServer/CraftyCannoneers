advancement revoke @s only weapons:barrel/place
tag @s add placer
execute store result score $rot eyeclick run data get entity @s Rotation[0]
execute if score $rot eyeclick matches -134..-45 run scoreboard players set $angle CmdData 0
execute if score $rot eyeclick matches -44..45 run scoreboard players set $angle CmdData 1
execute if score $rot eyeclick matches 46..135 run scoreboard players set $angle CmdData 0
execute if score $rot eyeclick matches 136..180 run scoreboard players set $angle CmdData 1
execute if score $rot eyeclick matches -180..-135 run scoreboard players set $angle CmdData 1
execute as @e[type=marker,tag=BlastBarrelSpawn,limit=1] at @s run function weapons:barrel/attemptplace
tag @s remove placer
scoreboard players reset @s spawnPlaceable