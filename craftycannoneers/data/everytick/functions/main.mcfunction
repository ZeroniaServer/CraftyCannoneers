#> This function runs every tick. Use this as the main function to call other functions that should run every tick.

#> World Updates
execute if score $load CmdData matches 40.. run function version:check

#> Leave check
scoreboard players add $curr leavecheck 1

#> Player related functions
execute as @a at @s run function everytick:players

#> Restore Parkour high score if necessary
execute if score $load CmdData matches 10.. unless score $updating CmdData matches 1 if entity @e[type=area_effect_cloud,tag=ParkourNameAEC,name="???",limit=1] if score @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime matches 0.. if data storage craftycannoneers:parkour Name run function lobby:parkour/restore

#> Reset Parkour high score if necessary
execute if score $load CmdData matches 10.. unless score $updating CmdData matches 1 unless score @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime matches 0.. run tellraw @a [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.parkour","color":"gray","with":[{"translate":"error.report","underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://discord.gg/X9bZgw7"},"hoverEvent":{"action":"show_text","contents":[{"translate":"error.discord","color":"white"}]}}]},"\n"]
execute if score $load CmdData matches 10.. unless score @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime matches 0.. run function lobby:parkour/resethighscore

#> Slime killing (failsafe)
execute if score $load CmdData matches 40.. unless score $updating CmdData matches 1 as @e[type=slime] unless data entity @s Tags run kill @s

#> Particle timers
execute if score $load CmdData matches 40.. unless score $updating CmdData matches 1 run function everytick:particles

#> Crab tracking
scoreboard players set $curr crabs 0

#> Item related functions
execute if score $load CmdData matches 40.. unless score $updating CmdData matches 1 as @e[type=item] at @s run function everytick:items

#> Seagulls
execute if score $load CmdData matches 40.. unless score $updating CmdData matches 1 as @e[type=armor_stand,tag=seagull] at @s at @e[type=marker,tag=seagullSpawner,limit=1,sort=nearest] run function everytick:seagull
execute if score $load CmdData matches 40.. unless score $updating CmdData matches 1 as @e[type=marker,tag=seagull] at @s run function everytick:seagullspin

#> Cannons
scoreboard players set $runcannons CmdData 0
execute if entity @a[team=Lobby,predicate=game:tutorialbounds] run scoreboard players set $runcannons CmdData 1
execute if score $gamestate CmdData matches 2.. run scoreboard players set $runcannons CmdData 1
execute if score $runcannons CmdData matches 1 if score $load CmdData matches 40.. unless score $updating CmdData matches 1 run function cannons:main

#> Entity effects
execute if score $load CmdData matches 40.. unless score $updating CmdData matches 1 run function everytick:entityeffects

#> Rocks
execute if score $load CmdData matches 40.. unless score $updating CmdData matches 1 as @e[type=marker,tag=rocktracker] at @s run function lobby:rock/tp

#> Joinpads
execute if score $load CmdData matches 10.. unless score $updating CmdData matches 1 run function lobby:joinpads/main

#> Game settings
execute if score $load CmdData matches 10.. unless score $updating CmdData matches 1 if score $gamestate CmdData matches -1 if entity @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds] run function lobby:customizer/controller

#> Easter Eggs
execute if score $load CmdData matches 40.. run function lobby:easteregg/loop

#> Training Island
execute if score $load CmdData matches 40.. if entity @a[team=Lobby,predicate=game:tutorialbounds] run function tutorial:loop
execute if score $load CmdData matches 40.. as @e[type=marker,tag=TutorialWarp,limit=2] at @s run function tutorial:warppads/main

#> Credits particles
execute if score $load CmdData matches 40.. as @e[type=armor_stand,tag=YZERODeco,limit=1] at @s run particle enchant ~ ~0.1 ~ 0.2 0 0.2 0.3 2 normal @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds]
execute if score $load CmdData matches 40.. as @e[type=armor_stand,tag=EvtemaDeco,limit=1] at @s run particle enchant ~ ~0.1 ~ 0.2 0 0.2 0.3 2 normal @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds]
execute if score $load CmdData matches 40.. as @e[type=armor_stand,tag=StuffyDeco,limit=1] at @s run particle enchant ~ ~0.1 ~ 0.2 0 0.2 0.3 2 normal @a[team=Lobby,tag=!inParkour,predicate=!game:tutorialbounds]

#> Ingame
execute if score $gamestate CmdData matches 3 run function game:gameend
execute if score $gamestate CmdData matches 2 run function game:ingame
execute if score $gamestate CmdData matches 2.. run function game:duringgame

#> Reset eyeclick/climb
scoreboard players add @a[scores={eyeclick=1..}] eyeclick 1
scoreboard players reset @a[scores={eyeclick=3..}] eyeclick
scoreboard players reset @a[scores={climb=1..}] climb

#> Cannonball displays
execute if score $load CmdData matches 40.. unless score $updating CmdData matches 1 as @e[type=item_display,tag=CannonballDeco] run function lobby:cbdisplays/main

#> Ready Up + Countdown
execute if score $gamestate CmdData matches 0..1 if score $OrangeReady CmdData matches 1 unless entity @a[team=Orange] run function game:readyteams/unreadyemptyorange

execute if score $gamestate CmdData matches 0..1 if score $PurpleReady CmdData matches 1 unless entity @a[team=Purple] run function game:readyteams/unreadyemptypurple

execute if score $gamestate CmdData matches 2.. run scoreboard players set $OrangeReady CmdData 0
execute if score $gamestate CmdData matches 2.. run scoreboard players set $PurpleReady CmdData 0

execute if score $gamestate CmdData matches 0 run function game:startgame
execute if score $gamestate CmdData matches 1 run function game:countdown
execute if score $gamestate CmdData matches 0 run scoreboard players set $Countdown CmdData 0

#> Toggle score
execute store success score $toggle CmdData if score $toggle CmdData matches 0

#> Bossbar visibility in Lobby
execute unless score $gamestate CmdData matches 2.. run bossbar set lobbybar players @a

#> Resolve signs
execute if entity @a[team=Lobby] run function everytick:resolvesigns

#> Resume cancel match counter
execute if score $InTeams CmdData matches 0 if score $gamestate CmdData matches 0 if score $mcancel CmdData matches -1 run function lobby:customizer/cancel/resume

#> Failsafe for reset scoreboards
execute unless score $gamestate CmdData matches -1.. if score $load CmdData matches 40.. unless score $updating CmdData matches 1 run tellraw @a [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.game","color":"gray","with":[{"translate":"error.report","underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://discord.gg/X9bZgw7"},"hoverEvent":{"action":"show_text","contents":[{"translate":"error.discord","color":"white"}]}}]},"\n"]
execute unless score $gamestate CmdData matches -1.. if score $load CmdData matches 40.. unless score $updating CmdData matches 1 run function debug:preparerelease

execute if score $gamestate CmdData matches 2.. if score $Wildlife CmdData matches 1 run function game:modifiers/crabs/detectchange