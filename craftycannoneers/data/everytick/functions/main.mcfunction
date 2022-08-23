#> This function runs every tick. Use this as the main function to call other functions that should run every tick.
function everytick:particles
function everytick:lobby
execute as @a at @s run function everytick:leavegame
function everytick:nodrop
function everytick:seagull
function everytick:arrowkill

#> EntityID
execute if score #loaded entityid matches 1 run function entityid:real_tick

#> Cannons
function cannons:main
function cannons:bounce/main

#> Player related functions
execute as @a at @s run function everytick:players

#> Kill entities
kill @e[type=falling_block]
kill @e[type=experience_orb]

#> Game settings
execute if score $gamestate CmdData matches -1 run function lobby:customizer/controller
execute unless score $gamestate CmdData matches -1 run tag @a remove NearModboard

#> Easter Eggs
function lobby:easteregg/loop

#> Training Island
execute if entity @a[team=Lobby,predicate=game:tutorialbounds] run function tutorial:loop
execute as @e[type=marker,tag=TutorialWarp] at @s run function tutorial:warppads/main

#> Credits particles
execute as @e[type=armor_stand,tag=YZERODeco] at @s run particle enchant ~ ~0.1 ~ 0.2 0 0.2 0.3 2 normal @a[team=Lobby]
execute as @e[type=armor_stand,tag=EvtemaDeco] at @s run particle enchant ~ ~0.1 ~ 0.2 0 0.2 0.3 2 normal @a[team=Lobby]
execute as @e[type=armor_stand,tag=StuffyDeco] at @s run particle enchant ~ ~0.1 ~ 0.2 0 0.2 0.3 2 normal @a[team=Lobby]

#> Ingame
execute if score $gamestate CmdData matches 3 run function game:ingame/gameend
execute if score $gamestate CmdData matches 2 run function game:ingame
execute if score $gamestate CmdData matches 2.. run function game:duringgame

function chests:openchest

#> Cannonball displays
execute as @e[type=armor_stand,tag=CannonballDeco] run function lobby:cbdisplays/main

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

#> Bossbars
execute if score $gamestate CmdData matches 2.. run bossbar set lobbybar players @a[team=Lobby]
execute unless score $gamestate CmdData matches 2.. run bossbar set lobbybar players @a
execute if score $gamestate CmdData matches 3 run bossbar set lobbybar color red
execute if score $gamestate CmdData matches 3 run bossbar set lobbybar name {"text":"A game is currently ending!","bold":true,"color":"red"}