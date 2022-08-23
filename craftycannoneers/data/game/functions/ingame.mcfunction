#> Lobby bar
bossbar set lobbybar color green
bossbar set lobbybar name {"text":"A game is currently in progress!","bold":true,"color":"green"}
bossbar set lobbybar value 10

#> Chest spawning
function game:ingame/chestspawning

#> Player functions
execute as @a[team=!Lobby,team=!Spectator,team=!Developer] run function game:ingame/players

#> Boats - TODO OPTIMIZE
function game:ingame/boat

#> Tips
function tutorial:tips/showtip

#> Ship bell
execute as @e[type=armor_stand,tag=ShipBell] run function game:ingame/bell

#> Setblocks for indestructible ship blocks
function game:ingame/setblocks

#> Spawn new weakpoints if the old ones die for some reason (failsafe)
execute unless entity @e[type=slime,tag=Weakpoint,tag=Orange] if entity @e[type=marker,tag=WeakpointLoc,tag=Purple] run function game:shipweakpoint/spawnnewpurple
execute unless entity @e[type=slime,tag=Weakpoint,tag=Purple] if entity @e[type=marker,tag=WeakpointLoc,tag=Orange] run function game:shipweakpoint/spawnneworange

#> Disable readyup trigger
execute as @a run trigger readyup set 0

#> Ingame timer
execute unless score $TimeLimit CmdData matches 42069.. run function game:ingame/timer

#> Game end criteria
execute unless score $gamestate CmdData matches 3.. run function game:ingame/endcriteria

#> Traders
execute as @e[type=wandering_trader,tag=Trader] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer,distance=..10]