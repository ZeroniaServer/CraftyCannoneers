#> Reset Cannon entities so villagers are not able to despawn
function arenaclear:cannons

tellraw @a [{"translate":"game.applied_updates","color":"green"},{"translate":"game.crafty","color":"green"},{"translate":"game.cannoneers","color":"green"},{"text":" v1.0.2","color":"green"}]
scoreboard players set $WorldVersion CmdData 1020