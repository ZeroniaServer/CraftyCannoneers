scoreboard players reset $DamageOrange CmdData
scoreboard players reset $DamagePurple CmdData
scoreboard players reset $AnnouncedLast CmdData

scoreboard players set $gamestate CmdData 2

data modify block -44 -28 0 front_text.messages[0] set value '{"text":""}'
data modify block -44 -28 0 front_text.messages[1] set value '{"text":""}'
data modify block -44 -28 0 front_text.messages[2] set value '{"text":""}'
data modify block -44 -28 0 front_text.messages[3] set value '{"text":""}'

gamerule fallDamage true
execute unless score $GraveRobbery CmdData matches 1 run gamerule keepInventory true
execute if score $GraveRobbery CmdData matches 1 run gamerule keepInventory false

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

execute as @e[type=wandering_trader,tag=Trader] run function arenaclear:villagertrades

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

execute unless entity @e[type=marker,tag=RingOfFire,predicate=cannons:safezones/tutorial] run gamerule doFireTick false

#> Enable modifiers
execute if score $Wildlife CmdData matches 1 run function game:modifiers/sharks/spawnsharks
execute if score $LostCargo CmdData matches 1 run function game:modifiers/lostcargo/setup
execute if score $LostCargo CmdData matches 1 run scoreboard players set $CargoTime CmdData 0
execute if score $LostCargo CmdData matches 1 run scoreboard players set $SpawnCargo CmdData 1