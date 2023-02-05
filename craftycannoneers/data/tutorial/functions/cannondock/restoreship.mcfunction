scoreboard players set $shipstatus CmdData 0
scoreboard players set $shiptimer CmdData 0

place template minecraft:training_flag -389 11 -55
place template minecraft:training_ship1 -400 -37 -83
place template minecraft:training_ship2 -400 -37 -35

kill @e[type=armor_stand,tag=GasBubble,predicate=cannons:ships/tutorial]
kill @e[type=armor_stand,tag=GasAS,predicate=cannons:ships/tutorial]
kill @e[type=bat,predicate=cannons:ships/tutorial]
kill @e[type=marker,tag=RingOfFire,predicate=cannons:ships/tutorial]

function tutorial:cannondock/restoreweakpoints

title @a[tag=OnDock] actionbar {"translate":"tutorial.ship_timer.repaired","color":"green"}