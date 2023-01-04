#> Reset Cannon entities so villagers are not able to despawn
function arenaclear:cannons

tellraw @a [{"text":"Successfully applied updates from Crafty Cannoneers 1.0.2","color":"green","bold":true}]
scoreboard players set $WorldVersion CmdData 1020