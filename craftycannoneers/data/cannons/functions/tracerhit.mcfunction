scoreboard players operation $currentTracer2 playerUUID = @s playerUUID

execute as @a[team=!Lobby,team=!Spectator] if score @s playerUUID = $currentTracer2 playerUUID run tag @s add CurrentTracer2

particle flash ~ ~ ~ 0 0 0 0 10 force @a[tag=CurrentTracer2]
particle dust 0 1 0.3 5 ~ ~ ~ 1 1 1 0 40 force @a[tag=CurrentTracer2]
particle block_marker lime_concrete ~ ~1 ~ 1 0.5 1 0 20 force @a[tag=CurrentTracer2]

loot give @a[tag=CurrentTracer2] loot weapons:tracer

kill @s

tag @a remove CurrentTracer2
scoreboard players reset $currentTracer2 playerUUID