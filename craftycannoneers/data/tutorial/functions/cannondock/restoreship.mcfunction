scoreboard players set $shipstatus CmdData 0
scoreboard players set $shiptimer CmdData 0

place template minecraft:training_flag -389 11 -55
place template minecraft:training_ship1 -400 -37 -83
place template minecraft:training_ship2 -400 -37 -35

function tutorial:cannondock/restoreweakpoints

title @a[tag=OnDock] actionbar {"text":"Training Ship repaired!","color":"green"}