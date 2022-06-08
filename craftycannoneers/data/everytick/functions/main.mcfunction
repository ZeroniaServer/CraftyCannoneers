#> This function runs every tick. Use this as the main function to call other functions that should run every tick.
function everytick:lobby
function everytick:leavegame
function everytick:nodrop
function everytick:seagull

#Lobby water
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run particle splash ~ ~ ~ 0.3 0 0.3 0.3 150 force
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run particle falling_water ~ ~ ~ 0.2 0.4 0.1 0.2 150 force
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run particle minecraft:bubble_column_up ~ ~ ~ 0.4 0.2 0.4 0.1 20 force
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run playsound minecraft:entity.player.splash.high_speed master @a[distance=1..] ~ ~ ~ 1 0
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run playsound minecraft:entity.player.splash.high_speed master @a[distance=1..] ~ ~ ~ 1 1.4
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run playsound minecraft:block.bubble_column.whirlpool_ambient master @a[distance=1..] ~ ~ ~ 1 1.2
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run tag @s add LeaveGame

#Arena water
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=1}] at @s run playsound minecraft:entity.player.hurt_drown master @a ~ ~ ~ 1 1
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=4}] at @s run playsound minecraft:entity.player.hurt_drown master @a ~ ~ ~ 1 1.2
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=1}] at @s run title @s title {"text":"OUT OF BOUNDS!","color":"dark_red"}
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=3}] at @s run title @s title {"text":"OUT OF BOUNDS!","color":"white"}
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=5}] at @s run title @s title {"text":"OUT OF BOUNDS!","color":"dark_red"}
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=7}] at @s run title @s title {"text":"OUT OF BOUNDS!","color":"white"}
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=8..}] at @s run title @s title {"text":"OUT OF BOUNDS!","color":"dark_red"}
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=1..80}] at @s run title @s subtitle {"text":"Return to the combat area","color":"red"}
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=20}] at @s run playsound minecraft:entity.generic.swim master @s ~ ~ ~ 1 0.7
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=40}] at @s run playsound minecraft:entity.generic.swim master @s ~ ~ ~ 1 0.8
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=60}] at @s run playsound minecraft:entity.generic.swim master @s ~ ~ ~ 1 1
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,predicate=!game:inarena] at @s run scoreboard players add @s drowning 1
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=80..}] at @s run particle splash ~ ~ ~ 0.3 0 0.3 0.3 150 force
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=80..}] at @s run particle falling_water ~ ~ ~ 0.2 0.4 0.1 0.2 150 force
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=80..}] at @s run particle minecraft:bubble_column_up ~ ~ ~ 0.4 0.2 0.4 0.1 20 force
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=80..}] at @s run playsound minecraft:entity.player.splash.high_speed master @a[distance=1..] ~ ~ ~ 1 0
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=80..}] at @s run playsound minecraft:entity.player.splash.high_speed master @a[distance=1..] ~ ~ ~ 1 1.4
execute if score $gamestate CmdData matches 2.. as @a[team=!Lobby,team=!Spectator,scores={drowning=80..}] at @s run playsound minecraft:block.bubble_column.whirlpool_ambient master @a[distance=1..] ~ ~ ~ 1 1.2
execute if score $gamestate CmdData matches 2.. as @a[team=Orange,scores={drowning=80..}] at @s run scoreboard players set @s death 1
execute if score $gamestate CmdData matches 2.. as @a[team=Purple,scores={drowning=80..}] at @s run scoreboard players set @s death 1
execute if score $gamestate CmdData matches 2.. as @a[team=Purple,scores={drowning=80..}] at @s run title @s title {"text":" ","color":"dark_red"}
execute if score $gamestate CmdData matches 2.. as @a[team=Purple,scores={drowning=80..}] at @s run title @s subtitle {"text":" ","color":"dark_red"}
scoreboard players reset @a[scores={drowning=80..}] drowning
scoreboard players reset @a[team=!Purple,team=!Orange,scores={drowning=1..}] drowning
title @a[team=!Lobby,team=!Spectator,scores={drowning=1..},predicate=game:inarena] title {"text":" ","color":"dark_red"}
title @a[team=!Lobby,team=!Spectator,scores={drowning=1..},predicate=game:inarena] subtitle {"text":" ","color":"dark_red"}
scoreboard players reset @a[team=!Lobby,team=!Spectator,scores={drowning=1..},predicate=game:inarena] drowning

#Cannons
execute if score #loaded entityid matches 1 run function cannons:entityid/real_tick
function cannons:load
function cannons:shoot
function cannons:cannonclaim

#Chests
function chests:loop

#Player related functions
function game:shields

#Game related functions or commands
kill @e[type=falling_block]

#Game settings
execute if score $gamestate CmdData matches -1 run function lobby:customizer/controller

# Easter Eggs
function lobby:easteregg/loop

#Ingame
execute if score $gamestate CmdData matches 3 run function game:ingame/gameend
execute if score $gamestate CmdData matches 2 run function game:ingame
function lobby:joinpads
function lobby:cbdisplays
execute if score $gamestate CmdData matches 0 run function game:startgame
execute if score $gamestate CmdData matches 1 run function game:countdown
execute if score $gamestate CmdData matches 0 run scoreboard players set $Countdown CmdData 0


#Bossbars
execute if score $gamestate CmdData matches 2.. run bossbar set lobbybar players @a[team=Lobby]
execute unless score $gamestate CmdData matches 2.. run bossbar set lobbybar players @a
execute if score $gamestate CmdData matches 3 run bossbar set lobbybar color red
execute if score $gamestate CmdData matches 3 run bossbar set lobbybar name {"text":"A game is currently ending!","bold":true,"color":"red"}

execute as @e[type=experience_orb] run kill @s