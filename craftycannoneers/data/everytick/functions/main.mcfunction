#> This function runs every tick. Use this as the main function to call other functions that should run every tick.
function everytick:particles
function everytick:lobby
function everytick:leavegame
function everytick:nodrop
function everytick:seagull
function everytick:arrowkill

#Lobby water
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run particle splash ~ ~ ~ 0.3 0 0.3 0.3 150 force
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run particle falling_water ~ ~ ~ 0.2 0.4 0.1 0.2 150 force
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run particle minecraft:bubble_column_up ~ ~ ~ 0.4 0.2 0.4 0.1 20 force
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run playsound minecraft:entity.player.splash.high_speed master @a[distance=1..] ~ ~ ~ 1 0
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run playsound minecraft:entity.player.splash.high_speed master @a[distance=1..] ~ ~ ~ 1 1.4
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run playsound minecraft:block.bubble_column.whirlpool_ambient master @a[distance=1..] ~ ~ ~ 1 1.2
execute as @a[team=Lobby,predicate=!game:inlobby] at @s if block ~ ~ ~ water run tag @s add LeaveGame

#Cannons
execute if score #loaded entityid matches 1 run function entityid:real_tick
function cannons:main
function cannons:hitmarkers
tag @a[tag=UtilKilled] remove UtilKilled
tag @a[tag=GoldKilled] remove GoldKilled

# #Weapons - TODO OPTIMIZE
# function weapons:bomb/throw
# function weapons:bomb/functionality
#
# #Chests - TODO OPTIMIZE
# function chests:loop
# function chests:lockedchest

#Player related functions
function game:shields

#Game related functions or commands
kill @e[type=falling_block]

#Game settings
execute if score $gamestate CmdData matches -1 run function lobby:customizer/controller
execute unless score $gamestate CmdData matches -1 run tag @a remove NearModboard

#Easter Eggs
function lobby:easteregg/loop

#Training Island
execute if entity @a[team=Lobby,predicate=game:tutorialbounds] run function tutorial:loop
execute as @e[type=marker,tag=TutorialWarp] at @s run function tutorial:warppads/main
execute as @a[team=Lobby] at @s unless entity @e[type=marker,tag=TutorialWarp,distance=..1.2] run tag @s remove Warped

#Toggle tips
execute as @a unless score @s GamesPlayed matches 0..3 run scoreboard players set @s GamesPlayed 3

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
execute if score $gamestate CmdData matches 2.. run function game:duringgame

function chests:openchest
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