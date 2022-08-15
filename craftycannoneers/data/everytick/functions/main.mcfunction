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
function cannons:hitmarkers
tag @a[tag=UtilKilled] remove UtilKilled
tag @a[tag=GoldKilled] remove GoldKilled

#Weapons
function weapons:bomb/throw
function weapons:bomb/functionality

#Chests
function chests:loop
function chests:lockedchest

#Player related functions
function game:shields

#Game related functions or commands
kill @e[type=falling_block]

#Game settings
execute if score $gamestate CmdData matches -1 run function lobby:customizer/controller
execute unless score $gamestate CmdData matches -1 run tag @a remove NearModboard

# Easter Eggs
function lobby:easteregg/loop

# Tutorial Area
function tutorial:loop

#Toggle tips
execute as @a unless score @s GamesPlayed matches 0..10 run scoreboard players set @s GamesPlayed 10

scoreboard players enable @a toggleTips
execute as @a[scores={toggleTips=1..,GamesPlayed=2..}] run tellraw @s [{"text":"You cannot do this until you play ","color":"red"},{"score":{"name":"@s","objective":"GamesPlayed"},"color":"red"},{"text":" more games."}]
execute as @a[scores={toggleTips=1..,GamesPlayed=1}] run tellraw @s [{"text":"You cannot do this until you play 1 more game.","color":"red"}]
scoreboard players reset @a[scores={toggleTips=1..,GamesPlayed=1..}]

execute as @a[scores={toggleTips=1..},tag=hideTips] run tag @s add tempHideTips

execute as @a[scores={toggleTips=1..,GamesPlayed=..0},tag=!hideTips] run tellraw @s [{"text":"You have disabled ingame tips. You can re-enable them using your Lobby Book.","color":"red"}]
execute as @a[scores={toggleTips=1..,GamesPlayed=..0},tag=!hideTips] run tag @s add hideTips

execute as @a[scores={toggleTips=1..,GamesPlayed=..0},tag=hideTips,tag=tempHideTips] run tellraw @s [{"text":"You have enabled ingame tips. You can disable them using your Lobby Book.","color":"green"}]
execute as @a[scores={toggleTips=1..,GamesPlayed=..0},tag=hideTips,tag=tempHideTips] run tag @s remove hideTips

tag @a remove tempHideTips
scoreboard players reset @a[scores={toggleTips=1..}] toggleTips

execute as @e[type=armor_stand,tag=YZERODeco] at @s run particle minecraft:enchant ~ ~0.1 ~ 0.2 0 0.2 0.3 2
execute as @e[type=armor_stand,tag=EvtemaDeco] at @s run particle minecraft:enchant ~ ~0.1 ~ 0.2 0 0.2 0.3 2
execute as @e[type=armor_stand,tag=StuffyDeco] at @s run particle minecraft:enchant ~ ~0.1 ~ 0.2 0 0.2 0.3 2

#Ingame
execute if score $gamestate CmdData matches 3 run function game:ingame/gameend
execute if score $gamestate CmdData matches 2 run function game:ingame
function chests:openchest
function lobby:joinpads
function lobby:cbdisplays
scoreboard players reset @a[scores={eyeclick=1..}] eyeclick

execute if score $gamestate CmdData matches 0 if score $OrangeReady CmdData matches 1 unless entity @a[team=Orange] run data merge block -44 -28 0 {Text3:'{"extra":[{"color":"gold","text":"Orange: "},{"color":"red","text":"❌","bold":true}],"text":""}'}
execute if score $gamestate CmdData matches 0..1 if score $OrangeReady CmdData matches 1 unless entity @a[team=Orange] run scoreboard players set $OrangeReady CmdData 0

execute if score $gamestate CmdData matches 0 if score $PurpleReady CmdData matches 1 unless entity @a[team=Purple] run data merge block -44 -28 0 {Text4:'{"extra":[{"color":"dark_purple","text":"Purple: "},{"color":"red","text":"❌","bold":true}],"text":""}'}
execute if score $gamestate CmdData matches 0..1 if score $PurpleReady CmdData matches 1 unless entity @a[team=Purple] run scoreboard players set $PurpleReady CmdData 0

execute if score $gamestate CmdData matches 2.. run scoreboard players set $OrangeReady CmdData 0
execute if score $gamestate CmdData matches 2.. run scoreboard players set $PurpleReady CmdData 0

execute if score $gamestate CmdData matches 0 run function game:startgame
execute if score $gamestate CmdData matches 1 run function game:countdown
execute if score $gamestate CmdData matches 0 run scoreboard players set $Countdown CmdData 0
execute store success score $toggle CmdData if score $toggle CmdData matches 0

#Bossbars
execute if score $gamestate CmdData matches 2.. run bossbar set lobbybar players @a[team=Lobby]
execute unless score $gamestate CmdData matches 2.. run bossbar set lobbybar players @a
execute if score $gamestate CmdData matches 3 run bossbar set lobbybar color red
execute if score $gamestate CmdData matches 3 run bossbar set lobbybar name {"text":"A game is currently ending!","bold":true,"color":"red"}

execute as @e[type=experience_orb] run kill @s