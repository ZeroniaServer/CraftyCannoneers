#> Set lightning rods to protect flammable/block-update-susceptible areas
function arenaclear:lightningrods/lobby
schedule function arenaclear:lightningrods/trainingarea 140t
schedule function arenaclear:lightningrods/middleisland 280t
schedule function arenaclear:lightningrods/purpleship 400t
schedule function arenaclear:lightningrods/orangeship 440t
schedule function arenaclear:lightningrods/outerislands 480t
scoreboard players set $lightningRods CmdData 1