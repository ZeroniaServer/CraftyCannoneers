scoreboard players operation $currentTracer playerUUID = @s playerUUID

execute as @a[team=!Lobby,team=!Spectator] if score @s playerUUID = $currentTracer playerUUID run tag @s add CurrentTracer

execute as @s at @s run particle glow_squid_ink ~ ~ ~ 0 0 0 0.05 1 force @a[tag=CurrentTracer]
execute as @s at @s run particle dust 0 1 0.2 1.7 ~ ~ ~ 0 0 0 0 1 force @a[tag=CurrentTracer]
tag @a[tag=CurrentTracer] remove CurrentTracer
