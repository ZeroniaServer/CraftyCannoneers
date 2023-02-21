scoreboard players add @s CmdData 1
execute at @s[type=marker,tag=North] run tp @s ~ ~ ~-1
execute at @s[type=marker,tag=East] run tp @s ~1 ~ ~
execute at @s[type=marker,tag=South] run tp @s ~ ~ ~1
execute at @s[type=marker,tag=West] run tp @s ~-1 ~ ~
execute at @s[type=marker,tag=BarrelMaxFX,tag=NS,scores={CmdData=1..7}] run particle dust 1 0 0 1 ~ ~1 ~ 0 2 4 0 10 force @a[team=!Lobby]
execute at @s[type=marker,tag=BarrelMaxFX,tag=NS,scores={CmdData=1..7}] run particle explosion ~ ~ ~ 0 2 4 0 10 force @a[team=!Lobby]
execute at @s[type=marker,tag=BarrelMaxFX,tag=NS,scores={CmdData=8..}] run particle dust 1 0 0 1 ~ ~1 ~ 0 1 4 0 4 force @a[team=!Lobby]
execute at @s[type=marker,tag=BarrelMaxFX,tag=NS,scores={CmdData=8..}] run particle explosion ~ ~ ~ 0 1 4 0 4 force @a[team=!Lobby]
execute at @s[type=marker,tag=BarrelMaxFX,tag=NS,scores={CmdData=1..}] run particle sweep_attack ~ ~ ~ 0.5 0 4 0 5 force @a[team=!Lobby]

execute at @s[type=marker,tag=BarrelMaxFX,tag=EW,scores={CmdData=1..7}] run particle dust 1 0 0 1 ~ ~1 ~ 4 2 0 0 10 force @a[team=!Lobby]
execute at @s[type=marker,tag=BarrelMaxFX,tag=EW,scores={CmdData=1..7}] run particle explosion ~ ~ ~ 4 2 0 0 10 force @a[team=!Lobby]
execute at @s[type=marker,tag=BarrelMaxFX,tag=EW,scores={CmdData=8..}] run particle dust 1 0 0 1 ~ ~1 ~ 4 1 0 0 4 force @a[team=!Lobby]
execute at @s[type=marker,tag=BarrelMaxFX,tag=EW,scores={CmdData=8..}] run particle explosion ~ ~ ~ 4 1 0 0 4 force @a[team=!Lobby]
execute at @s[type=marker,tag=BarrelMaxFX,tag=EW,scores={CmdData=1..}] run particle sweep_attack ~ ~ ~ 4 0 0.5 0 5 force @a[team=!Lobby]
kill @s[scores={CmdData=12..}]