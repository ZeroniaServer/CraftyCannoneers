#> Game timer
scoreboard players add $gametime CmdData 1

#> Team Chests
execute as @e[type=marker,tag=orangeteamchest,limit=1] at @s positioned 68.50 -28 60.50 rotated -90 0 run function game:teamchest/orange/main
execute as @e[type=marker,tag=purpleteamchest,limit=1] at @s positioned 72.50 -28 -59.50 rotated -90 0 run function game:teamchest/purple/main
fill 69 -29 60 67 -29 60 spruce_slab[type=top]
fill 71 -29 -60 73 -29 -60 spruce_slab[type=top]

#> Blast Barrels
function weapons:barrel/main

#> Crab Traps
execute if score $Wildlife CmdData matches 1 run function weapons:crabtrap/main

#> Player functions
execute as @a[team=!Lobby,team=!Spectator,team=!Developer] at @s run function game:ingame/players
scoreboard players reset @a[team=!Purple,team=!Orange,scores={drowning=1..}] drowning

#> Bossbars
function game:bossbars
execute if score $gamestate CmdData matches 3 run scoreboard players reset $DamagePurple CmdData
execute if score $gamestate CmdData matches 3 run scoreboard players reset $DamageOrange CmdData
execute if score $gamestate CmdData matches 3 run scoreboard players reset $CritPurple CmdData
execute if score $gamestate CmdData matches 3 run scoreboard players reset $CritOrange CmdData

execute unless score $DamagePurple CmdData matches 1.. unless score $CritPurple CmdData matches 1.. run bossbar set purpleship color purple
execute unless score $DamagePurple CmdData matches 1.. unless score $CritPurple CmdData matches 1.. run bossbar set purpleship2 color purple
execute unless score $DamagePurple CmdData matches 1.. unless score $CritPurple CmdData matches 1.. run bossbar set purpleship3 color purple
execute unless score $DamageOrange CmdData matches 1.. unless score $CritOrange CmdData matches 1.. run bossbar set orangeship color yellow
execute unless score $DamageOrange CmdData matches 1.. unless score $CritOrange CmdData matches 1.. run bossbar set orangeship2 color yellow

execute if score $DamagePurple CmdData matches 1.. unless score $CritPurple CmdData matches 1.. run bossbar set purpleship color white
execute if score $DamagePurple CmdData matches 1.. unless score $CritPurple CmdData matches 1.. run bossbar set purpleship2 color white
execute if score $DamagePurple CmdData matches 1.. unless score $CritPurple CmdData matches 1.. run bossbar set purpleship3 color white
execute if score $DamageOrange CmdData matches 1.. unless score $CritOrange CmdData matches 1.. run bossbar set orangeship color white
execute if score $DamageOrange CmdData matches 1.. unless score $CritOrange CmdData matches 1.. run bossbar set orangeship2 color white

execute if score $CritPurple CmdData matches 1.. run bossbar set purpleship color red
execute if score $CritPurple CmdData matches 1.. run bossbar set purpleship2 color red
execute if score $CritPurple CmdData matches 1.. run bossbar set purpleship3 color red
execute if score $CritOrange CmdData matches 1.. run bossbar set orangeship color red
execute if score $CritOrange CmdData matches 1.. run bossbar set orangeship2 color red

function game:trackdamage
function game:trackdamage
function game:trackdamage
function game:trackdamage

#> Chests
function chests:main

#> Boats
function game:boat/main

#> Blast Bombs
function weapons:bomb/main

#> Setblocks for indestructible ship blocks
function game:ingame/indestructible

#> Setblocks for lilypads
function game:ingame/lilypads

#> Cave entrances
execute positioned 81 -36.8 -17 run particle bubble_column_up 81 -36.8 -17 1.4 0 0 0.2 5 normal @a[team=!Lobby,distance=..16]
execute positioned 58 -36.8 17 run particle bubble_column_up 58 -36.8 17 1.4 0 0 0.2 5 normal @a[team=!Lobby,distance=..16]

#> Traders
execute as @e[type=wandering_trader,tag=Trader] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer,distance=..10]

#> Kill marked entities
execute if score $markkill CmdData matches 1.. as @e[tag=markkill] at @s if loaded ~ ~ ~ run function arenaclear:kill