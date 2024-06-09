execute store result score @s[team=!Lobby,team=!Spectator,tag=!arrowcounted] hasArrows run clear @s arrow 0
scoreboard players add @s[tag=loaded,tag=!arrowcounted] hasArrows 1
tag @s[team=!Lobby,team=!Spectator] add arrowcounted