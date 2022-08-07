scoreboard players operation $currentTracer playerUUID = @s playerUUID

execute as @a[team=!Spectator] if score @s playerUUID = $currentTracer playerUUID run tag @s add CurrentTracer

execute at @s run particle glow_squid_ink ~ ~ ~ 0 0 0 0.02 1 force @a[tag=CurrentTracer]
execute at @s run particle glow ~ ~ ~ 0 0 0 0.07 2 force @a[tag=CurrentTracer]
execute at @s run particle dust 0 1 0.2 4 ~ ~ ~ 0 0 0 0 2 force @a[tag=CurrentTracer]
tag @a[tag=CurrentTracer] remove CurrentTracer
scoreboard players reset $currentTracer playerUUID