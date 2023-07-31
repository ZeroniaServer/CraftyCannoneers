scoreboard players operation $currentTracer playerUUID = @s playerUUID

execute as @a[team=!Spectator] if score @s playerUUID = $currentTracer playerUUID run tag @s add CurrentTracer

execute at @s run particle glow_squid_ink ~ ~ ~ 0 0 0 0.02 1 force @a[tag=CurrentTracer,limit=1]
execute at @s run particle glow ~ ~ ~ 0 0 0 0.07 2 force @a[tag=CurrentTracer,limit=1]
execute at @s[scores={CmdData=1}] run particle dust 0 1 0.2 1 ~ ~ ~ 0 0 0 0 4 force @a[tag=CurrentTracer,limit=1]
execute at @s[scores={CmdData=2}] run particle dust 0 1 0.2 2 ~ ~ ~ 0 0 0 0 3 force @a[tag=CurrentTracer,limit=1]
execute at @s[scores={CmdData=3}] run particle dust 0 1 0.2 3 ~ ~ ~ 0 0 0 0 2 force @a[tag=CurrentTracer,limit=1]
execute at @s[scores={CmdData=4..}] run particle dust 0 1 0.2 4 ~ ~ ~ 0 0 0 0 2 force @a[tag=CurrentTracer,limit=1]
tag @a[tag=CurrentTracer,limit=1] remove CurrentTracer
scoreboard players reset $currentTracer playerUUID