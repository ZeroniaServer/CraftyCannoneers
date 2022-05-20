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

#Lobby water
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run particle splash ~ ~ ~ 0.3 0 0.3 0.3 150 force
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run particle falling_water ~ ~ ~ 0.2 0.4 0.1 0.2 150 force
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run particle minecraft:bubble_column_up ~ ~ ~ 0.4 0.2 0.4 0.1 20 force
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run playsound minecraft:entity.player.splash.high_speed master @a[distance=1..] ~ ~ ~ 1 0
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run playsound minecraft:entity.player.splash.high_speed master @a[distance=1..] ~ ~ ~ 1 1.4
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run playsound minecraft:block.bubble_column.whirlpool_ambient master @a[distance=1..] ~ ~ ~ 1 1.2
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run tag @s add LeaveGame

#Lobby water
execute as @a[team=!Lobby,team=!Spectator,predicate=!game:inarena] at @s run particle splash ~ ~ ~ 0.3 0 0.3 0.3 150 force
execute as @a[team=!Lobby,team=!Spectator,predicate=!game:inarena] at @s run particle falling_water ~ ~ ~ 0.2 0.4 0.1 0.2 150 force
execute as @a[team=!Lobby,team=!Spectator,predicate=!game:inarena] at @s run particle minecraft:bubble_column_up ~ ~ ~ 0.4 0.2 0.4 0.1 20 force
execute as @a[team=!Lobby,team=!Spectator,predicate=!game:inarena] at @s run playsound minecraft:entity.player.splash.high_speed master @a[distance=1..] ~ ~ ~ 1 0
execute as @a[team=!Lobby,team=!Spectator,predicate=!game:inarena] at @s run playsound minecraft:entity.player.splash.high_speed master @a[distance=1..] ~ ~ ~ 1 1.4
execute as @a[team=!Lobby,team=!Spectator,predicate=!game:inarena] at @s run playsound minecraft:block.bubble_column.whirlpool_ambient master @a[distance=1..] ~ ~ ~ 1 1.2
execute as @a[team=!Lobby,team=!Spectator,predicate=!game:inarena] at @s run scoreboard players set @s death 1

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