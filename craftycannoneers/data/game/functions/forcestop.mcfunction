function lobby:customizer/open
tag @a[team=!Lobby] add LeaveGame
scoreboard players set $WinningTeam CmdData 0
scoreboard players set $EndTime CmdData 0

bossbar remove minecraft:purpleship
bossbar remove minecraft:orangeship

scoreboard players reset $DamageOrange CmdData
scoreboard players reset $DamagePurple CmdData