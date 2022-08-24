#> Lobby bar
bossbar set lobbybar color green
bossbar set lobbybar name {"text":"A game is currently in progress!","bold":true,"color":"green"}
bossbar set lobbybar value 10

#> Chests spawning
function chests:spawning

#> Tips
function tutorial:tips/showtip

#> Ship bell
execute as @e[type=armor_stand,tag=ShipBell] run function game:ingame/bell

#> Spawn new weakpoints if the old ones die for some reason (failsafe)
execute unless entity @e[type=slime,tag=Weakpoint,tag=Orange] if entity @e[type=marker,tag=WeakpointLoc,tag=Purple] run function game:shipweakpoint/spawnnewpurple
execute unless entity @e[type=slime,tag=Weakpoint,tag=Purple] if entity @e[type=marker,tag=WeakpointLoc,tag=Orange] run function game:shipweakpoint/spawnneworange

#> Disable readyup trigger
execute as @a run trigger readyup set 0

#> Ingame timer
execute unless score $TimeLimit CmdData matches 42069.. run function game:ingame/timer

#> Game end criteria
execute unless score $gamestate CmdData matches 3.. run function game:ingame/endcriteria