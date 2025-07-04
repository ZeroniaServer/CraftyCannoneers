#Global
tag @s add FireCannon
scoreboard players add @s cannonshot 1
execute at @s[scores={cannonshot=1}] run tag @e[type=interaction,tag=CannonVLeft,distance=..2,limit=1,sort=nearest] add GPLocked
execute at @s[scores={cannonshot=1}] run tag @e[type=interaction,tag=CannonVRight,distance=..2,limit=1,sort=nearest] add GPLocked
execute at @s[scores={cannonshot=1}] as @e[type=interaction,tag=GPLocked,distance=..2,limit=2,sort=nearest] run data modify entity @s response set value 0b
execute at @s[scores={cannonshot=1}] as @e[type=interaction,tag=CannonVMain,distance=..2,limit=1,sort=nearest] run data modify entity @s response set value 0b
execute at @s[scores={cannonshot=1}] run item replace entity @e[type=item_display,tag=GPDispR,distance=..2,limit=1,sort=nearest] container.0 with air
execute at @s[scores={cannonshot=1}] run item replace entity @e[type=item_display,tag=GPDispL,distance=..2,limit=1,sort=nearest] container.0 with air
execute at @s[scores={cannonshot=1}] run item replace entity @s container.0 with minecraft:diamond_hoe[custom_model_data={floats:[107.0f]}]
execute at @s[scores={cannonshot=1}] run playsound cannonload master @a ~ ~ ~ 1 1
execute at @s[scores={cannonshot=5}] run scoreboard players set @s cannonclaim 91
execute at @s[scores={cannonshot=30,CmdData=8}] run scoreboard players set @s cannonclaim 91
execute as @e[type=item_display,tag=CannonDisp,scores={cannonshot=30,CmdData=8}] if score @s playerUUID matches 0 run scoreboard players reset @e[type=item_display,tag=GPDispL,distance=..2,limit=1,sort=nearest] gpdisp_time
execute as @e[type=item_display,tag=CannonDisp,scores={cannonshot=30,CmdData=8}] if score @s playerUUID matches 0 run scoreboard players reset @e[type=item_display,tag=GPDispR,distance=..2,limit=1,sort=nearest] gpdisp_time
execute at @s[scores={cannonshot=2}] at @e[type=interaction,tag=CannonVLeft,limit=1,sort=nearest,distance=..2] run particle soul_fire_flame ^ ^0.2 ^-0.2 .02 0.05 .02 .003 1 normal @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=2}] at @e[type=interaction,tag=CannonVRight,limit=1,sort=nearest,distance=..2] run particle soul_fire_flame ^ ^0.2 ^-0.2 .02 0.05 .02 .003 1 normal @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=5..25}] at @e[type=interaction,tag=CannonVLeft,limit=1,sort=nearest,distance=..2] run particle flame ^ ^0.4 ^-0.2 .02 0.1 .02 .003 1 normal @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=5..25}] at @e[type=interaction,tag=CannonVRight,limit=1,sort=nearest,distance=..2] run particle flame ^ ^0.4 ^-0.2 .02 0.1 .02 .003 1 normal @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=26}] unless score @s CmdData matches 8 run particle explosion ^ ^2.1 ^2 0.1 0.1 0.1 0.1 3 force @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=26}] unless score @s CmdData matches 8 run particle flame ^ ^2.1 ^2 0.1 0.1 0.1 0.3 6 force @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=26}] unless score @s CmdData matches 8 run particle campfire_cosy_smoke ^ ^0.8 ^2 0.1 0.1 0.1 0.02 10 force @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=26}] unless score @s CmdData matches 8 run particle lava ^ ^2.1 ^2 0.1 0.1 0.1 0.02 10 force @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=28}] unless score @s CmdData matches 8 run tag @e[type=item_display,tag=CannonBarrel,limit=1,sort=nearest] add RecoilAnimation
execute at @s[scores={cannonshot=30}] unless score @s CmdData matches 8 run item replace entity @s container.0 with minecraft:diamond_hoe[custom_model_data={floats:[1.0f]}]
execute at @s[scores={cannonshot=30}] unless score @s CmdData matches 8 run summon marker ^ ^2 ^4 {Tags:["LightFlash","cannon"]}

execute at @s[scores={cannonshot=5}] store result score @s PowerL run scoreboard players get @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=5}] store result score @s PowerR run scoreboard players get @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=5}] store result score @s PowerM run scoreboard players operation @s PowerL += @s PowerR
execute at @s[scores={cannonshot=5}] store result score @s PowerV run scoreboard players operation @s PowerL += @s PowerR

execute at @s[scores={cannonshot=5,PowerM=1..7}] run playsound cannonprime master @a ~ ~ ~ 0.4 1.8
execute at @s[scores={cannonshot=5,PowerM=1..7}] run scoreboard players set @s cannonshot 25

execute at @s[scores={cannonshot=5,PowerM=8..9}] run playsound cannonprime master @a ~ ~ ~ 0.4 1.7
execute at @s[scores={cannonshot=5,PowerM=8..9}] run scoreboard players set @s cannonshot 10

execute at @s[scores={cannonshot=5,PowerM=10..}] run playsound cannonprime master @a ~ ~ ~ 0.4 1.6
execute at @s[scores={cannonshot=5..,PowerL=1..}] run scoreboard players reset @s PowerL
execute at @s[scores={cannonshot=5..,PowerR=1..}] run scoreboard players reset @s PowerR
execute at @s[scores={cannonshot=5..,PowerM=1..}] run scoreboard players reset @s PowerM
execute at @s[scores={cannonshot=5..,PowerV=1..}] run scoreboard players reset @s PowerV

#Normal Cannonball
execute at @s[scores={cannonshot=30..,CmdData=1}] run playsound cannonshot master @a ~ ~ ~ 6 1
execute at @s[scores={cannonshot=30..,CmdData=1}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=1}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","Cannonball","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=1}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","Cannonball","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=1}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","Cannonball","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Hot Cannonball
execute at @s[scores={cannonshot=26,CmdData=2}] run playsound cannonshot master @a ~ ~ ~ 6 0.85
execute at @s[scores={cannonshot=26,CmdData=2}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 0.85
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=2}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","HotCannonball","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=2}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","HotCannonball","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=2}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","HotCannonball","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[scores={cannonshot=26,CmdData=2}] run playsound fireshot master @a ~ ~ ~ 4 1

#Cannonball Cluster
execute at @s[scores={cannonshot=26,CmdData=3}] run playsound cannonshot master @a ~ ~ ~ 6 1.2
execute at @s[scores={cannonshot=26,CmdData=3}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.2
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","0","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","1","HLeft","Hit1","CSpread","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","2","HLeft","Hit1","CSpread","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","3","Hit1","HRight","CSpread","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","4","Hit1","HRight","CSpread","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","0","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","1","HLeft","CSpread","Hit1","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","2","HLeft","CSpread","Hit1","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","3","Hit1","CSpread","HRight","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","4","Hit1","CSpread","HRight","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","0","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","1","HLeft","Hit1","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","2","HLeft","Hit1","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","3","Hit1","HRight","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","4","Hit1","HRight","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[scores={cannonshot=30..,CmdData=3}] run tp @e[type=armor_stand,tag=CannonballCluster,distance=..1] @s
execute at @s[scores={cannonshot=30..,CmdData=3}] store result score @e[type=armor_stand,tag=CannonballCluster,distance=..1] PowerL run scoreboard players get @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..,CmdData=3}] store result score @e[type=armor_stand,tag=CannonballCluster,distance=..1] PowerR run scoreboard players get @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..,CmdData=3}] store result score @e[type=armor_stand,tag=CannonballCluster,distance=..1] PowerM run scoreboard players operation @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..,CmdData=3}] store result score @e[type=armor_stand,tag=CannonballCluster,distance=..1] PowerV run scoreboard players operation @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..,CmdData=3}] run tp @e[type=armor_stand,tag=CannonballCluster,tag=!Main,distance=..1] ^ ^2 ^3.6
execute at @s[scores={cannonshot=30..,CmdData=3}] run scoreboard players add @e[type=armor_stand,tag=CannonballCluster,tag=!Main,distance=..1] gravity 300
execute at @s[scores={cannonshot=26,CmdData=3}] run playsound cluster master @a ~ ~ ~ 4 1

#Gas Cannonball
execute at @s[scores={cannonshot=26,CmdData=4}] run playsound cannonshot master @a ~ ~ ~ 6 1.05
execute at @s[scores={cannonshot=26,CmdData=4}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.05
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=4}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GasCannonball","Hit1","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=4}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GasCannonball","Hit1","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=4}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GasCannonball","Hit1","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[scores={cannonshot=26,CmdData=4}] run playsound gasshot master @a ~ ~ ~ 4 1

#Chain Cannonball
execute at @s[scores={cannonshot=26,CmdData=5}] run playsound cannonshot master @a ~ ~ ~ 6 0.9
execute at @s[scores={cannonshot=26,CmdData=5}] run playsound cannonshot2 master @a ~ ~ ~ 4 0
execute at @s[scores={cannonshot=26,CmdData=5}] run playsound cannonshot2 master @a ~ ~ ~ 4 1
execute at @s[scores={cannonshot=26,CmdData=5}] run playsound cannonshot2 master @a ~ ~ ~ 4 1.3
execute at @s[scores={cannonshot=26,CmdData=5}] run playsound cannonshot2 master @a ~ ~ ~ 4 0.7
execute at @s[scores={cannonshot=26,CmdData=5}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 0.9
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=5}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","ChainCannonball","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=5}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","ChainCannonball","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=5}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","ChainCannonball","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Bouncy Cannonball
execute at @s[scores={cannonshot=26,CmdData=6}] run playsound cannonshot master @a ~ ~ ~ 6 1.1
execute at @s[scores={cannonshot=26,CmdData=6}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.1
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=6}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","BouncyCannonball","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=6}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","BouncyCannonball","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=6}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","BouncyCannonball","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[scores={cannonshot=26,CmdData=6}] run playsound bounceshot master @a ~ ~ ~ 4 1

#Player Cannonball
execute at @s[scores={cannonshot=26,CmdData=7}] run playsound cannonshot master @a ~ ~ ~ 6 1.3
execute at @s[scores={cannonshot=30,CmdData=7}] run playsound playershot master @a ~ ~ ~ 6.5 1
execute at @s[scores={cannonshot=26,CmdData=7}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.3
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=7}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","PlayerCannonball","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",Tags:["PCannonballhat","New"],Rotation:[0.0f,0.0f],item_display:"head",width:1.0f,height:1.0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.4875f,0.4875f,0.4875f],translation:[0.0f,0.9575f,-0.01f]}},{id:"minecraft:item_display",Tags:["PCannonballdeco","New"],Rotation:[180.0f,0.0f],transformation:{scale:[0.8,0.8,0.8],translation:[0.0,1.1,0.0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},Passengers:[{id:"minecraft:cow",Age:0,Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:1b,show_particles:0b}],DeathTime:17s,DeathLootTable:"minecraft:empty",Invulnerable:1b,NoAI:1b,Rotation:[0.0f,0.0f],Tags:["PCannonballname"]},{id:"minecraft:camel",Age:-2147483648,Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:1b,show_particles:0b}],DeathTime:17s,DeathLootTable:"minecraft:empty",Invulnerable:1b,NoAI:1b,Rotation:[0.0f,0.0f],Tags:["PCannonballSpecAnchor"],Passengers:[{id:"minecraft:item_display",Tags:["PCannonballSpec"],Rotation:[0.0f,0.0f]}]}]}]}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=7}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","PlayerCannonball","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",Tags:["PCannonballhat","New"],Rotation:[180.0f,0.0f],item_display:"head",width:1.0f,height:1.0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.4875f,0.4875f,0.4875f],translation:[0.0f,0.9575f,-0.01f]}},{id:"minecraft:item_display",Tags:["PCannonballdeco","New"],Rotation:[180.0f,0.0f],transformation:{scale:[0.8,0.8,0.8],translation:[0.0,1.1,0.0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},Passengers:[{id:"minecraft:cow",Age:0,Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:1b,show_particles:0b}],DeathTime:17s,DeathLootTable:"minecraft:empty",Invulnerable:1b,NoAI:1b,Rotation:[0.0f,0.0f],Tags:["PCannonballname"]},{id:"minecraft:camel",Age:-2147483648,Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:1b,show_particles:0b}],DeathTime:17s,DeathLootTable:"minecraft:empty",Invulnerable:1b,NoAI:1b,Rotation:[180.0f,0.0f],Tags:["PCannonballSpecAnchor"],Passengers:[{id:"minecraft:item_display",Tags:["PCannonballSpec"],Rotation:[180.0f,0.0f]}]}]}]}

#Tracer Cannonball
execute at @s[scores={cannonshot=30..,CmdData=8}] run particle explosion ^ ^2.1 ^2 0.1 0.1 0.1 0.1 3 force @a[tag=HoldTCB]
execute at @s[scores={cannonshot=30..,CmdData=8}] run particle flame ^ ^2.1 ^2 0.1 0.1 0.1 0.3 6 force @a[tag=HoldTCB]
execute at @s[scores={cannonshot=30..,CmdData=8}] run particle campfire_cosy_smoke ^ ^0.8 ^2 0.1 0.1 0.1 0.02 10 force @a[tag=HoldTCB]
execute at @s[scores={cannonshot=30..,CmdData=8}] run particle lava ^ ^2.1 ^2 0.1 0.1 0.1 0.02 10 force @a[tag=HoldTCB]
execute at @s[scores={cannonshot=30..,CmdData=8}] run playsound cannonshot master @a[tag=HoldTCB] ~ ~ ~ 0.7 2
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=8}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","TracerCannonball","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=8}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","TracerCannonball","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=8}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","TracerCannonball","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[scores={cannonshot=30..,CmdData=8}] run tag @s add RecentTracer
#execute at @s[scores={cannonshot=30..,CmdData=8}] run scoreboard players set @s[scores={cannonclaim=3..120}] cannonclaim 3

#Golden Cannonball
execute at @s[scores={cannonshot=30..,CmdData=9}] run playsound cannonshot master @a ~ ~ ~ 6 1
execute at @s[scores={cannonshot=30..,CmdData=9}] run playsound goldshot master @a ~ ~ ~ 4 1
execute at @s[scores={cannonshot=30..,CmdData=9}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=9}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GoldenCannonball","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=9}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GoldenCannonball","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=9}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GoldenCannonball","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Copper Cannonball
execute at @s[scores={cannonshot=30..,CmdData=10}] run playsound cannonshot master @a ~ ~ ~ 6 1.1
execute at @s[scores={cannonshot=30..,CmdData=10}] run playsound shockshot master @a ~ ~ ~ 4 1
execute at @s[scores={cannonshot=30..,CmdData=10}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.1
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=10}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CopperCannonball","NewCannonball","Hit1"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=10}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CopperCannonball","NewCannonball","Hit1"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=10}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CopperCannonball","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Global
scoreboard players operation @e[type=armor_stand,tag=NewCannonball] playerUUID = @s playerUUID
execute as @e[type=armor_stand,tag=NewCannonball] at @s run function cannons:namecannonball
scoreboard players operation @e[type=armor_stand,tag=NewCannonball] drag = @s drag
scoreboard players operation @e[type=armor_stand,tag=NewCannonball] gravity = @s gravity
execute as @e[type=armor_stand,tag=CannonballCluster,tag=NewCannonball,tag=!0,tag=!clusteracc] at @s run function cannons:clusteraccuracy
execute as @e[type=armor_stand,tag=ChainCannonball,tag=NewCannonball,tag=!chainacc] at @s run function cannons:chainaccuracy
tag @e[type=armor_stand,tag=NewCannonball,tag=!ChainCannonball] add AccuracySet

tag @e[type=armor_stand,tag=NewCannonball] remove NewCannonball

execute at @s[scores={cannonshot=30..}] run tp @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] @s
execute at @s[scores={cannonshot=30..}] store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerL run scoreboard players get @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..}] store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerR run scoreboard players get @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..}] store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerM run scoreboard players operation @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..}] store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerV run scoreboard players operation @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData

execute at @s[scores={cannonshot=30..,CmdData=8}] run scoreboard players operation @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData -= @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..,CmdData=8}] run scoreboard players operation @e[type=item_display,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData -= @e[type=item_display,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData

execute at @s[scores={cannonshot=30..}] run tp @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] ^ ^2 ^3.6

#> End Fire Cannon
execute at @s[scores={cannonshot=30..}] unless score @s CmdData matches 8 run scoreboard players set @e[type=item_display,tag=GPDispL,distance=..2,limit=1,sort=nearest] CmdData 0
execute at @s[scores={cannonshot=30..}] unless score @s CmdData matches 8 run scoreboard players set @e[type=item_display,tag=GPDispR,distance=..2,limit=1,sort=nearest] CmdData 0
execute at @s[scores={cannonshot=30..}] as @e[type=interaction,tag=GPLocked,distance=..2,limit=2,sort=nearest] run data modify entity @s response set value 1b
execute at @s[scores={cannonshot=30..}] as @e[type=interaction,tag=CannonVMain,distance=..2,limit=1,sort=nearest] run data modify entity @s response set value 1b
execute at @s[scores={cannonshot=30..}] run tag @e[type=interaction,tag=CannonVLeft,tag=GPLocked,distance=..2,limit=1,sort=nearest] remove GPLocked
execute at @s[scores={cannonshot=30..}] run tag @e[type=interaction,tag=CannonVRight,tag=GPLocked,distance=..2,limit=1,sort=nearest] remove GPLocked
execute at @s[scores={cannonshot=30..}] run function cannons:updategp
scoreboard players set @s[scores={cannonshot=30..}] CmdData 0
tag @s[scores={cannonshot=30..}] remove FireCannon

scoreboard players set @s[tag=!FireCannon,tag=!RecentTracer,scores={cannonshot=30..}] playerUUID 0
scoreboard players reset @s[tag=!FireCannon,scores={cannonshot=30..}] cannonshot