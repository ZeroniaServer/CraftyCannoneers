scoreboard players set $shipstatus CmdData 0
scoreboard players set $shiptimer CmdData 0

place template tutorial:training_flag -389 11 -55
place template tutorial:training_ship1 -400 -37 -83
place template tutorial:training_ship2 -400 -37 -35

setblock -382 -30 -58 oak_trapdoor[facing=west,half=top]
setblock -381 -30 -58 oak_trapdoor[facing=east,half=top]
setblock -382 -30 -59 oak_stairs[facing=north,half=top]
setblock -381 -30 -57 oak_stairs[facing=south,half=top]

setblock -394 -30 -58 oak_trapdoor[facing=east,half=top]
setblock -395 -30 -58 oak_trapdoor[facing=west,half=top]
setblock -394 -30 -59 oak_stairs[facing=north,half=top]
setblock -395 -30 -57 oak_stairs[facing=south,half=top]

setblock -381 -30 -46 oak_trapdoor[facing=west,half=top]
setblock -380 -30 -46 oak_trapdoor[facing=east,half=top]
setblock -381 -30 -47 oak_stairs[facing=north,half=top]
setblock -381 -30 -45 oak_stairs[facing=south,half=top]

setblock -396 -30 -46 oak_trapdoor[facing=west,half=top]
setblock -395 -30 -46 oak_trapdoor[facing=east,half=top]
setblock -395 -30 -47 oak_stairs[facing=north,half=top,]
setblock -395 -30 -45 oak_stairs[facing=south,half=top]

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