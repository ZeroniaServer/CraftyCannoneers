#> No more floating buttons
setblock -58 -3 -32 air
setblock -65 -12 -39 air
setblock -63 -8 -39 air
setblock -60 -5 -39 air

#> Reset teachers (unicode fix)
function tutorial:resetteachers

tellraw @a [{"translate":"game.applied_updates","color":"green","with":[{"translate":"game.name","with":[{"translate":"game.crafty"},{"translate":"game.cannoneers"}]},{"text":"v1.0.4","color":"green"}]}]
scoreboard players set $WorldVersion CmdData 1040