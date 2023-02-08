execute at @s[tag=GasIgnite] at @s run function cannons:firering/ignitebubble

execute at @s[tag=New] run tp @s @e[type=bat,tag=GasBat,limit=1,sort=nearest,distance=..2]

tag @s[tag=New] remove New
scoreboard players add @s CmdData 1
execute at @s[scores={CmdData=7}] run data merge entity @s {NoGravity:1b,Marker:1b,Small:0b}
execute at @s[tag=!New,scores={CmdData=8..}] run tp @s ~ ~0.003 ~
execute at @s[tag=!New,scores={CmdData=8..}] run tp @s ^ ^ ^0.006
execute at @s run particle soul ~ ~0.7 ~ 0.3 0.3 0.3 0.03 1 force
scoreboard players add @s[tag=!New,scores={CmdData=8..}] CmdData 1

data merge entity @s[tag=!New,scores={CmdData=490}] {Small:1b}
kill @s[tag=!New,scores={CmdData=500..}]

execute at @s run function cannons:gas/chase

execute at @s run effect give @a[distance=..3,team=!Lobby,team=!Spectator,team=!Developer] poison 6 100 true
execute at @s run effect give @a[distance=..3,team=!Lobby,team=!Spectator,team=!Developer] nausea 10 3 true
execute at @s run effect give @a[distance=..3,team=!Lobby,team=!Spectator,team=!Developer] blindness 2 0 true
execute at @s run effect clear @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] regeneration
execute at @s run tag @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] add NoRegen
execute at @s run scoreboard players reset @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] NoRegenTimer