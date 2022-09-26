advancement revoke @s only game:arrowcount
execute store result score @s[team=!Lobby,team=!Spectator] hasArrows run clear @s arrow 0
execute store result score $temp hasArrows run clear @s crossbow{Charged:1b} 0
scoreboard players operation @s hasArrows += $temp hasArrows
scoreboard players reset $temp hasArrows