function tutorial:combatarea
function tutorial:cannondock
function tutorial:watchtower
function tutorial:treasurepit
function tutorial:trainingdummies/functionality
function tutorial:itemframes

execute as @e[type=wandering_trader,tag=Teacher] run data merge entity @s {HandItems:[]}
effect clear @e[type=wandering_trader,tag=Teacher] invisibility