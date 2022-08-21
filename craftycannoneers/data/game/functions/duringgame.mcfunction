#> Arena water
execute as @a[team=!Lobby,team=!Spectator,team=!Developer] at @s run function game:ingame/water
scoreboard players reset @a[scores={drowning=80..}] drowning
scoreboard players reset @a[team=!Purple,team=!Orange,scores={drowning=1..}] drowning

#> Team Chests
execute as @e[type=chest_minecart,tag=orangeteamchest,limit=1] at @s positioned 68.50 -28 60.50 rotated 0 0 run function game:teamchest/orange/main
execute as @e[type=chest_minecart,tag=purpleteamchest,limit=1] at @s positioned 72.50 -28 -59.50 rotated 0 0 run function game:teamchest/purple/main
fill 69 -29 60 67 -29 60 spruce_slab[type=top]
fill 71 -29 -60 73 -29 -60 spruce_slab[type=top]

#> Bossbars
bossbar set purpleship players @a[team=!Lobby,team=!Spectator,team=!Orange]
bossbar set purpleship3 players @a[team=Spectator]
bossbar set orangeship players @a[team=!Lobby,team=!Orange]
bossbar set orangeship2 players @a[team=Orange]
bossbar set purpleship2 players @a[team=Orange]

