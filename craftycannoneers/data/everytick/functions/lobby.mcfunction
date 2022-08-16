effect give @a saturation 1000000 100 true
effect give @a[team=Lobby] instant_health 1000000 100 true
effect give @a[team=Lobby] resistance 1000000 100 true
effect give @a[team=Lobby] fire_resistance 1000000 100 true
effect give @a[team=Lobby] water_breathing 1000000 255 true
#effect give @a[team=Lobby] weakness 1000000 255 true
spawnpoint @a[team=Lobby] -55 -21 0 -90

function lobby:parkour/parkour
function lobby:rock/rock
function lobby:eastereggs
function everytick:nofall

execute as @a[tag=!hasMoved,scores={jump=1..}] run tag @s add hasMoved
execute as @a[tag=!hasMoved,scores={walk=30..}] run tag @s add hasMoved
execute as @a[tag=!hasMoved,scores={sprint=50..}] run tag @s add hasMoved
execute as @a[tag=!hasMoved,scores={crouch=30..}] run tag @s add hasMoved

execute as @a[tag=hasMoved] run scoreboard players reset @s jump
execute as @a[tag=hasMoved] run scoreboard players reset @s walk
execute as @a[tag=hasMoved] run scoreboard players reset @s sprint
execute as @a[tag=hasMoved] run scoreboard players reset @s crouch

execute as @a[team=] run tag @s add LeaveGame
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] run tellraw @s ["","\n",{"text":"Ahoy ","color":"aqua"},{"selector":"@s","color":"dark_aqua"},{"text":"!","color":"aqua"},"\n",{"text":"Welcome to ","color":"green"},{"text":"Crafty ","bold":true,"color":"dark_purple"},{"text":"Cannoneers","bold":true,"color":"gold"},{"text":"!","color":"green"},"\n",{"text":"Feel free to explore the lobby to learn about some of the game's basic mechanics.","color":"green"},"\n",{"text":"Have fun!","color":"dark_green"}]
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] at @s run playsound ding master @s ~ ~-1 ~ 1 1.2
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] run title @s title ["",{"text":"Crafty ","bold":true,"color":"dark_purple"},{"text":"Cannoneers","bold":true,"color":"gold"}]
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] run title @s subtitle ["",{"text":"V0.6.1 ","color":"aqua"},{"text":"Made by ","color":"gray"},{"text":"Zeronia","color":"green"},{"text":"!","color":"gray"}]
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] run scoreboard players set @s GamesPlayed 10
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] run tag @s add firstJoined
execute as @a store result score @s playerUUID run data get entity @s UUID[0]

#XP
xp set @a 0 levels
xp set @a 0 points

#Tutorials
execute positioned -43 -23 -18 as @a[scores={CannonTutorial=1..},distance=6..] run tag @s remove TutorialCannon
execute positioned -43 -23 -18 as @a[scores={ChestTutorial=1..},distance=6..] run tag @s remove TutorialChest
execute positioned -43 -23 -18 as @a[scores={CannonTutorial=1..},distance=6..] run scoreboard players reset @s CannonTutorial
execute positioned -43 -23 -18 as @a[scores={ChestTutorial=1..},distance=6..] run scoreboard players reset @s ChestTutorial

##Tutorial chest particles
#Common
execute as @e[type=armor_stand,tag=ChestTutorial,tag=Common] at @s run particle falling_dust light_gray_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 force @a[team=Lobby,scores={ChestTutorial=3}]
execute as @e[type=armor_stand,tag=ChestTutorial,tag=Common] at @s run particle falling_dust light_gray_concrete ~ ~1 ~ 0 0 0 0.1 1 force @a[team=Lobby,scores={ChestTutorial=3}]
#Uncommon
execute as @e[type=armor_stand,tag=ChestTutorial,tag=Uncommon] at @s run particle falling_dust light_blue_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 force @a[team=Lobby,scores={ChestTutorial=4}]
execute as @e[type=armor_stand,tag=ChestTutorial,tag=Uncommon] at @s run particle falling_dust light_blue_concrete ~ ~1 ~ 0 0 0 0.1 1 force @a[team=Lobby,scores={ChestTutorial=4}]
#Rare
execute as @e[type=armor_stand,tag=ChestTutorial,tag=Rare] at @s run particle falling_dust purple_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 force @a[team=Lobby,scores={ChestTutorial=5}]
execute as @e[type=armor_stand,tag=ChestTutorial,tag=Rare] at @s run particle falling_dust purple_concrete ~ ~1 ~ 0 0 0 0.1 1 force @a[team=Lobby,scores={ChestTutorial=5}]
#Locked
execute as @e[type=armor_stand,tag=ChestTutorial,tag=LockedChest] at @s run particle falling_dust red_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 force @a[team=Lobby,scores={ChestTutorial=6}]
execute as @e[type=armor_stand,tag=ChestTutorial,tag=LockedChest] at @s run particle falling_dust red_concrete ~ ~1 ~ 0 0 0 0.1 1 force @a[team=Lobby,scores={ChestTutorial=6}]



scoreboard players reset @a[team=Lobby] MVPkill
scoreboard players reset @a[team=Lobby] MVPdeath
scoreboard players reset @a[team=Lobby] MVPcannon