#> No more floating buttons
setblock -58 -3 -32 air
setblock -65 -12 -39 air
setblock -63 -8 -39 air
setblock -60 -5 -39 air

#> Reset teachers (unicode fix)
function tutorial:resetteachers

tellraw @a [{"text":"Successfully applied updates from Crafty Cannoneers v1.0.4","color":"green"}]
scoreboard players set $WorldVersion CmdData 1040