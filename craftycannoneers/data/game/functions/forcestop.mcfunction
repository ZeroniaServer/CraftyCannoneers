schedule clear game:forcestop

function lobby:customizer/open
tag @a[team=!Lobby] add LeaveGame
scoreboard players set $WinningTeam CmdData 0
scoreboard players set $EndTime CmdData 0

bossbar remove minecraft:purpleship
bossbar remove minecraft:orangeship

scoreboard players reset $DamageOrange CmdData
scoreboard players reset $DamagePurple CmdData

execute unless score $ShipHP CmdData matches 1000 unless score $ShipHP CmdData matches 1250 unless score $ShipHP CmdData matches 1500 unless score $ShipHP CmdData matches 2000 run scoreboard players set $ShipHP CmdData 42069 