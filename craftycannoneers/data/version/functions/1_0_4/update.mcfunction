#> No more floating buttons
setblock -58 -3 -32 air
setblock -65 -12 -39 air
setblock -63 -8 -39 air
setblock -60 -5 -39 air

#> Rename teachers
execute as @e[type=wandering_trader,tag=Teacher] run data merge entity @s {CustomName:'[{"translate":"space.-4096"},{"text":"\\uE003"},{"translate":"space.-4096"}]'}

#> Kill test marker (RIP)
kill @e[type=marker,tag=test]

tellraw @a [{"translate":"game.applied_updates","color":"green","with":[{"translate":"game.name","with":[{"translate":"game.crafty"},{"translate":"game.cannoneers"}]},{"text":"v1.0.4","color":"green"}]}]
scoreboard players set $WorldVersion CmdData 1040