#> This function runs every tick. Use this as the main function to call other functions that should run every tick.
function everytick:lobby
function everytick:leavegame
function everytick:nodrop
execute unless block -43 -22 -14 minecraft:potted_fern run setblock -43 -22 -14 minecraft:potted_fern
#inventory 25 gets replaced for no reason, but somehow that fixes an issue with ghost items. Could've used any other non-hotbar slot. Idek.
item replace entity @a[nbt={Inventory:[{id:"minecraft:fern"}]}] inventory.25 with air
item replace entity @a[nbt={Inventory:[{id:"minecraft:fern"}]}] hotbar.0 with air
item replace entity @a[nbt={Inventory:[{id:"minecraft:fern"}]}] hotbar.1 with air
item replace entity @a[nbt={Inventory:[{id:"minecraft:fern"}]}] hotbar.2 with air
item replace entity @a[nbt={Inventory:[{id:"minecraft:fern"}]}] hotbar.3 with air
item replace entity @a[nbt={Inventory:[{id:"minecraft:fern"}]}] hotbar.4 with air
item replace entity @a[nbt={Inventory:[{id:"minecraft:fern"}]}] hotbar.5 with air
item replace entity @a[nbt={Inventory:[{id:"minecraft:fern"}]}] hotbar.6 with air
item replace entity @a[nbt={Inventory:[{id:"minecraft:fern"}]}] hotbar.7 with air
item replace entity @a[nbt={Inventory:[{id:"minecraft:fern"}]}] hotbar.8 with air

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