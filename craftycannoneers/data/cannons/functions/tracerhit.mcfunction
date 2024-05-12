scoreboard players operation $currentTracer2 playerUUID = @s playerUUID

execute as @a[team=!Spectator] if score @s playerUUID = $currentTracer2 playerUUID run tag @s add CurrentTracer2

particle flash ~ ~ ~ 0 0 0 0 10 force @a[tag=CurrentTracer2]
particle dust{color:[0.0,1.0,0.3],scale:4.0} ~ ~ ~ 1 1 1 0 40 force @a[tag=CurrentTracer2]

execute unless entity @s[tag=boatshot] run particle block_marker{block_state:"lime_concrete"} ~ ~ ~ 0.5 0.5 0 0 20 force @a[predicate=!game:tutorialbounds,tag=CurrentTracer2]
execute unless entity @s[tag=boatshot] run particle block_marker{block_state:"green_concrete"} ~ ~ ~ 0 0 0.5 0 5 force @a[predicate=!game:tutorialbounds,tag=CurrentTracer2]
execute unless entity @s[tag=boatshot] run particle block_marker{block_state:"lime_concrete"} ~ ~ ~ 0 0.5 0.5 0 20 force @a[predicate=game:tutorialbounds,tag=CurrentTracer2]
execute unless entity @s[tag=boatshot] run particle block_marker{block_state:"green_concrete"} ~ ~ ~ 0.5 0 0 0 5 force @a[predicate=game:tutorialbounds,tag=CurrentTracer2]

execute if entity @s[tag=boatshot] positioned ^ ^ ^-0.1 summon marker run function cannons:tracerparticle
execute if entity @s[tag=boatshot] run particle block_marker{block_state:"green_concrete"} ^ ^ ^-1 0 0 0 0 1 force @a[tag=CurrentTracer2]
execute if entity @s[tag=boatshot] run particle block_marker{block_state:"green_concrete"} ^ ^ ^-0.5 0 0 0 0 1 force @a[tag=CurrentTracer2]
execute if entity @s[tag=boatshot] run particle block_marker{block_state:"green_concrete"} ^ ^ ^ 0 0 0 0 1 force @a[tag=CurrentTracer2]
execute if entity @s[tag=boatshot] run particle block_marker{block_state:"green_concrete"} ^ ^ ^0.5 0 0 0 0 1 force @a[tag=CurrentTracer2]
execute if entity @s[tag=boatshot] run particle block_marker{block_state:"green_concrete"} ^ ^ ^1 0 0 0 0 1 force @a[tag=CurrentTracer2]

tag @a[tag=CurrentTracer2,tag=fullinv,limit=1] add NeedsTracer
execute unless score $NoTracers CmdData matches 1 as @a[tag=CurrentTracer2,limit=1] unless entity @s[team=Lobby,tag=!OnDock] run function cannons:replacetracer
execute if score $NoTracers CmdData matches 1 as @a[team=Lobby,tag=CurrentTracer2,tag=OnDock,limit=1] run function cannons:replacetracer

tag @a remove CurrentTracer2
scoreboard players reset $currentTracer2 playerUUID

kill @s