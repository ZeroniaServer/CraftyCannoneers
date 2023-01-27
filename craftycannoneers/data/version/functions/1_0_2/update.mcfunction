#> Reset Cannon entities so villagers are not able to despawn
function arenaclear:cannons

tellraw @a [{"translate":"game.applied_updates","color":"green","with":[{"translate":"game.name","with":[{"translate":"game.crafty"},{"translate":"game.cannoneers"}]},{"text":"v1.0.2","color":"green"}]}]
scoreboard players set $WorldVersion CmdData 1020