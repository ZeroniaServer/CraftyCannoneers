scoreboard players reset $DamageOrange CmdData
scoreboard players reset $DamagePurple CmdData

scoreboard players set $gamestate CmdData 2

gamerule fallDamage true

title @a title {"text":"Game Started!","color":"dark_aqua"}
title @a[team=!Lobby,team=!Spectator] subtitle {"text":"Destroy the enemy ship!","color":"aqua"}
title @a[team=!Purple,team=!Orange] subtitle {"text":" ","color":"aqua"}

tellraw @a[team=Purple] ["",{"text":"You can take off your ","color":"aqua","italic":true},{"text":"Pirate Hat","bold":true,"color":"dark_purple"},{"text":" to leave the game!","color":"aqua","italic":true}]
tellraw @a[team=Orange] ["",{"text":"You can take off your ","color":"aqua","italic":true},{"text":"Pirate Hat","bold":true,"color":"gold"},{"text":" to leave the game!","color":"aqua","italic":true}]


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

execute as @a at @s run playsound entity.generic.explode master @s ~ ~ ~ 100 1.2




#> Weakpoints
kill @e[tag=WeakpointLoc]
tp @e[type=slime] ~ ~-200 ~
kill @e[tag=Weakpoint]
summon marker 70 -30 -48 {Tags:["WeakpointLoc","Purple"]}
summon marker 60 -27 -48 {Tags:["WeakpointLoc","Purple"]}
summon marker 53 -26 -49 {Tags:["WeakpointLoc","Purple"]}
summon marker 82 -27 -50 {Tags:["WeakpointLoc","Purple"]}
summon marker 75 -19 -53 {Tags:["WeakpointLoc","Purple"]}
summon marker 73 -10 -53 {Tags:["WeakpointLoc","Purple"]}
summon marker 57 -14 -52 {Tags:["WeakpointLoc","Purple"]}

summon marker 70 -30 48 {Tags:["WeakpointLoc","Orange"]}
summon marker 80 -27 48 {Tags:["WeakpointLoc","Orange"]}
summon marker 87 -26 49 {Tags:["WeakpointLoc","Orange"]}
summon marker 58 -27 50 {Tags:["WeakpointLoc","Orange"]}
summon marker 65 -19 53 {Tags:["WeakpointLoc","Orange"]}
summon marker 67 -10 53 {Tags:["WeakpointLoc","Orange"]}
summon marker 83 -14 52 {Tags:["WeakpointLoc","Orange"]}
function game:shipweakpoint/spawnnewpurple
function game:shipweakpoint/spawnneworange