tag @s remove NoRegen
function cannons:despawnplayerc
function game:givegear
gamemode adventure @s[gamemode=!spectator]
tp @s[team=Orange] 88 -26 55 90 0
tp @s[team=Purple] 52 -26 -55 -90 0
tag @s remove onboatregen
tag @s add loaded
scoreboard players add @s MVPdeath 1
scoreboard players reset @s death