execute at @s[tag=GasIgnite] at @s run function cannons:firering/ignitebubble

scoreboard players add @s CmdData 1
execute if entity @s[scores={CmdData=7}] run function cannons:gas/randomsize
execute at @s[scores={CmdData=8..}] run tp @s ~ ~0.003 ~
execute at @s[scores={CmdData=8..}] facing ^ ^ ^0.006 run tp @s ^ ^ ^0.006 ~ ~
execute at @s run particle soul ~ ~ ~ 0.3 0.3 0.3 0.03 1 force @a[predicate=cannons:seeparticles]
scoreboard players add @s[scores={CmdData=8..}] CmdData 1

data merge entity @s[scores={CmdData=489}] {start_interpolation:0,interpolation_duration:6,transformation:{scale:[0f,0f,0f],translation:[0f,0f,0f]}}
kill @s[scores={CmdData=500..}]

execute at @s run function cannons:gas/chase

execute at @s run effect give @a[distance=..3,team=!Lobby,team=!Spectator,team=!Developer] poison 6 100 true
execute at @s run effect give @a[distance=..3,team=!Lobby,team=!Spectator,team=!Developer] nausea 10 3 true
execute at @s run effect give @a[distance=..3,team=!Lobby,team=!Spectator,team=!Developer] blindness 2 0 true
execute at @s run effect clear @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] regeneration
execute at @s run tag @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] add NoRegen
execute at @s run scoreboard players reset @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] NoRegenTimer