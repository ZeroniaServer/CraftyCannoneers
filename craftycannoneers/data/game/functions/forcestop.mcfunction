scoreboard players set @e[type=marker,tag=joinpad] CmdData 0
title @a clear
tag @a[team=!Lobby] add LeaveGame
scoreboard players set $WinningTeam CmdData 0
scoreboard players set $EndTime CmdData 0
execute as @e[type=marker,tag=joinpad] at @s run function lobby:joinpads/lock
scoreboard players set $dust6 CmdData -1
scoreboard players set $dust3 CmdData -1
scoreboard players set $dust2 CmdData -1

gamerule fallDamage false

bossbar remove purpleship
bossbar remove purpleship2
bossbar remove purpleship3
bossbar remove orangeship
bossbar remove orangeship2
bossbar set lobbybar players @a
bossbar set lobbybar value 10
execute if score $gamestate CmdData matches 0.. run bossbar set lobbybar name [{"translate":"chat.confirm","color":"aqua","with":[{"translate":"chat.settings_map","color":"aqua"}]}]
execute if score $gamestate CmdData matches 0.. run function lobby:customizer/open
bossbar set lobbybar max 10
bossbar set lobbybar color blue

scoreboard players reset $DamageOrange CmdData
scoreboard players reset $DamagePurple CmdData
scoreboard players reset $CritOrange CmdData
scoreboard players reset $CritPurple CmdData
scoreboard players reset $OrangeWP CmdData
scoreboard players reset $PurpleWP CmdData

execute unless score $ShipHP CmdData matches 1000 unless score $ShipHP CmdData matches 1250 unless score $ShipHP CmdData matches 1500 unless score $ShipHP CmdData matches 2000 run scoreboard players set $ShipHP CmdData 42069
function lobby:customizer/updatesigns
scoreboard players reset @a[tag=ModiOwner] moditimer

kill @e[type=marker,tag=WeakpointLoc]
kill @e[type=marker,tag=Weakpoint]
execute as @e[type=slime,tag=Weakpoint] run function arenaclear:kill

execute as @e[type=item_display,tag=CannonDisp,tag=OnFire] at @s run function cannons:firering/extinguishcannon
scoreboard players set @e[type=item_display,tag=FireAnimation] firetime 399

scoreboard players set $WasAuto CmdData 0

scoreboard players set $orange hasArrows 0
scoreboard players set $purple hasArrows 0

#> Reset modifier effects
weather clear
scoreboard players reset $StormTime CmdData
scoreboard players reset $WindEffect CmdData
kill @e[type=drowned,tag=SharkEntity]
execute as @e[type=endermite,tag=CrabEntity] run function arenaclear:kill
execute as @e[type=cat,tag=CrabEntity] run function arenaclear:kill
kill @e[type=item_display,tag=CrabEntity]

#> Game timer
scoreboard players reset $gametime CmdData