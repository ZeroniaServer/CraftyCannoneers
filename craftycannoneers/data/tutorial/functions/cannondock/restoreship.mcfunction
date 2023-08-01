scoreboard players set $shipstatus CmdData 0
scoreboard players set $shiptimer CmdData 0

place template minecraft:training_flag -389 11 -55
place template minecraft:training_ship1 -400 -37 -83
place template minecraft:training_ship2 -400 -37 -35

kill @e[type=armor_stand,tag=GasBubble,predicate=cannons:ships/tutorialfull]
kill @e[type=item_display,tag=GasBubble,predicate=cannons:ships/tutorialfull]
kill @e[type=item_display,tag=gascloud,predicate=cannons:ships/tutorialfull]
kill @e[type=marker,tag=GasCloud,predicate=cannons:ships/tutorialfull]
kill @e[type=bat,predicate=cannons:ships/tutorialfull]

execute if entity @e[type=marker,tag=RingOfFire,predicate=cannons:ships/tutorialfull] unless entity @e[type=marker,tag=RingOfFire,limit=1] run gamerule doFireTick false
execute if entity @e[type=marker,tag=RingOfFire,predicate=cannons:ships/tutorialfull] unless score $gamestate CmdData matches 2 run gamerule doFireTick false
kill @e[type=marker,tag=RingOfFire,predicate=cannons:ships/tutorialfull]

function tutorial:cannondock/restoreweakpoints

title @a[tag=OnDock] actionbar {"translate":"tutorial.ship_timer.repaired","color":"green"}