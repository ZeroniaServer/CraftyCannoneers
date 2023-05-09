#Global
tag @s add FireCannon
scoreboard players add @s cannonshot 1
execute at @s[scores={cannonshot=1}] run tag @e[type=villager,tag=CannonVLeft,distance=..2,limit=1,sort=nearest] add GPLocked
execute at @s[scores={cannonshot=1}] run tag @e[type=villager,tag=CannonVRight,distance=..2,limit=1,sort=nearest] add GPLocked
execute at @s[scores={cannonshot=1}] run item replace entity @e[type=armor_stand,tag=GPDispR,distance=..2,limit=1,sort=nearest] armor.head with air
execute at @s[scores={cannonshot=1}] run item replace entity @e[type=armor_stand,tag=GPDispL,distance=..2,limit=1,sort=nearest] armor.head with air
execute at @s[scores={cannonshot=1}] run item replace entity @s armor.head with diamond_hoe{CustomModelData:107}
execute at @s[scores={cannonshot=1}] run playsound cannonload master @a ~ ~ ~ 1 1
execute at @s[scores={cannonshot=5}] run scoreboard players set @s cannonclaim 91
execute at @s[scores={cannonshot=30,CmdData=8}] run scoreboard players set @s cannonclaim 91
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonshot=30,CmdData=8}] if score @s playerUUID matches 0 run scoreboard players reset @e[type=armor_stand,tag=GPDispL,distance=..2,limit=1,sort=nearest] gpdisp_time
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonshot=30,CmdData=8}] if score @s playerUUID matches 0 run scoreboard players reset @e[type=armor_stand,tag=GPDispR,distance=..2,limit=1,sort=nearest] gpdisp_time
execute at @s[scores={cannonshot=2}] at @e[type=villager,tag=CannonVLeft,limit=1,sort=nearest,distance=..2] run particle soul_fire_flame ^ ^0.5 ^-0.2 .02 0.05 .02 .003 1 normal @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=2}] at @e[type=villager,tag=CannonVRight,limit=1,sort=nearest,distance=..2] run particle soul_fire_flame ^ ^0.5 ^-0.2 .02 0.05 .02 .003 1 normal @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=5..25}] at @e[type=villager,tag=CannonVLeft,limit=1,sort=nearest,distance=..2] run particle flame ^ ^0.7 ^-0.2 .02 0.1 .02 .003 1 normal @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=5..25}] at @e[type=villager,tag=CannonVRight,limit=1,sort=nearest,distance=..2] run particle flame ^ ^0.7 ^-0.2 .02 0.1 .02 .003 1 normal @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=26}] unless score @s CmdData matches 8 run particle explosion ^ ^2.1 ^2 0.1 0.1 0.1 0.1 3 force @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=26}] unless score @s CmdData matches 8 run particle flame ^ ^2.1 ^2 0.1 0.1 0.1 0.3 6 force @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=26}] unless score @s CmdData matches 8 run particle campfire_cosy_smoke ^ ^0.8 ^2 0.1 0.1 0.1 0.02 10 force @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=26}] unless score @s CmdData matches 8 run particle lava ^ ^2.1 ^2 0.1 0.1 0.1 0.02 10 force @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=28}] unless score @s CmdData matches 8 run item replace entity @s armor.head with diamond_hoe{CustomModelData:62}
execute at @s[scores={cannonshot=29}] unless score @s CmdData matches 8 run item replace entity @s armor.head with diamond_hoe{CustomModelData:63}
execute at @s[scores={cannonshot=30}] unless score @s CmdData matches 8 run item replace entity @s armor.head with diamond_hoe{CustomModelData:1}
execute at @s[scores={cannonshot=30}] unless score @s CmdData matches 8 run summon marker ^ ^2 ^4 {Tags:["LightFlash","cannon"]}

execute at @s[scores={cannonshot=5}] store result score @s PowerL run scoreboard players get @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=5}] store result score @s PowerR run scoreboard players get @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData
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
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=1}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","Cannonball","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=1}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","Cannonball","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=1}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","Cannonball","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}

#Hot Cannonball
execute at @s[scores={cannonshot=26,CmdData=2}] run playsound cannonshot master @a ~ ~ ~ 6 0.85
execute at @s[scores={cannonshot=26,CmdData=2}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 0.85
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=2}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","HotCannonball","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=2}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","HotCannonball","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=2}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","HotCannonball","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[scores={cannonshot=26,CmdData=2}] run playsound fireshot master @a ~ ~ ~ 4 1

#Cannonball Cluster
execute at @s[scores={cannonshot=26,CmdData=3}] run playsound cannonshot master @a ~ ~ ~ 6 1.2
execute at @s[scores={cannonshot=26,CmdData=3}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.2
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","0","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","1","HLeft","Hit1","CSpread","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","2","HLeft","Hit1","CSpread","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","3","Hit1","HRight","CSpread","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","4","Hit1","HRight","CSpread","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","0","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","1","HLeft","CSpread","Hit1","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","2","HLeft","CSpread","Hit1","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","3","Hit1","CSpread","HRight","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","4","Hit1","CSpread","HRight","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","0","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","1","HLeft","Hit1","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","2","HLeft","Hit1","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","3","Hit1","HRight","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=3}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","4","Hit1","HRight","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[scores={cannonshot=30..,CmdData=3}] run tp @e[type=armor_stand,tag=CannonballCluster,distance=..1] @s
execute at @s[scores={cannonshot=30..,CmdData=3}] store result score @e[type=armor_stand,tag=CannonballCluster,distance=..1] PowerL run scoreboard players get @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..,CmdData=3}] store result score @e[type=armor_stand,tag=CannonballCluster,distance=..1] PowerR run scoreboard players get @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..,CmdData=3}] store result score @e[type=armor_stand,tag=CannonballCluster,distance=..1] PowerM run scoreboard players operation @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..,CmdData=3}] store result score @e[type=armor_stand,tag=CannonballCluster,distance=..1] PowerV run scoreboard players operation @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..,CmdData=3}] run tp @e[type=armor_stand,tag=CannonballCluster,tag=!Main,distance=..1] ^ ^2 ^3.6
execute at @s[scores={cannonshot=30..,CmdData=3}] run scoreboard players add @e[type=armor_stand,tag=CannonballCluster,tag=!Main,distance=..1] gravity 300
execute at @s[scores={cannonshot=26,CmdData=3}] run playsound cluster master @a ~ ~ ~ 4 1

#Gas Cannonball
execute at @s[scores={cannonshot=26,CmdData=4}] run playsound cannonshot master @a ~ ~ ~ 6 1.05
execute at @s[scores={cannonshot=26,CmdData=4}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.05
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=4}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GasCannonball","Hit1","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=4}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GasCannonball","Hit1","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=4}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GasCannonball","Hit1","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[scores={cannonshot=26,CmdData=4}] run playsound gasshot master @a ~ ~ ~ 4 1

#Chain Cannonball
execute at @s[scores={cannonshot=26,CmdData=5}] run playsound cannonshot master @a ~ ~ ~ 6 0.9
execute at @s[scores={cannonshot=26,CmdData=5}] run playsound cannonshot2 master @a ~ ~ ~ 4 0
execute at @s[scores={cannonshot=26,CmdData=5}] run playsound cannonshot2 master @a ~ ~ ~ 4 1
execute at @s[scores={cannonshot=26,CmdData=5}] run playsound cannonshot2 master @a ~ ~ ~ 4 1.3
execute at @s[scores={cannonshot=26,CmdData=5}] run playsound cannonshot2 master @a ~ ~ ~ 4 0.7
execute at @s[scores={cannonshot=26,CmdData=5}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 0.9
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=5}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","ChainCannonball","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Small:1b,Tags:["ChainAnchor"]}]}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=5}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","ChainCannonball","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Small:1b,Tags:["ChainAnchor"]}]}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=5}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","ChainCannonball","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Small:1b,Tags:["ChainAnchor"]}]}

#Bouncy Cannonball
execute at @s[scores={cannonshot=26,CmdData=6}] run playsound cannonshot master @a ~ ~ ~ 6 1.1
execute at @s[scores={cannonshot=26,CmdData=6}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.1
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=6}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","BouncyCannonball","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=6}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","BouncyCannonball","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=6}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","BouncyCannonball","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[scores={cannonshot=26,CmdData=6}] run playsound bounceshot master @a ~ ~ ~ 4 1

#Player Cannonball
execute at @s[scores={cannonshot=26,CmdData=7}] run playsound cannonshot master @a ~ ~ ~ 6 1.3
execute at @s[scores={cannonshot=30,CmdData=7}] run playsound playershot master @a ~ ~ ~ 6.5 1
execute at @s[scores={cannonshot=26,CmdData=7}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.3
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=7}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","PlayerCannonball","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:armor_stand",Tags:["PCannonballdeco","New"],Rotation:[0.0f,0.0f],Marker:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:1b,NoAI:1b,Size:1,Rotation:[0.0f,0.0f],Tags:["PCannonballname","New"]}]}]}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=7}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","PlayerCannonball","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:armor_stand",Tags:["PCannonballdeco","New"],Rotation:[180.0f,0.0f],Marker:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:1b,NoAI:1b,Size:1,Rotation:[180.0f,0.0f],Tags:["PCannonballname","New"]}]}]}
# execute at @s[scores={cannonshot=30..,CmdData=7}] as @e[type=armor_stand,tag=PCannonballdeco] run tp @s @e[type=armor_stand,tag=PlayerCannonball,limit=1,sort=nearest]

#Tracer Cannonball
execute at @s[scores={cannonshot=30..,CmdData=8}] run particle explosion ^ ^2.1 ^2 0.1 0.1 0.1 0.1 3 force @a[tag=HoldTCB]
execute at @s[scores={cannonshot=30..,CmdData=8}] run particle flame ^ ^2.1 ^2 0.1 0.1 0.1 0.3 6 force @a[tag=HoldTCB]
execute at @s[scores={cannonshot=30..,CmdData=8}] run particle campfire_cosy_smoke ^ ^0.8 ^2 0.1 0.1 0.1 0.02 10 force @a[tag=HoldTCB]
execute at @s[scores={cannonshot=30..,CmdData=8}] run particle lava ^ ^2.1 ^2 0.1 0.1 0.1 0.02 10 force @a[tag=HoldTCB]
execute at @s[scores={cannonshot=30..,CmdData=8}] run playsound cannonshot master @a[tag=HoldTCB] ~ ~ ~ 0.7 2
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=8}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","TracerCannonball","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=8}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","TracerCannonball","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=8}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","TracerCannonball","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[scores={cannonshot=30..,CmdData=8}] run tag @s add RecentTracer
#execute at @s[scores={cannonshot=30..,CmdData=8}] run scoreboard players set @s[scores={cannonclaim=3..120}] cannonclaim 3

#Golden Cannonball
execute at @s[scores={cannonshot=30..,CmdData=9}] run playsound cannonshot master @a ~ ~ ~ 6 1
execute at @s[scores={cannonshot=30..,CmdData=9}] run playsound goldshot master @a ~ ~ ~ 4 1
execute at @s[scores={cannonshot=30..,CmdData=9}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=9}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GoldenCannonball","NewCannonball"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=9}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GoldenCannonball","NewCannonball"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=9}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GoldenCannonball","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}

#Copper Cannonball
execute at @s[scores={cannonshot=30..,CmdData=10}] run playsound cannonshot master @a ~ ~ ~ 6 1.1
execute at @s[scores={cannonshot=30..,CmdData=10}] run playsound shockshot master @a ~ ~ ~ 4 1
execute at @s[scores={cannonshot=30..,CmdData=10}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.1
execute at @s[tag=Purple,scores={cannonshot=30..,CmdData=10}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CopperCannonball","NewCannonball","Hit1"],Rotation:[0.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=Orange,scores={cannonshot=30..,CmdData=10}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CopperCannonball","NewCannonball","Hit1"],Rotation:[180.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute at @s[tag=!Purple,tag=!Orange,scores={cannonshot=30..,CmdData=10}] run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CopperCannonball","NewCannonball"],Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}

#Global
scoreboard players operation @e[type=armor_stand,tag=NewCannonball] playerUUID = @s playerUUID
execute as @e[type=armor_stand,tag=NewCannonball] at @s run function cannons:namecannonball
tag @e[type=armor_stand,tag=NewCannonball] remove NewCannonball

execute at @s[scores={cannonshot=30..}] run tp @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] @s
execute at @s[scores={cannonshot=30..}] store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerL run scoreboard players get @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..}] store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerR run scoreboard players get @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..}] store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerM run scoreboard players operation @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..}] store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerV run scoreboard players operation @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData

execute at @s[scores={cannonshot=30..,CmdData=8}] run scoreboard players operation @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData -= @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute at @s[scores={cannonshot=30..,CmdData=8}] run scoreboard players operation @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData -= @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData

execute at @s[scores={cannonshot=30..}] run tp @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] ^ ^2 ^3.6

#> End Fire Cannon
execute at @s[scores={cannonshot=30..}] unless score @s CmdData matches 8 run scoreboard players set @e[type=armor_stand,tag=GPDispL,distance=..2,limit=1,sort=nearest] CmdData 0
execute at @s[scores={cannonshot=30..}] unless score @s CmdData matches 8 run scoreboard players set @e[type=armor_stand,tag=GPDispR,distance=..2,limit=1,sort=nearest] CmdData 0
execute at @s[scores={cannonshot=30..}] run tag @e[type=villager,tag=CannonVLeft,tag=GPLocked,distance=..2,limit=1,sort=nearest] remove GPLocked
execute at @s[scores={cannonshot=30..}] run tag @e[type=villager,tag=CannonVRight,tag=GPLocked,distance=..2,limit=1,sort=nearest] remove GPLocked
execute at @s[scores={cannonshot=30..}] run function cannons:updategp
scoreboard players set @s[scores={cannonshot=30..}] CmdData 0
tag @s[scores={cannonshot=30..}] remove FireCannon

scoreboard players set @s[tag=!FireCannon,tag=!RecentTracer,scores={cannonshot=30..}] playerUUID 0
scoreboard players reset @s[tag=!FireCannon,scores={cannonshot=30..}] cannonshot