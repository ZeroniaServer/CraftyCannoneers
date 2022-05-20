scoreboard players reset $DamageOrange CmdData
scoreboard players reset $DamagePurple CmdData

scoreboard players set $gamestate CmdData 2

title @a title {"text":"Game Started!","color":"dark_aqua"}
title @a[team=!Lobby,team=!Spectator] subtitle {"text":"Destroy the enemy ship!","color":"aqua"}
title @a[team=!Purple,team=!Orange] subtitle {"text":" ","color":"aqua"}

tellraw @s[team=Purple] ["",{"text":"You can take off your ","color":"white"},{"text":"Pirate Hat","bold":true,"color":"dark_purple"},{"text":" to leave the game!","color":"white"}]
tellraw @s[team=Orange] ["",{"text":"You can take off your ","color":"white"},{"text":"Pirate Hat","bold":true,"color":"gold"},{"text":" to leave the game!","color":"white"}]


execute if score $ShipHP CmdData matches 42069.. run function game:autohp

bossbar add purpleship ""
bossbar add orangeship ""

execute as @a[team=Purple] run function game:givegear
execute as @a[team=Orange] run function game:givegear

execute as @a[team=Purple] at @s run tp @s @s
execute as @a[team=Orange] at @s run tp @s @s

tp @a[team=Orange] 88 -26 55 90 0
spawnpoint @a[team=Orange] 88 -26 55 90

tp @a[team=Purple] 52 -26 -55 -90 0
spawnpoint @a[team=Purple] 52 -26 -55 -90