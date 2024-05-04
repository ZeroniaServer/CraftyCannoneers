#> Failsafe for players who crashed out
scoreboard players add @s leavecheck 1
execute if score $gamestate CmdData matches -1 run scoreboard players set @s[team=Purple,tag=!LeaveGame] LeftGame 1
execute if score $gamestate CmdData matches -1 run scoreboard players set @s[team=Orange,tag=!LeaveGame] LeftGame 1
execute if score $gamestate CmdData matches -1 run scoreboard players set @s[team=Spectator,tag=!LeaveGame] LeftGame 1
execute unless score @s leavecheck = $curr leavecheck run scoreboard players set @s[team=Lobby] LeftGame 1

#> General effects
effect give @s saturation infinite 100 true
effect give @s[team=Lobby] instant_health infinite 100 true
effect give @s[team=Lobby] resistance infinite 100 true
effect give @s[team=Lobby] fire_resistance infinite 100 true
effect give @s[team=Lobby] water_breathing infinite 127 true
effect give @s[team=Lobby,tag=!InCombat] weakness infinite 127 true
xp set @s 0 levels
xp set @s 0 points
spawnpoint @s[team=Lobby] -55 -21 0 -90
execute unless score @s playerUUID matches -2147483648.. store result score @s playerUUID run data get entity @s UUID[0]
tag @s[team=] add LeaveGame

#> Leave game
execute unless entity @s[team=Developer] run function everytick:leavegame
scoreboard players operation @s leavecheck = $curr leavecheck

#> Welcome new players
execute at @s[team=Lobby,tag=!firstJoined] run function everytick:welcome

#> Notify players about Training Island
execute if entity @s[tag=NeedsTutorial,tag=!hideTips] run tellraw @s ["","\n",{"translate":"chat.new_here","color":"green","with":[{"translate":"game.name","with":[{"translate":"game.crafty","bold":true,"color":"dark_purple"},{"translate":"game.cannoneers","bold":true,"color":"gold"}]}]},"\n",{"translate":"chat.recommend","color":"green","with":[{"translate":"tutorial.training_island","bold":true,"color":"aqua"}]},"\n",{"translate":"chat.warp_pad","italic":true,"color":"dark_green"},"\n"]
tag @s[tag=NeedsTutorial] remove NeedsTutorial

#> Notify players about resource pack
execute if score $gamestate CmdData matches 0..2 run tellraw @s[tag=firstJoined,tag=!msgReceived] ["",{"translate":"%1$s","with":[{"nbt":"ResourcePack","storage":"craftycannoneers:messages","interpret":true},{"translate":"ver1.1.2","fallback":"%1$s","with":[{"nbt":"OutdatedPack","storage":"craftycannoneers:messages","interpret":true},{"nbt":"ReadyToPlay","storage":"craftycannoneers:messages","interpret":true}]}]}]
execute unless score $gamestate CmdData matches 0.. run tellraw @s[tag=firstJoined,tag=!msgReceived] ["",{"translate":"%1$s","with":[{"nbt":"ResourcePack","storage":"craftycannoneers:messages","interpret":true},{"translate":"ver1.1.2","fallback":"%1$s","with":[{"nbt":"OutdatedPack","storage":"craftycannoneers:messages","interpret":true},{"nbt":"SettingsMap","storage":"craftycannoneers:messages","interpret":true}]}]}]
tag @s[tag=firstJoined] add msgReceived

#> Servermode team join
#Orange
execute if score $servermode CmdData matches 1 run scoreboard players enable @s joinorange
execute unless score $servermode CmdData matches 1 run trigger joinorange set 0

execute unless score $gamestate CmdData matches -1 unless score $gamestate CmdData matches 3 unless score $InOrange CmdData > $InPurple CmdData unless score $InOrange CmdData >= $MaxTeamSize CmdData run tag @s[team=!Orange,scores={joinorange=1..}] add JoinOrange
execute unless score $gamestate CmdData matches -1 unless score $gamestate CmdData matches 3 if score $InOrange CmdData >= $MaxTeamSize CmdData if entity @s[team=!Orange,scores={joinorange=1..},tag=!tryJoinOrange] run function lobby:joinpads/orange/full
execute unless score $gamestate CmdData matches -1 unless score $gamestate CmdData matches 3 if score $InOrange CmdData > $InPurple CmdData if entity @s[team=!Orange,scores={joinorange=1..},tag=!tryJoinOrange] run function lobby:joinpads/orange/imbalanced

execute unless score $gamestate CmdData matches 0..2 if score @s joinorange matches 1.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.cannot_join","color":"red"}]
execute if entity @s[team=Orange,scores={joinorange=1..}] run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.already_joined","color":"red"}]

scoreboard players reset @s[scores={joinorange=1..}] joinorange

#Purple
execute if score $servermode CmdData matches 1 run scoreboard players enable @s joinpurple
execute unless score $servermode CmdData matches 1 run trigger joinpurple set 0

execute unless score $gamestate CmdData matches -1 unless score $gamestate CmdData matches 3 unless score $InPurple CmdData > $InOrange CmdData unless score $InPurple CmdData >= $MaxTeamSize CmdData run tag @s[team=!Purple,scores={joinpurple=1..}] add JoinPurple
execute unless score $gamestate CmdData matches -1 unless score $gamestate CmdData matches 3 if score $InPurple CmdData >= $MaxTeamSize CmdData if entity @s[team=!Purple,scores={joinpurple=1..},tag=!tryJoinPurple] run function lobby:joinpads/purple/full
execute unless score $gamestate CmdData matches -1 unless score $gamestate CmdData matches 3 if score $InPurple CmdData > $InOrange CmdData if entity @s[team=!Purple,scores={joinpurple=1..},tag=!tryJoinPurple] run function lobby:joinpads/purple/imbalanced

execute unless score $gamestate CmdData matches 0..2 if score @s joinpurple matches 1.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.cannot_join","color":"red"}]
execute if entity @s[team=Purple,scores={joinpurple=1..}] run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.already_joined","color":"red"}]

scoreboard players reset @s[scores={joinpurple=1..}] joinpurple

#Spectator
execute if score $servermode CmdData matches 1 run scoreboard players enable @s spectate
execute unless score $servermode CmdData matches 1 run trigger spectate set 0

execute unless score $gamestate CmdData matches -1 unless score $gamestate CmdData matches 3 run tag @s[team=!Spectator,scores={spectate=1..}] add JoinSpec

execute unless score $gamestate CmdData matches 0..2 if score @s spectate matches 1.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.cannot_spectate","color":"red"}]
execute if entity @s[team=Spectator,scores={spectate=1..}] run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"error.already_spectating","color":"red"}]

scoreboard players reset @s[scores={spectate=1..}] spectate

#> Join teams
function lobby:joinpads/jointeams

#> Spectator
execute at @s[team=Spectator] run function everytick:spectator
tag @s[team=!Spectator,tag=NewSpec] remove NewSpec

#> Game settings
execute unless score $gamestate CmdData matches -1 run tag @s remove NearModboard

#> No fall
function everytick:nofall

#> Seagull particles
execute at @s[team=Spectator] at @e[type=marker,tag=seagullSpawner,distance=..20,limit=1,sort=nearest] at @e[type=item_display,tag=seagull,distance=..12] run particle end_rod ~ ~ ~ 0 0 0 0 0 normal @s[distance=..20]
execute at @s[team=Spectator] at @e[type=marker,tag=seagullSpawner,distance=..20,limit=1,sort=nearest] run particle dust{color:[0.0,1.0,3.0],scale:2.0} ~ ~ ~ 1 1 1 0.1 10 normal @s[distance=..20]

#> Shields
execute if entity @s[team=!Spectator] run function game:shields

#> Hitmarkers
execute if entity @s[team=!Spectator] run function cannons:hitmarkers

#> Open chests
execute if entity @s[team=!Spectator] run function chests:openchest

#> Inventory counting
execute unless entity @s[advancements={game:invcount={rock=false,full=false,full_lobby=false,unfull=false,unfull_lobby=false}}] run function game:invcount

#> Lobby water
execute at @s[team=Lobby,predicate=!game:inlobby,predicate=!game:tutorialbounds] if block ~ ~ ~ water run function lobby:water

#> Reset stats/tags
scoreboard players reset @s[team=Lobby] MVPkill
scoreboard players reset @s[team=Lobby] MVPdeath
scoreboard players reset @s[team=Lobby] MVPcannon
scoreboard players reset @s[team=Lobby] MVPdamage
tag @s[tag=UtilKilled] remove UtilKilled
tag @s[tag=GoldKilled] remove GoldKilled

#> Reset tutorials
execute positioned -283 -24 -42 if entity @s[scores={CannonTutorial=1..},distance=8..] run tag @s remove TutorialCannon
execute positioned -283 -24 -42 if entity @s[scores={CannonTutorial=1..},distance=8..] run scoreboard players reset @s CannonTutorial
execute positioned -242 -26 -22 if entity @s[scores={ChestTutorial=1..},distance=8..] run tag @s remove TutorialChest
execute positioned -242 -26 -22 if entity @s[scores={ChestTutorial=1..},distance=8..] run scoreboard players reset @s ChestTutorial
execute positioned -260 -27 -56 if entity @s[scores={CombatTutorial=1..},distance=8..] run tag @s remove TutorialCombat
execute positioned -260 -27 -56 if entity @s[scores={CombatTutorial=1..},distance=8..] run scoreboard players reset @s CombatTutorial
execute positioned -279 -11 -15 if entity @s[scores={WeakpointTutorial=1..},distance=8..] run tag @s remove TutorialWeakpoint
execute positioned -279 -11 -15 if entity @s[scores={WeakpointTutorial=1..},distance=8..] run scoreboard players reset @s WeakpointTutorial

#> Parkour
execute if entity @s[team=Lobby] run function lobby:parkour/main
effect clear @s[team=!Lobby,tag=inParkour] invisibility
tag @s[team=!Lobby,tag=inParkour] remove inParkour
tag @s[team=!Lobby,tag=resettimeonce] remove resettimeonce

#> Click cooldown
scoreboard players add @s clickcooldown 0
scoreboard players set @s[scores={clickcooldown=5..}] clickcooldown 0
scoreboard players add @s[scores={clickcooldown=1..}] clickcooldown 1
scoreboard players set @s[scores={click=1..}] clickcooldown 1
scoreboard players reset @s[scores={click=1..}] click

#> Rocks
execute at @s[scores={throwsb=1..}] run function lobby:rock/spawn

#> Easter Eggs
advancement grant @s[advancements={tutorial:eastereggs/parrot=true,tutorial:eastereggs/snowman=true,tutorial:eastereggs/planetary=true,tutorial:eastereggs/goldy=true,tutorial:eastereggs/rocketriders=true,tutorial:eastereggs/end=false}] only tutorial:eastereggs/end
execute at @s[scores={parrotpet=1..}] unless entity @e[type=item_display,tag=Parrot,distance=..7] run scoreboard players reset @s parrotpet

#> Tutorial warps
execute at @s unless entity @e[type=marker,tag=TutorialWarp,distance=..2] run tag @s remove Warped

#> Toggle tips
function everytick:toggletips

#> Force gamemodes
execute unless score $forcedmodes CmdData matches 0 run function debug:forcedmodes