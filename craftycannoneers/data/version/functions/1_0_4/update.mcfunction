#> No more floating buttons
setblock -58 -3 -32 air
setblock -65 -12 -39 air
setblock -63 -8 -39 air
setblock -60 -5 -39 air

#> Kill test marker (RIP)
kill @e[type=marker,tag=test]

tellraw @a [{"text":"Successfully applied updates from Crafty Cannoneers v1.0.4","color":"green"}]
scoreboard players set $WorldVersion CmdData 1040