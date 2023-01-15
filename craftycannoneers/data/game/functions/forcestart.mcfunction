scoreboard players reset $DamageOrange CmdData
scoreboard players reset $DamagePurple CmdData
scoreboard players reset $AnnouncedLast CmdData

scoreboard players set $gamestate CmdData 2

data merge block -44 -28 0 {Text1:'{"text":""}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}

gamerule fallDamage true

#Balancing
scoreboard players set $OrangeKills BalanceScore 0
scoreboard players set $PurpleKills BalanceScore 0
scoreboard players set $KillThreshold BalanceScore 0
scoreboard players set $PVPbal BalanceScore 0

tag @a remove ClickedReady
title @a title {"translate":"game.started","color":"dark_aqua"}
title @a[team=!Lobby,team=!Spectator,team=!Developer] subtitle {"translate":"game.start_splash","color":"aqua"}
title @a[team=!Purple,team=!Orange] subtitle {"text":" ","color":"aqua"}
scoreboard players set $Tip CmdData 0
function tutorial:newset

execute if score $ShipHP CmdData matches 42069.. run function game:autohp
function lobby:customizer/lockboxdamage

tag @a remove KillMVP
tag @a remove DeathMVP
tag @a remove CannonMVP

bossbar add purpleship ""
bossbar add purpleship2 ""
bossbar add purpleship3 ""
bossbar add orangeship ""
bossbar add orangeship2 ""

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
advancement revoke @a[advancements={tutorial:zzzunlockables/rocks={50=false}}] only tutorial:zzzunlockables/rocks

#> Weakpoints
function game:shipweakpoint/placeweakpoints

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

scoreboard players set $orange hasArrows 0
scoreboard players set $purple hasArrows 0

scoreboard players add @a[team=Orange] hasArrows 1
scoreboard players add @a[team=Purple] hasArrows 1