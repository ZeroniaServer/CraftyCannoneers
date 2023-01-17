scoreboard players operation $currentTracer2 playerUUID = @s playerUUID

execute as @a[team=!Spectator] if score @s playerUUID = $currentTracer2 playerUUID run tag @s add CurrentTracer2

particle flash ~ ~ ~ 0 0 0 0 10 force @a[tag=CurrentTracer2]
particle dust 0 1 0.3 5 ~ ~ ~ 1 1 1 0 40 force @a[tag=CurrentTracer2]
particle block_marker lime_concrete ~ ~ ~ 0.5 0.5 0 0 20 force @a[predicate=!game:tutorialbounds,tag=CurrentTracer2]
particle block_marker green_concrete ~ ~ ~ 0 0 0.5 0 5 force @a[predicate=!game:tutorialbounds,tag=CurrentTracer2]
particle block_marker lime_concrete ~ ~ ~ 0 0.5 0.5 0 20 force @a[predicate=game:tutorialbounds,tag=CurrentTracer2]
particle block_marker green_concrete ~ ~ ~ 0.5 0 0 0 5 force @a[predicate=game:tutorialbounds,tag=CurrentTracer2]

tag @a[tag=CurrentTracer2,scores={invCount=36..}] add NeedsTracer
execute unless score $NoTracers CmdData matches 1 run loot give @a[tag=CurrentTracer2,tag=!NeedsTracer] loot cannons:tracer
execute unless score $NoTracers CmdData matches 1 as @a[tag=CurrentTracer2,tag=!NeedsTracer] at @s run playsound entity.item.pickup player @s ~ ~ ~ 0.25 2

tag @a remove CurrentTracer2
scoreboard players reset $currentTracer2 playerUUID

kill @s