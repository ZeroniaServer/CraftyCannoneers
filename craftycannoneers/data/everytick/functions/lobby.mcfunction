effect give @a saturation 1000000 100 true
effect give @a[team=Lobby] instant_health 1000000 100 true
effect give @a[team=Lobby] resistance 1000000 100 true
effect give @a[team=Lobby] fire_resistance 1000000 100 true
effect give @a[team=Lobby] water_breathing 1000000 255 true
effect give @a[team=Lobby,tag=!InCombat] weakness 1000000 255 true
spawnpoint @a[team=Lobby] -55 -21 0 -90

effect give @e[type=minecraft:villager] minecraft:invisibility 1000000 100 true
effect give @e[type=slime] invisibility 1000000 100 true

function lobby:parkour/parkour
function lobby:rock/rock
function lobby:eastereggs
function everytick:nofall

scoreboard players add @a[scores={msgdelay=1..20}] msgdelay 1
execute as @a[scores={msgdelay=21..}] run scoreboard players reset @s msgdelay

execute as @a[tag=!hasMoved,scores={jump=1..}] run tag @s add hasMoved
execute as @a[tag=!hasMoved,scores={walk=30..}] run tag @s add hasMoved
execute as @a[tag=!hasMoved,scores={sprint=50..}] run tag @s add hasMoved
execute as @a[tag=!hasMoved,scores={crouch=30..}] run tag @s add hasMoved

execute as @a[tag=hasMoved] run scoreboard players reset @s jump
execute as @a[tag=hasMoved] run scoreboard players reset @s walk
execute as @a[tag=hasMoved] run scoreboard players reset @s sprint
execute as @a[tag=hasMoved] run scoreboard players reset @s crouch

execute as @a[team=] run tag @s add LeaveGame
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] at @s run playsound ding master @s ~ ~-1 ~ 1 1.2
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] run title @s title ["",{"text":"Crafty ","bold":true,"color":"dark_purple"},{"text":"Cannoneers","bold":true,"color":"gold"}]
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] run title @s subtitle ["",{"text":"V0.7.0 ","color":"aqua"},{"text":"Made by ","color":"gray"},{"text":"Zeronia","color":"green"},{"text":"!","color":"gray"}]
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] run scoreboard players set @s GamesPlayed 10
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] run tellraw @s ["","\n",{"text":"Welcome aboard! ","bold":true,"color":"dark_green"},"\n",{"text":"It seems like you're new to ","color":"green"},{"text":"Crafty ","bold":true,"color":"dark_purple"},{"text":"Cannoneers","bold":true,"color":"gold"},{"text":"!","color":"green"},"\n",{"text":"We highly recommend you to check out the ","color":"green"},{"text":"Training Island","bold":true,"color":"aqua"},{"text":" before playing the actual game!","color":"green"},"\n",{"text":"You can go there by using the blue warp pad on the left side of the Lobby.","italic":true,"color":"dark_green"},"\n"]
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] run tellraw @s ["",{"translate":"%1$s","with":[{"nbt":"ResourcePack","storage":"craftycannoneers:messages","interpret":true},{"text":"Thank you for using the resource pack!","color":"aqua","italic":true}]}]
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] run tag @s add firstJoined
execute as @a store result score @s playerUUID run data get entity @s UUID[0]

execute if score $gamestate CmdData matches 0.. as @a[team=Lobby,tag=hasMoved,tag=firstJoined,tag=!msgReceived] run tellraw @s ["",{"translate":"%1$s","with":[{"nbt":"ResourcePack","storage":"craftycannoneers:messages","interpret":true,"extra":["\n\n",{"nbt":"ReadyToPlay","storage":"craftycannoneers:messages","interpret":true}]},{"nbt":"ReadyToPlay","storage":"craftycannoneers:messages","interpret":true}]}]
execute unless score $gamestate CmdData matches 0.. as @a[team=Lobby,tag=hasMoved,tag=firstJoined,tag=!msgReceived] run tellraw @s ["",{"translate":"%1$s","with":[{"nbt":"ResourcePack","storage":"craftycannoneers:messages","interpret":true,"extra":["\n\n",{"nbt":"SettingsMap","storage":"craftycannoneers:messages","interpret":true}]},{"nbt":"SettingsMap","storage":"craftycannoneers:messages","interpret":true}]}]
tag @a[team=Lobby,tag=hasMoved,tag=firstJoined] add msgReceived

#XP
xp set @a 0 levels
xp set @a 0 points

#Tutorials
execute positioned -283 -24 -42 as @a[scores={CannonTutorial=1..},distance=8..] run tag @s remove TutorialCannon
execute positioned -242 -26 -22 as @a[scores={ChestTutorial=1..},distance=8..] run tag @s remove TutorialChest
execute positioned -260 -27 -56 as @a[scores={CombatTutorial=1..},distance=8..] run tag @s remove TutorialCombat
execute positioned -279 -11 -15 as @a[scores={WeakpointTutorial=1..},distance=8..] run tag @s remove TutorialWeakpoint
execute positioned -283 -24 -42 as @a[scores={CannonTutorial=1..},distance=8..] run scoreboard players reset @s CannonTutorial
execute positioned -242 -26 -22 as @a[scores={ChestTutorial=1..},distance=8..] run scoreboard players reset @s ChestTutorial
execute positioned -260 -27 -56 as @a[scores={CombatTutorial=1..},distance=8..] run scoreboard players reset @s CombatTutorial
execute positioned -279 -11 -15 as @a[scores={WeakpointTutorial=1..},distance=8..] run scoreboard players reset @s WeakpointTutorial

##Tutorial chest particles
#Common
execute as @e[type=armor_stand,tag=CChestFakeC] at @s run particle falling_dust light_gray_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 force @a[team=Lobby,scores={ChestTutorial=3}]
execute as @e[type=armor_stand,tag=CChestFakeC] at @s run particle falling_dust light_gray_concrete ~ ~1 ~ 0 0 0 0.1 1 force @a[team=Lobby,scores={ChestTutorial=3}]
#Uncommon
execute as @e[type=armor_stand,tag=UCChestFakeC] at @s run particle falling_dust light_blue_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 force @a[team=Lobby,scores={ChestTutorial=4}]
execute as @e[type=armor_stand,tag=UCChestFakeC] at @s run particle falling_dust light_blue_concrete ~ ~1 ~ 0 0 0 0.1 1 force @a[team=Lobby,scores={ChestTutorial=4}]
#Rare
execute as @e[type=armor_stand,tag=RChestFakeC] at @s run particle falling_dust purple_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 force @a[team=Lobby,scores={ChestTutorial=5}]
execute as @e[type=armor_stand,tag=RChestFakeC] at @s run particle falling_dust purple_concrete ~ ~1 ~ 0 0 0 0.1 1 force @a[team=Lobby,scores={ChestTutorial=5}]
#Locked
execute as @e[type=armor_stand,tag=LChestFakeC] at @s run particle falling_dust red_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 force @a[team=Lobby,scores={ChestTutorial=6}]
execute as @e[type=armor_stand,tag=LChestFakeC] at @s run particle falling_dust red_concrete ~ ~1 ~ 0 0 0 0.1 1 force @a[team=Lobby,scores={ChestTutorial=6}]



scoreboard players reset @a[team=Lobby] MVPkill
scoreboard players reset @a[team=Lobby] MVPdeath
scoreboard players reset @a[team=Lobby] MVPcannon