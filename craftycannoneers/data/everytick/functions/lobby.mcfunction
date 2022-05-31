effect give @a saturation 1000000 100 true
effect give @a[team=Lobby] instant_health 1000000 100 true
effect give @a[team=Lobby] resistance 1000000 100 true
effect give @a[team=Lobby,tag=hasMoved] jump_boost 1000000 255 true
effect give @a[team=Lobby] fire_resistance 1000000 100 true
effect give @a[team=Lobby] water_breathing 1000000 255 true
effect give @a[team=Lobby] weakness 1000000 255 true

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
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~-1 ~ 1 1.2
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] run title @s title ["",{"text":"Crafty ","bold":true,"color":"dark_purple"},{"text":"Cannoneers","bold":true,"color":"gold"}]
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] run title @s subtitle ["",{"text":"V0.3.0 ","color":"aqua"},{"text":"Made by ","color":"gray"},{"text":"Zeronia","color":"green"},{"text":"!","color":"gray"}]
execute as @a[team=Lobby,tag=hasMoved,tag=!firstJoined] run function tutorial:notify
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

scoreboard players reset @a[team=Lobby] MVPkill
scoreboard players reset @a[team=Lobby] MVPdeath
scoreboard players reset @a[team=Lobby] MVPcannon