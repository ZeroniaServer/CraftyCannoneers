#> Blast slimes
## TODO: Anything for the slimes
# execute if entity @a[gamemode=!spectator,distance=..9] run function game:modifiers/lostcargo/summonslime

#> Particles/sounds
playsound blastbarrelexplode master @a ~ ~ ~ 3 2
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[team=!Lobby]
particle dust 1 0 0 2 ~ ~1 ~ 1 1 1 0 30 force @a[team=!Lobby]
particle cloud ~ ~1 ~ 1 1 1 0.3 10 force @a[team=!Lobby]
particle explosion ~ ~ ~ 1.4 1.4 1.4 0.1 12 force @a[team=!Lobby]

## TODO: Make this kill the entire barrel, so all entities associated with it
# function arenaclear:kill