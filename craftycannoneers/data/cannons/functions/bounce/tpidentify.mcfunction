execute if score @s bounceID = $temp bounceID run tag @s add pair
scoreboard players reset @s[tag=pair] CmdData
tp @s[tag=pair] ~ ~33 ~
tag @s[tag=pair] remove pair
scoreboard players set $tp bounceID 1