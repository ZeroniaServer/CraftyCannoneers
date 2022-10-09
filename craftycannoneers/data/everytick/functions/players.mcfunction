#> General effects
effect give @s saturation 1000000 100 true
effect give @s[team=Lobby] instant_health 1000000 100 true
effect give @s[team=Lobby] resistance 1000000 100 true
effect give @s[team=Lobby] fire_resistance 1000000 100 true
effect give @s[team=Lobby] water_breathing 1000000 255 true
effect give @s[team=Lobby,tag=!InCombat] weakness 1000000 255 true
xp set @s 0 levels
xp set @s 0 points
spawnpoint @s[team=Lobby] -55 -21 0 -90
execute unless score @s playerUUID matches -2147483648.. store result score @s playerUUID run data get entity @s UUID[0]
tag @s[team=] add LeaveGame

#> Message delay
scoreboard players add @s msgdelay 0
scoreboard players add @s[scores={msgdelay=..159}] msgdelay 1

#> Movement detection
scoreboard players reset @s[scores={msgdelay=..159}] jump
scoreboard players reset @s[scores={msgdelay=..159}] walk
scoreboard players reset @s[scores={msgdelay=..159}] sprint
scoreboard players reset @s[scores={msgdelay=..159}] crouch
tag @s[tag=!hasMoved,scores={jump=1..,msgdelay=160..}] add hasMoved
tag @s[tag=!hasMoved,scores={walk=30..,msgdelay=160..}] add hasMoved
tag @s[tag=!hasMoved,scores={sprint=50..,msgdelay=160..}] add hasMoved
tag @s[tag=!hasMoved,scores={crouch=30..,msgdelay=160..}] add hasMoved

#> Leave game
function everytick:leavegame

#> If player has moved
execute if entity @s[tag=hasMoved] run function everytick:hasmoved

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