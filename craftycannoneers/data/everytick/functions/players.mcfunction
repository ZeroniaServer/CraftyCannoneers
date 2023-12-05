#> General effects
effect give @s saturation infinite 100 true
effect give @s[team=Lobby] instant_health infinite 100 true
effect give @s[team=Lobby] resistance infinite 100 true
effect give @s[team=Lobby] fire_resistance infinite 100 true
effect give @s[team=Lobby] water_breathing infinite 255 true
effect give @s[team=Lobby,tag=!InCombat] weakness infinite 255 true
xp set @s 0 levels
xp set @s 0 points
spawnpoint @s[team=Lobby] -55 -21 0 -90
execute unless score @s playerUUID matches -2147483648.. store result score @s playerUUID run data get entity @s UUID[0]
tag @s[team=] add LeaveGame

#> Leave game
execute unless entity @s[team=Developer] run function everytick:leavegame

#> Welcome new players
execute at @s[team=Lobby,tag=!firstJoined] run function everytick:welcome

#> Notify players about Training Island
execute if entity @s[tag=NeedsTutorial,tag=!hideTips] run tellraw @s ["","\n",{"text":"It seems like you're new to ","color":"green"},{"text":"Crafty ","bold":true,"color":"dark_purple"},{"text":"Cannoneers","bold":true,"color":"gold"},{"text":"!","color":"green"},"\n",{"text":"We highly recommend you to check out the ","color":"green"},{"text":"Training Island","bold":true,"color":"aqua"},{"text":" before playing the actual game!","color":"green"},"\n",{"text":"You can go there by using the blue warp pad on the left side of the Lobby.","italic":true,"color":"dark_green"},"\n"]
tag @s[tag=NeedsTutorial] remove NeedsTutorial

#> Notify players about resource pack
execute if score $gamestate CmdData matches 0..2 run tellraw @s[tag=firstJoined,tag=!msgReceived] ["",{"translate":"%1$s","with":[{"nbt":"ResourcePack","storage":"craftycannoneers:messages","interpret":true,"extra":["\n\n",{"nbt":"ReadyToPlay","storage":"craftycannoneers:messages","interpret":true}]},{"nbt":"ReadyToPlay","storage":"craftycannoneers:messages","interpret":true}]}]
execute unless score $gamestate CmdData matches 0.. run tellraw @s[tag=firstJoined,tag=!msgReceived] ["",{"translate":"%1$s","with":[{"nbt":"ResourcePack","storage":"craftycannoneers:messages","interpret":true,"extra":["\n\n",{"nbt":"SettingsMap","storage":"craftycannoneers:messages","interpret":true}]},{"nbt":"SettingsMap","storage":"craftycannoneers:messages","interpret":true}]}]
tag @s[tag=firstJoined] add msgReceived

#> Join teams
execute at @s[team=Lobby] run function lobby:joinpads/jointeams

#> Spectator
execute at @s[team=Spectator] run function everytick:spectator
tag @s[team=!Spectator,tag=NewSpec] remove NewSpec

#> Game settings
execute unless score $gamestate CmdData matches -1 run tag @s remove NearModboard

#> No fall
function everytick:nofall

#> Seagull particles
execute at @s[team=Spectator] at @e[type=marker,tag=seagullSpawner,distance=..20,limit=1,sort=nearest] at @e[type=armor_stand,tag=seagull,distance=..12] run particle end_rod ~ ~ ~ 0 0 0 0 0 normal @s[distance=..20]
execute at @s[team=Spectator] at @e[type=marker,tag=seagullSpawner,distance=..20,limit=1,sort=nearest] run particle dust 0 1 3 2 ~ ~ ~ 1 1 1 0.1 10 normal @s[distance=..20]

#> Shields
execute if entity @s[team=!Spectator] run function game:shields

#> Hitmarkers
execute if entity @s[team=!Spectator] run function cannons:hitmarkers

#> Open chests
function chests:openchest

#> Arrow dropping
execute if score @s[team=!Lobby,team=!Spectator] dropArrow matches 1.. run function game:ingame/arrowcount
scoreboard players set @s[scores={dropArrow=1..}] useCrossbow 3
scoreboard players reset @s dropArrow

#> Use crossbow score
scoreboard players remove @s[scores={useCrossbow=1..}] useCrossbow 1

#> Lobby water
execute at @s[team=Lobby,predicate=!game:inlobby] if block ~ ~ ~ water run function lobby:water

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

#> Rocks
execute at @s[scores={throwsb=1..}] run function lobby:rock/spawn
advancement revoke @s[advancements={lobby:clearrock=true}] only lobby:clearrock

#> Easter Eggs
advancement grant @s[advancements={tutorial:eastereggs/parrot=true,tutorial:eastereggs/snowman=true,tutorial:eastereggs/planetary=true,tutorial:eastereggs/goldy=true,tutorial:eastereggs/rocketriders=true,tutorial:eastereggs/end=false}] only tutorial:eastereggs/end
execute at @s[scores={parrotpet=1..}] unless entity @e[type=armor_stand,tag=Parrot,distance=..7] run scoreboard players reset @s parrotpet

#> Tutorial warps
execute unless entity @e[type=marker,tag=TutorialWarp,distance=..1.2] run tag @s remove Warped

#> Toggle tips
function everytick:toggletips

#> Force gamemodes
execute unless score $forcedmodes CmdData matches 0 run function debug:forcedmodes