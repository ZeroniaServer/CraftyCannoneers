scoreboard players set $gamestate CmdData 2

title @a title {"text":"Game Started!","color":"dark_aqua"}
title @a[team=!Lobby,team=!Spectator] subtitle {"text":"Destroy the enemy ship!","color":"aqua"}
title @a[team=!Purple,team=!Orange] subtitle {"text":" ","color":"aqua"}

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