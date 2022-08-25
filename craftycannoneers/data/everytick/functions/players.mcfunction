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
execute as @a store result score @s playerUUID run data get entity @s UUID[0]
execute as @s[team=] run tag @s add LeaveGame

#> Movement detection
execute as @s[tag=!hasMoved,scores={jump=1..}] run tag @s add hasMoved
execute as @s[tag=!hasMoved,scores={walk=30..}] run tag @s add hasMoved
execute as @s[tag=!hasMoved,scores={sprint=50..}] run tag @s add hasMoved
execute as @s[tag=!hasMoved,scores={crouch=30..}] run tag @s add hasMoved
execute if entity @s[tag=hasMoved] run function everytick:hasmoved

#> Leave game
function everytick:leavegame

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