scoreboard players add @e[type=marker,tag=GasCloud] CmdData 1
scoreboard players add @e[type=armor_stand,tag=GasAS] CmdData 1
execute as @e[type=marker,tag=GasCloud,scores={CmdData=1}] at @s run playsound minecraft:gas master @a ~ ~ ~ 1 0.8
execute as @e[type=marker,tag=GasCloud,scores={CmdData=1}] at @s run summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["gascloud","GasAS"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:33}}]}
execute as @e[type=armor_stand,tag=GasAS,scores={CmdData=8}] run data merge entity @s {Small:0b}
execute as @e[type=armor_stand,tag=GasAS,scores={CmdData=1}] at @s run playsound minecraft:gas master @a ~ ~ ~ 1 1.3
execute as @e[type=armor_stand,tag=GasAS,scores={CmdData=6}] at @s run playsound minecraft:gasshot master @a ~ ~ ~ 1 1.3
execute as @e[type=armor_stand,tag=GasAS,scores={CmdData=12}] at @s run playsound minecraft:gas master @a ~ ~ ~ 0.4 1.5
scoreboard players set @e[type=armor_stand,tag=GasAS,scores={CmdData=13..}] CmdData 11
execute as @e[type=marker,tag=GasCloud,scores={CmdData=1}] at @s run summon bat ~ ~2 ~ {Tags:["GasBat"],Silent:1b,Invulnerable:1b}
execute as @e[type=marker,tag=GasCloud,scores={CmdData=1}] at @s run summon bat ~ ~2 ~ {Tags:["GasBat"],Silent:1b,Invulnerable:1b}
execute as @e[type=marker,tag=GasCloud,scores={CmdData=1}] at @s run summon bat ~ ~2 ~ {Tags:["GasBat"],Silent:1b,Invulnerable:1b}
execute as @e[type=marker,tag=GasCloud,scores={CmdData=1}] at @s run summon bat ~ ~2 ~ {Tags:["GasBat"],Silent:1b,Invulnerable:1b}
execute as @e[type=marker,tag=GasCloud,scores={CmdData=1}] at @s run summon bat ~ ~2 ~ {Tags:["GasBat"],Silent:1b,Invulnerable:1b}

execute as @e[type=armor_stand,tag=GasAS] at @s run particle dust 0 1 0.2 2 ~ ~1 ~ 1.2 0.5 1.3 0.2 9 force
execute as @e[type=armor_stand,tag=GasAS] at @s run particle dust 0 1 0.6 2 ~ ~1 ~ 1 1 1 0.2 5 force
execute as @e[type=armor_stand,tag=GasAS] at @s run particle minecraft:soul ~ ~ ~ 1.5 1.2 1.5 0.05 6 force
execute as @e[type=armor_stand,tag=GasAS] at @s run tp @s ~ ~0.002 ~
execute as @e[type=marker,tag=GasCloud] at @s run tp @s ~ ~0.002 ~

execute as @e[type=marker,tag=GasCloud] at @s run effect give @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] poison 6 100 true
execute as @e[type=marker,tag=GasCloud] at @s run effect give @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] nausea 10 3 true
execute as @e[type=marker,tag=GasCloud] at @s run effect give @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] blindness 2 0 true
execute as @e[type=marker,tag=GasCloud] at @s run tag @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] add NoRegen
execute as @e[type=marker,tag=GasCloud] at @s run effect clear @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] regeneration
execute as @e[type=marker,tag=GasCloud] at @s run scoreboard players reset @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] NoRegenTimer

execute as @e[type=armor_stand,tag=GasBubble] at @s run effect give @a[distance=..3,team=!Lobby,team=!Spectator,team=!Developer] poison 6 100 true
execute as @e[type=armor_stand,tag=GasBubble] at @s run effect give @a[distance=..3,team=!Lobby,team=!Spectator,team=!Developer] nausea 10 3 true
execute as @e[type=armor_stand,tag=GasBubble] at @s run effect give @a[distance=..3,team=!Lobby,team=!Spectator,team=!Developer] blindness 2 0 true
execute as @e[type=armor_stand,tag=GasBubble] at @s run effect clear @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] regeneration
execute as @e[type=armor_stand,tag=GasBubble] at @s run tag @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] add NoRegen
execute as @e[type=armor_stand,tag=GasBubble] at @s run scoreboard players reset @a[distance=..3.5,gamemode=!spectator,team=!Lobby,team=!Spectator,team=!Developer] NoRegenTimer

execute as @e[type=marker,tag=GasCloud,scores={CmdData=243}] at @s run data merge entity @e[type=armor_stand,tag=GasAS,limit=1,sort=nearest,distance=..1] {Small:1b}
execute as @e[type=marker,tag=GasCloud,scores={CmdData=250..}] at @s run kill @e[type=armor_stand,tag=GasAS,limit=1,sort=nearest,distance=..1]
execute as @e[type=marker,tag=GasCloud,scores={CmdData=250..}] at @s run kill @s

execute as @e[type=armor_stand,tag=GasAS] at @s unless entity @e[type=marker,tag=GasCloud,distance=..1] run kill @s

#> No Natural Regeneration timer
tag @a[team=!Purple,team=!Orange] remove NoRegen
scoreboard players add @a[tag=NoRegen] NoRegenTimer 1
effect clear @a[tag=NoRegen] regeneration
tag @a[tag=NoRegen,scores={NoRegenTimer=120..}] remove NoRegen
scoreboard players reset @a[tag=!NoRegen,scores={NoRegenTimer=1..}] NoRegenTimer

#> Hot Cannonball interaction
execute as @e[type=marker,tag=GasExplode] at @s run kill @e[type=armor_stand,tag=GasAS,distance=..1,limit=1,sort=nearest]
execute as @e[type=marker,tag=GasExplode] at @s run summon marker ~ ~ ~ {Tags:["ImpactMarker","GasPower"],CustomName:'{"text":"a Gas Explosion"}'}
execute as @e[type=marker,tag=GasExplode] at @s run scoreboard players operation @e[type=marker,tag=ImpactMarker,tag=GasPower,limit=1,sort=nearest] playerUUID = @s playerUUID
execute as @e[type=marker,tag=ImpactMarker,tag=GasPower] at @s unless entity @s[scores={CmdData=1..}] run function cannons:namecannonball
execute as @e[type=marker,tag=ImpactMarker,tag=GasPower] at @s unless entity @s[scores={CmdData=1..}] run function cannons:spawncreeper
execute as @e[type=marker,tag=GasExplode] at @s run particle flame ~ ~ ~ 2 2 2 1 150 force
execute as @e[type=marker,tag=GasExplode] at @s run particle flash ~ ~ ~ 0.1 0.1 0.1 0 4 force
execute as @e[type=marker,tag=GasExplode] at @s run particle large_smoke ~ ~ ~ 2 2 2 0.7 200 force
execute as @e[type=marker,tag=GasExplode] at @s run particle lava ~ ~ ~ 1 1 1 1 60 force
execute as @e[type=marker,tag=GasExplode] at @s run particle explosion_emitter ~ ~ ~ 1.5 1 1.5 1 5 force
execute as @e[type=marker,tag=GasExplode,predicate=cannons:ships/purple] at @s run scoreboard players add $DamagePurple CmdData 15
execute as @e[type=marker,tag=GasExplode,predicate=cannons:ships/purple] at @s run scoreboard players add $CritPurple CmdData 15
execute as @e[type=marker,tag=GasExplode,predicate=cannons:ships/orange] at @s run scoreboard players add $DamageOrange CmdData 15
execute as @e[type=marker,tag=GasExplode,predicate=cannons:ships/orange] at @s run scoreboard players add $CritOrange CmdData 15
execute as @e[type=marker,tag=GasExplode] at @s run function cannons:gas/hitmarker
execute as @e[type=marker,tag=GasExplode] at @s run summon minecraft:lightning_bolt ~ ~300000 ~
execute as @e[type=marker,tag=GasExplode] at @s run playsound gasexplode master @a ~ ~ ~ 4 1
execute as @e[type=marker,tag=GasExplode] at @s run playsound gasexplode_distant master @a[distance=15..] ~ ~ ~ 8 1
execute as @e[type=marker,tag=GasExplode] at @s run kill @s

#> Bubbles
scoreboard players add @e[type=bat,tag=GasBat] CmdData 1

execute as @e[type=bat,tag=GasBat] at @s run particle soul ~ ~ ~ 0 0 0 0.03 1 force
execute as @e[type=bat,tag=GasBat,scores={CmdData=15..}] at @s unless entity @e[type=armor_stand,tag=GasAS,distance=..3] unless entity @e[type=armor_stand,tag=GasBubble,tag=!New,distance=..2] run summon armor_stand ~ ~ ~ {Tags:["GasBubble","New"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:64}}],Silent:1b,Invulnerable:1b,DisabledSlots:4144959,Small:1b}
execute as @e[type=armor_stand,tag=GasBubble,tag=New] at @s run tp @s @e[type=bat,tag=GasBat,limit=1,sort=nearest,distance=..2]
execute as @e[type=bat,tag=GasBat,scores={CmdData=15..}] at @s unless entity @e[type=armor_stand,tag=GasAS,distance=..3] unless entity @e[type=armor_stand,tag=GasBubble,tag=!New,distance=..2] run kill @s
tag @e[type=armor_stand,tag=GasBubble,tag=New] remove New
scoreboard players add @e[type=armor_stand,tag=GasBubble] CmdData 1
execute as @e[type=armor_stand,tag=GasBubble,scores={CmdData=7}] at @s run data merge entity @s {NoGravity:1b,Marker:1b,Small:0b}
execute as @e[type=armor_stand,tag=GasBubble,tag=!New,scores={CmdData=8..}] at @s run tp @s ~ ~0.003 ~
execute as @e[type=armor_stand,tag=GasBubble,tag=!New,scores={CmdData=8..}] at @s run tp @s ^ ^ ^0.006
execute as @e[type=armor_stand,tag=GasBubble] at @s run particle soul ~ ~0.7 ~ 0.3 0.3 0.3 0.03 1 force
scoreboard players add @e[type=armor_stand,tag=GasBubble,tag=!New,scores={CmdData=8..}] CmdData 1

execute as @e[type=armor_stand,tag=GasBubble,tag=!New,scores={CmdData=490}] run data merge entity @s {Small:1b}
execute as @e[type=armor_stand,tag=GasBubble,tag=!New,scores={CmdData=500..}] run kill @s