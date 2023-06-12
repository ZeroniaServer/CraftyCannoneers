#> Default values
scoreboard players set @s[tag=!boatlaunch] drag 25
scoreboard players set @s[tag=!boatlaunch] gravity 145

#> Get accuracy stored in the cannon
execute unless entity @s[tag=boatlaunch] run function cannons:accuracy/getaccuracy
tag @s[tag=boatlaunch] add AccuracySet