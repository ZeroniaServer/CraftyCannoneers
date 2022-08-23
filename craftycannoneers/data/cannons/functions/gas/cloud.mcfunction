scoreboard players add @s CmdData 1

execute at @s[scores={CmdData=1}] run playsound gas master @a ~ ~ ~ 1 0.8
execute at @s[scores={CmdData=1}] run summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["gascloud","GasAS"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:33}}]}
execute at @s[scores={CmdData=1}] run summon bat ~ ~2 ~ {Tags:["GasBat"],Silent:1b,Invulnerable:1b}
execute at @s[scores={CmdData=1}] run summon bat ~ ~2 ~ {Tags:["GasBat"],Silent:1b,Invulnerable:1b}
execute at @s[scores={CmdData=1}] run summon bat ~ ~2 ~ {Tags:["GasBat"],Silent:1b,Invulnerable:1b}
execute at @s[scores={CmdData=1}] run summon bat ~ ~2 ~ {Tags:["GasBat"],Silent:1b,Invulnerable:1b}
execute at @s[scores={CmdData=1}] run summon bat ~ ~2 ~ {Tags:["GasBat"],Silent:1b,Invulnerable:1b}

tp @s ~ ~0.002 ~
effect give @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] poison 6 100 true
effect give @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] nausea 10 3 true
effect give @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] blindness 2 0 true
tag @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] add NoRegen
effect clear @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] regeneration
scoreboard players reset @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] NoRegenTimer

execute at @s[scores={CmdData=243}] run data merge entity @e[type=armor_stand,tag=GasAS,limit=1,sort=nearest,distance=..1] {Small:1b}
execute at @s[scores={CmdData=250..}] run kill @e[type=armor_stand,tag=GasAS,limit=1,sort=nearest,distance=..1]
kill @s[scores={CmdData=250..}]

#> Explode
execute at @s[tag=GasExplode] run function cannons:gas/explode