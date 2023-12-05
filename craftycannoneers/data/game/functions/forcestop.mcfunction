scoreboard players set @e[type=marker,tag=joinpad] CmdData 0
title @a[tag=!inParkour] clear
tag @a[team=!Lobby,team=!Developer] add LeaveGame
scoreboard players set $WinningTeam CmdData 0
scoreboard players set $EndTime CmdData 0
scoreboard players set $barrier CmdData -1
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
execute if score $gamestate CmdData matches 0.. run bossbar set lobbybar name {"text":"Please confirm game settings at the Settings Map!","color":"aqua"}
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

tp @e[type=marker,tag=WeakpointLoc] 0 -1000 0
kill @e[type=marker,tag=WeakpointLoc]
tp @e[type=slime,tag=Weakpoint] 0 -1000 0
kill @e[type=#game:weakpoint,tag=Weakpoint]

execute as @e[type=armor_stand,tag=CannonDisp,tag=OnFire] at @s run function cannons:firering/extinguishcannon

scoreboard players set $WasAuto CmdData 0

scoreboard players set $orange hasArrows 0
scoreboard players set $purple hasArrows 0