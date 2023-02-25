#> This function runs every tick. Use this as the main function to call other functions that should run every tick.

#> World Updates
execute if entity @a run function version:check
execute if entity @a as @e[type=area_effect_cloud,tag=ParkourRecordAEC,scores={CmdData=1..},limit=1] store result entity @s Air short 1 run scoreboard players remove @s CmdData 1
scoreboard players reset @e[type=area_effect_cloud,tag=ParkourRecordAEC,scores={CmdData=..0},limit=1] CmdData

#> Player related functions
execute as @a at @s run function everytick:players

#> Restore Parkour high score if necessary
execute if entity @a if entity @e[type=area_effect_cloud,tag=ParkourNameAEC,name="???",limit=1] if score @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime matches 0.. if data storage craftycannoneers:parkour Name run function lobby:parkour/restore

#> Reset Parkour high score if necessary
execute if entity @a unless score @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime matches 0.. run tellraw @a [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.parkour","color":"gray","with":[{"translate":"error.report","underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://discord.gg/X9bZgw7"},"hoverEvent":{"action":"show_text","contents":[{"text":"error.discord","color":"white"}]}}]},"\n"]
execute if entity @a unless score @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime matches 0.. run function lobby:parkour/resethighscore

#> Particle timers
function everytick:particles

#> Item related functions
execute as @e[type=item] at @s run function everytick:items

#> Seagulls
execute as @e[type=armor_stand,tag=seagull] at @s at @e[type=marker,tag=seagullSpawner,limit=1,sort=nearest] run function everytick:seagull
execute as @e[type=marker,tag=seagull] at @s run function everytick:seagullspin

#> Cannons
function cannons:main

#> Entity effects
execute as @e[type=witch] at @s run function everytick:witchfix
execute if score #loaded entityid matches 1 run function entityid:real_tick
effect give @e[type=villager] invisibility 1000000 100 true
effect give @e[type=villager] water_breathing 1000000 100 true
tag @e[type=villager,predicate=game:isbaby] add baby
execute as @e[type=villager,tag=baby,predicate=!game:isbaby] run data merge entity @s {Age:-2147483648}
effect give @e[type=slime,tag=!PCannonballname] invisibility 1000000 100 true
kill @e[type=falling_block]
kill @e[type=experience_orb]
execute as @e[type=arrow] at @s run function everytick:arrowkill

#> Rocks
execute as @e[type=marker,tag=rocktracker] at @s run function lobby:rock/tp

#> Joinpads
function lobby:joinpads/main

#> Game settings
execute if score $gamestate CmdData matches -1 if entity @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds] run function lobby:customizer/controller

#> Easter Eggs
function lobby:easteregg/loop

#> Training Island
execute if entity @a[team=Lobby,predicate=game:tutorialbounds] run function tutorial:loop
execute as @e[type=marker,tag=TutorialWarp,limit=2] at @s run function tutorial:warppads/main

#> Credits particles
execute as @e[type=armor_stand,tag=YZERODeco,limit=1] at @s run particle enchant ~ ~0.1 ~ 0.2 0 0.2 0.3 2 normal @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds]
execute as @e[type=armor_stand,tag=EvtemaDeco,limit=1] at @s run particle enchant ~ ~0.1 ~ 0.2 0 0.2 0.3 2 normal @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds]
execute as @e[type=armor_stand,tag=StuffyDeco,limit=1] at @s run particle enchant ~ ~0.1 ~ 0.2 0 0.2 0.3 2 normal @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds]

#> Ingame
execute if score $gamestate CmdData matches 3 run function game:gameend
execute if score $gamestate CmdData matches 2 run function game:ingame
execute if score $gamestate CmdData matches 2.. run function game:duringgame

#> Reset eyeclick/climb
scoreboard players reset @a[scores={eyeclick=1..}] eyeclick
scoreboard players reset @a[scores={climb=1..}] climb

#> Cannonball displays
execute as @e[type=armor_stand,tag=CannonballDeco] run function lobby:cbdisplays/main

#> Ready Up + Countdown
execute if score $gamestate CmdData matches 0 if score $OrangeReady CmdData matches 1 unless entity @a[team=Orange] run data merge block -44 -28 0 {Text3:'{"extra":[{"color":"gold","translate":"game.orange"},{"color":"gold","text":": "},{"color":"red","text":"❌","bold":true}],"text":""}'}
execute if score $gamestate CmdData matches 0..1 if score $OrangeReady CmdData matches 1 unless entity @a[team=Orange] run scoreboard players set $OrangeReady CmdData 0

execute if score $gamestate CmdData matches 0 if score $PurpleReady CmdData matches 1 unless entity @a[team=Purple] run data merge block -44 -28 0 {Text4:'{"extra":[{"color":"dark_purple","translate":"game.purple"},{"color":"dark_purple","text":": "},{"color":"red","text":"❌","bold":true}],"text":""}'}
execute if score $gamestate CmdData matches 0..1 if score $PurpleReady CmdData matches 1 unless entity @a[team=Purple] run scoreboard players set $PurpleReady CmdData 0

execute if score $gamestate CmdData matches 2.. run scoreboard players set $OrangeReady CmdData 0
execute if score $gamestate CmdData matches 2.. run scoreboard players set $PurpleReady CmdData 0

execute if score $gamestate CmdData matches 0 run function game:startgame
execute if score $gamestate CmdData matches 1 run function game:countdown
execute if score $gamestate CmdData matches 0 run scoreboard players set $Countdown CmdData 0

#> Toggle score
execute store success score $toggle CmdData if score $toggle CmdData matches 0

#> Bossbars
execute if score $gamestate CmdData matches 2.. run bossbar set lobbybar players @a[team=Lobby]
execute unless score $gamestate CmdData matches 2.. run bossbar set lobbybar players @a
execute if score $gamestate CmdData matches 3 run bossbar set lobbybar color red
execute if score $gamestate CmdData matches 3 run bossbar set lobbybar name {"translate":"game.ending","bold":true,"color":"red"}

#> Resolve signs
function everytick:resolvesigns

#> Failsafe for reset scoreboards
execute unless score $gamestate CmdData matches -1.. run tellraw @a [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.game","color":"gray","with":[{"translate":"error.report","underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://discord.gg/X9bZgw7"},"hoverEvent":{"action":"show_text","contents":[{"translate":"error.discord","color":"white"}]}}]},"\n"]
execute unless score $gamestate CmdData matches -1.. run function debug:preparerelease