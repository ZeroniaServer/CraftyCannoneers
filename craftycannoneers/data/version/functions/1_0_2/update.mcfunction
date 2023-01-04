#> Reset Cannon entities so villagers are not able to despawn
function arenaclear:cannons

tellraw @a [{"text":"Successfully applied updates from Crafty Cannoneers v1.0.2","color":"green"}]
scoreboard players set $WorldVersion CmdData 1020