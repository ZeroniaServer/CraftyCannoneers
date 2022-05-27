function lobby:customizer/open
scoreboard players set @e[tag=joinpad] CmdData 0
tag @a[team=!Lobby] add LeaveGame
scoreboard players set $WinningTeam CmdData 0
scoreboard players set $EndTime CmdData 0

gamerule fallDamage false

bossbar remove minecraft:purpleship
bossbar remove minecraft:orangeship

scoreboard players reset $DamageOrange CmdData
scoreboard players reset $DamagePurple CmdData

execute unless score $ShipHP CmdData matches 1000 unless score $ShipHP CmdData matches 1250 unless score $ShipHP CmdData matches 1500 unless score $ShipHP CmdData matches 2000 run scoreboard players set $ShipHP CmdData 42069
function lobby:customizer/updatesigns

tp @e[tag=WeakpointLoc] ~ ~-200 ~
kill @e[tag=Weakpoint]