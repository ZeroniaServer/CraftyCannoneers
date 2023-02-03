tag @s remove NoRegen
function cannons:despawnplayerc
function game:givegear
gamemode adventure @s[gamemode=!spectator]
title @s title {"text":""}
title @s subtitle {"text":""}
tp @s[team=Orange] 88 -26 55 90 0
tp @s[team=Purple] 52 -26 -55 -90 0
tag @s remove onboatregen
tag @s add loaded
tag @s remove NeedsCutlass
tag @s remove NeedsCrossbow
tag @s remove NeedsSpyglass
tag @s remove NeedsTracer
scoreboard players add @s MVPdeath 1
scoreboard players set @s shotArrows 0
scoreboard players reset @s death
scoreboard players add @s hasArrows 1
scoreboard players set @s respawn 1