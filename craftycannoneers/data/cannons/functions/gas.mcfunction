scoreboard players add @e[tag=GasCloud] CmdData 1
scoreboard players add @e[tag=GasAS] CmdData 1
execute as @e[tag=GasCloud,scores={CmdData=1}] at @s run playsound minecraft:gas master @a ~ ~ ~ 1 0.8
execute as @e[tag=GasCloud,scores={CmdData=1}] at @s run summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["gascloud","GasAS"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:33}}]}
execute as @e[tag=GasAS,scores={CmdData=8}] run data merge entity @s {Small:0b}
execute as @e[tag=GasAS,scores={CmdData=1}] at @s run playsound minecraft:gas master @a ~ ~ ~ 1 1.3
execute as @e[tag=GasAS,scores={CmdData=6}] at @s run playsound minecraft:gasshot master @a ~ ~ ~ 1 1.3
execute as @e[tag=GasAS,scores={CmdData=12}] at @s run playsound minecraft:gas master @a ~ ~ ~ 0.4 1.5
scoreboard players set @e[tag=GasAS,scores={CmdData=13..}] CmdData 11

execute as @e[tag=GasAS] at @s run particle dust 0 1 0.2 2 ~ ~1 ~ 1.2 0.5 1.3 0.2 9 force
execute as @e[tag=GasAS] at @s run particle dust 0 1 0.6 2 ~ ~1 ~ 1 1 1 0.2 5 force
execute as @e[tag=GasAS] at @s run particle minecraft:soul ~ ~ ~ 1.5 1.2 1.5 0.05 6 force
execute as @e[tag=GasAS] at @s run tp @s ~ ~0.005 ~
execute as @e[tag=GasCloud] at @s run tp @s ~ ~0.005 ~

execute as @e[tag=GasCloud] at @s run effect give @a[distance=..3.5,team=!Lobby,team=!Spectator] poison 6 100 true
execute as @e[tag=GasCloud] at @s run effect give @a[distance=..3.5,team=!Lobby,team=!Spectator] nausea 7 3 true

execute as @e[tag=GasCloud,scores={CmdData=243}] at @s run data merge entity @e[tag=GasAS,limit=1,sort=nearest,distance=..1] {Small:1b}
execute as @e[tag=GasCloud,scores={CmdData=250..}] at @s run kill @e[tag=GasAS,limit=1,sort=nearest,distance=..1]
execute as @e[tag=GasCloud,scores={CmdData=250..}] at @s run kill @s

execute as @e[tag=GasAS] at @s unless entity @e[tag=GasCloud,distance=..1] run kill @s

#> Hot Cannonball interaction
execute as @e[tag=GasExplode] at @s run kill @e[tag=GasAS,distance=..1,limit=1,sort=nearest]
execute as @e[tag=GasExplode] at @s run summon marker ~ ~ ~ {Tags:["ImpactMarker","GasPower"]}
execute as @e[tag=ImpactMarker,tag=GasPower] at @s unless entity @s[scores={CmdData=1..}] run function cannons:spawncreeper
execute as @e[tag=GasExplode] at @s run particle flame ~ ~ ~ 2 2 2 1 150 force
execute as @e[tag=GasExplode] at @s run particle flash ~ ~ ~ 0.1 0.1 0.1 0 4 force
execute as @e[tag=GasExplode] at @s run particle large_smoke ~ ~ ~ 2 2 2 0.7 200 force
execute as @e[tag=GasExplode] at @s run particle lava ~ ~ ~ 1 1 1 1 60 force
execute as @e[tag=GasExplode] at @s run kill @s