#> This function runs every tick. Use this as the main function to call other functions that should run every tick.
function everytick:lobby
function everytick:leavegame
function everytick:nodrop

#Cannons
function cannons:load
function cannons:shoot

#Chests
function chests:loop

#Player related functions
function game:shields

#Game related functions or commands
kill @e[type=falling_block]
#Weakpoints
function game:shipweakpoint/spot

#Game settings
execute if score $gamestate CmdData matches -1 run function lobby:customizer/controller

#Ingame
##TODO: make sure to add a gamestate check once that all works.
execute if score $gamestate CmdData matches 3 run function game:ingame/gameend
execute if score $gamestate CmdData matches 2 run function game:ingame
function lobby:joinpads
execute if score $gamestate CmdData matches 0 run function game:startgame
execute if score $gamestate CmdData matches 1 run function game:countdown

#Bossbars
execute if score $gamestate CmdData matches 2.. run bossbar set lobbybar players @a[team=Lobby]
execute unless score $gamestate CmdData matches 2.. run bossbar set lobbybar players @a
execute if score $gamestate CmdData matches 3 run bossbar set lobbybar color red
execute if score $gamestate CmdData matches 3 run bossbar set lobbybar name {"text":"A game is currently ending!","bold":true,"color":"red"}