scoreboard players reset $DamageOrange CmdData
scoreboard players reset $DamagePurple CmdData
scoreboard players reset $AnnouncedLast CmdData

scoreboard players set $gamestate CmdData 2

gamerule fallDamage true

#Balancing
scoreboard players set $OrangeKills BalanceScore 0
scoreboard players set $PurpleKills BalanceScore 0
scoreboard players set $KillThreshold BalanceScore 0
scoreboard players set $PVPbal BalanceScore 0

title @a title {"text":"Game Started!","color":"dark_aqua"}
title @a[team=!Lobby,team=!Spectator] subtitle {"text":"Destroy the enemy ship!","color":"aqua"}
title @a[team=!Purple,team=!Orange] subtitle {"text":" ","color":"aqua"}
scoreboard players set $Tip CmdData 0
function tutorial:newset

# tellraw @a[team=Purple] ["",{"text":"You can take off your ","color":"aqua","italic":true},{"text":"Pirate Hat","bold":true,"color":"dark_purple"},{"text":" to leave the game!","color":"aqua","italic":true}]
# tellraw @a[team=Orange] ["",{"text":"You can take off your ","color":"aqua","italic":true},{"text":"Pirate Hat","bold":true,"color":"gold"},{"text":" to leave the game!","color":"aqua","italic":true}]


execute if score $ShipHP CmdData matches 42069.. run function game:autohp

tag @a remove KillMVP
tag @a remove DeathMVP
tag @a remove CannonMVP

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

scoreboard players reset @a loverocks

#> Weakpoints
tp @e[type=marker,tag=WeakpointLoc] 0 -1000 0
kill @e[type=marker,tag=WeakpointLoc]
tp @e[type=slime,tag=Weakpoint] 0 -1000 0
kill @e[type=#game:weakpoint,tag=Weakpoint]

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

kill @e[type=marker,tag=LockSpawn]
summon marker 54 -36 4 {Tags:["LockSpawn"]}
summon marker 86 -36 -4 {Tags:["LockSpawn"]}
summon marker 54 -31 3 {Tags:["LockSpawn"]}
summon marker 86 -31 -3 {Tags:["LockSpawn"]}
summon marker 88 -30 -11 {Tags:["LockSpawn"]}
summon marker 52 -30 11 {Tags:["LockSpawn"]}
summon marker 69 -29 -2 {Tags:["LockSpawn"]}
summon marker 71 -29 2 {Tags:["LockSpawn"]}

execute as @e[type=marker,tag=WeakpointLoc] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 cave_air replace air

function game:shipweakpoint/spawnnewpurple
function game:shipweakpoint/spawnneworange