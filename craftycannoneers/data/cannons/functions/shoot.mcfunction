scoreboard players add @e[type=armor_stand,tag=Hit1] doublehit 1

#> Fire Cannon
tag @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..}] add FireCannon

scoreboard players add @e[type=armor_stand,tag=FireCannon] cannonshot 1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=1}] at @s run playsound cannonload master @a ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=5}] at @s run scoreboard players set @s cannonclaim 91
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30,CmdData=8}] at @s run scoreboard players set @s cannonclaim 91
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonshot=30,CmdData=8}] at @s if score @s playerUUID matches 0 run scoreboard players reset @e[type=armor_stand,tag=GPDispL,distance=..2,limit=1,sort=nearest] gpdisp_time
execute as @e[type=armor_stand,tag=CannonDisp,scores={cannonshot=30,CmdData=8}] at @s if score @s playerUUID matches 0 run scoreboard players reset @e[type=armor_stand,tag=GPDispR,distance=..2,limit=1,sort=nearest] gpdisp_time
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=5}] at @s run playsound cannonprime master @a ~ ~ ~ 0.4 1.7
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=2}] at @s at @e[type=villager,tag=CannonVLeft,limit=1,sort=nearest,distance=..2] run particle soul_fire_flame ^ ^0.5 ^-0.2 .02 0.05 .02 .003 4 force
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=2}] at @s at @e[type=villager,tag=CannonVRight,limit=1,sort=nearest,distance=..2] run particle soul_fire_flame ^ ^0.5 ^-0.2 .02 0.05 .02 .003 4 force
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=5..25}] at @s at @e[type=villager,tag=CannonVLeft,limit=1,sort=nearest,distance=..2] run particle flame ^ ^0.7 ^-0.2 .02 0.1 .02 .003 2 force
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=5..25}] at @s at @e[type=villager,tag=CannonVRight,limit=1,sort=nearest,distance=..2] run particle flame ^ ^0.7 ^-0.2 .02 0.1 .02 .003 2 force
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26}] unless entity @s[scores={CmdData=8}] at @s run particle explosion ^ ^2.1 ^2 0.1 0.1 0.1 0.1 3 force
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26}] unless entity @s[scores={CmdData=8}] at @s run particle flame ^ ^2.1 ^2 0.1 0.1 0.1 0.3 6 force
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26}] unless entity @s[scores={CmdData=8}] at @s run particle minecraft:campfire_cosy_smoke ^ ^0.8 ^2 0.1 0.1 0.1 0.02 10 force
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26}] unless entity @s[scores={CmdData=8}] at @s run particle lava ^ ^2.1 ^2 0.1 0.1 0.1 0.02 10 force
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=28}] unless entity @s[scores={CmdData=8}] run item replace entity @s armor.head with diamond_hoe{CustomModelData:62}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=29}] unless entity @s[scores={CmdData=8}] run item replace entity @s armor.head with diamond_hoe{CustomModelData:63}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30}] unless entity @s[scores={CmdData=8}] run item replace entity @s armor.head with diamond_hoe{CustomModelData:1}

#Light Flash
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30}] unless entity @s[scores={CmdData=8}] at @s run summon marker ^ ^2 ^4 {Tags:["LightFlash","cannon"]}
scoreboard players add @e[type=marker,tag=LightFlash] CmdData 1
execute as @e[type=marker,tag=LightFlash,scores={CmdData=1}] at @s run setblock ~ ~ ~ light[level=15]
execute as @e[type=marker,tag=LightFlash,scores={CmdData=2}] at @s run setblock ~ ~ ~ light[level=14]
execute as @e[type=marker,tag=LightFlash,scores={CmdData=3}] at @s run setblock ~ ~ ~ light[level=12]
execute as @e[type=marker,tag=LightFlash,scores={CmdData=4}] at @s run setblock ~ ~ ~ light[level=10]
execute as @e[type=marker,tag=LightFlash,scores={CmdData=5}] at @s run setblock ~ ~ ~ light[level=8]
execute as @e[type=marker,tag=LightFlash,scores={CmdData=6}] at @s run setblock ~ ~ ~ light[level=6]
execute as @e[type=marker,tag=LightFlash,scores={CmdData=7}] at @s run setblock ~ ~ ~ light[level=3]
execute as @e[type=marker,tag=LightFlash,scores={CmdData=8}] at @s run setblock ~ ~ ~ light[level=1]
execute as @e[type=marker,tag=LightFlash,scores={CmdData=9}] at @s run fill ~ ~ ~ ~ ~ ~ air replace light
execute as @e[type=marker,tag=LightFlash,scores={CmdData=9..}] at @s run kill @s

scoreboard players add @e[type=armor_stand,tag=cannonball] CmdData 1
#Normal Cannonball
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=1}] at @s run playsound cannonshot master @a ~ ~ ~ 6 1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=1}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=1}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","Cannonball","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:16}}]}
#Hot Cannonball
function cannons:firering
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=2}] at @s run playsound cannonshot master @a ~ ~ ~ 6 0.85
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=2}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 0.85
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=2}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","HotCannonball","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:22}}]}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=2}] at @s run playsound fireshot master @a ~ ~ ~ 4 1
#Cannonball Cluster
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=3}] at @s run playsound cannonshot master @a ~ ~ ~ 6 1.2
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=3}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.2
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","0","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:30}}]}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","1","Hit1","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:30}}]}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","2","Hit1","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:30}}]}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","3","Hit1","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:30}}]}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","4","Hit1","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:30}}]}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run tp @e[type=armor_stand,tag=CannonballCluster,distance=..1] @s
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s store result score @e[type=armor_stand,tag=CannonballCluster,distance=..1] PowerL run scoreboard players get @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s store result score @e[type=armor_stand,tag=CannonballCluster,distance=..1] PowerR run scoreboard players get @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s store result score @e[type=armor_stand,tag=CannonballCluster,distance=..1] PowerM run scoreboard players operation @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s store result score @e[type=armor_stand,tag=CannonballCluster,distance=..1] PowerV run scoreboard players operation @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run tp @e[type=armor_stand,tag=CannonballCluster,tag=!Main,distance=..1] ^ ^2 ^3.6
execute as @e[type=armor_stand,tag=CannonballCluster,tag=!clusteracc] run function cannons:clusteraccuracy
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=3}] at @s run playsound cluster master @a ~ ~ ~ 4 1
scoreboard players set @e[type=armor_stand,tag=CannonballCluster] doublehit 69
#Gas Cannonball
function cannons:gas
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=4}] at @s run playsound cannonshot master @a ~ ~ ~ 6 1.05
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=4}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.05
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=4}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GasCannonball","Hit1","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:31}}]}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=4}] at @s run playsound gasshot master @a ~ ~ ~ 4 1
#Chain Cannonball
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=5}] at @s run playsound cannonshot master @a ~ ~ ~ 6 0.9
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=5}] at @s run playsound cannonshot2 master @a ~ ~ ~ 4 0
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=5}] at @s run playsound cannonshot2 master @a ~ ~ ~ 4 1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=5}] at @s run playsound cannonshot2 master @a ~ ~ ~ 4 1.3
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=5}] at @s run playsound cannonshot2 master @a ~ ~ ~ 4 0.7
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=5}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 0.9
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=5}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","ChainCannonball","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:40}}]}
execute as @e[type=armor_stand,tag=ChainCannonball,tag=!chainacc] run function cannons:chainaccuracy
execute as @e[type=armor_stand,tag=ChainCannonball] at @s run tp @s ~ ~ ~ ~20 ~
#Bouncy Cannonball
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=6}] at @s run playsound cannonshot master @a ~ ~ ~ 6 1.1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=6}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=6}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","BouncyCannonball","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:55}}]}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=6}] at @s run playsound bounceshot master @a ~ ~ ~ 4 1
#Player Cannonball
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=7}] at @s run playsound cannonshot master @a ~ ~ ~ 6 1.3
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30,CmdData=7}] at @s run playsound playershot master @a ~ ~ ~ 6.5 1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=26,CmdData=7}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.3
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=7}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","PlayerCannonball","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:57}}],Passengers:[{id:"minecraft:armor_stand",Tags:["PCannonballdeco","New"],Marker:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Size:1,Tags:["PCannonballname","New"]}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}]}]}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=7}] as @e[type=armor_stand,tag=PCannonballdeco] at @s run tp @s @e[type=armor_stand,tag=PlayerCannonball,limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=PlayerCannonball,tag=!playeracc] run function cannons:playeraccuracy
execute as @e[type=armor_stand,tag=PlayerCannonball] at @s run function cannons:playercbtravel
#Tracer Cannonball
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=8}] at @s run particle explosion ^ ^2.1 ^2 0.1 0.1 0.1 0.1 3 force @a[tag=HoldTCB]
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=8}] at @s run particle flame ^ ^2.1 ^2 0.1 0.1 0.1 0.3 6 force @a[tag=HoldTCB]
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=8}] at @s run particle minecraft:campfire_cosy_smoke ^ ^0.8 ^2 0.1 0.1 0.1 0.02 10 force @a[tag=HoldTCB]
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=8}] at @s run particle lava ^ ^2.1 ^2 0.1 0.1 0.1 0.02 10 force @a[tag=HoldTCB]
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=8}] at @s run playsound cannonshot master @a[tag=HoldTCB] ~ ~ ~ 0.7 2
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=8}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","TracerCannonball","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=8}] at @s run tag @s add RecentTracer
#execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=8}] at @s run scoreboard players set @s[scores={cannonclaim=3..120}] cannonclaim 3
execute as @e[type=armor_stand,tag=TracerCannonball,tag=!traceracc] run function cannons:traceraccuracy
#Golden Cannonball
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=9}] at @s run playsound cannonshot master @a ~ ~ ~ 6 1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=9}] at @s run playsound goldshot master @a ~ ~ ~ 4 1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=9}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=9}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GoldenCannonball","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:73}}]}

#Global
execute as @e[type=armor_stand,tag=NewCannonball] at @s run scoreboard players operation @s playerUUID = @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] playerUUID
execute as @e[type=armor_stand,tag=NewCannonball] at @s run function cannons:namecannonball
tag @e[type=armor_stand,tag=NewCannonball] remove NewCannonball
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run tp @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] @s
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerL run scoreboard players get @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerR run scoreboard players get @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerM run scoreboard players operation @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerV run scoreboard players operation @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData

execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=8}] at @s run scoreboard players operation @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData -= @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=8}] at @s run scoreboard players operation @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData -= @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData

scoreboard players set $3 CmdData 3
execute as @e[type=armor_stand,tag=cannonball,tag=!CannonballShot] store result score @s PowerL run scoreboard players operation @s PowerL *= $3 CmdData
execute as @e[type=armor_stand,tag=cannonball,tag=!CannonballShot] store result score @s PowerR run scoreboard players operation @s PowerR *= $3 CmdData
execute as @e[type=armor_stand,tag=cannonball,tag=!CannonballShot,tag=!playeracc,tag=!clusteracc,tag=!chainacc,tag=!traceracc] run function cannons:accuracy
execute as @e[type=armor_stand,tag=cannonball] at @s run function cannons:cannonballrotation
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run tp @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] ^ ^2 ^3.6
execute as @e[type=armor_stand,tag=cannonball,tag=!CannonballShot,tag=!PlayerCannonball] at @s run function cannons:cannonballtick
execute as @e[type=armor_stand,tag=cannonball,tag=!CannonballShot,tag=PlayerCannonball] at @s run function cannons:playercannonballtick

function cannons:drag
#> End Fire Cannon
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] unless entity @s[scores={CmdData=8}] at @s run scoreboard players set @e[type=armor_stand,tag=GPDispL,distance=..2,limit=1,sort=nearest] CmdData 0
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] unless entity @s[scores={CmdData=8}] at @s run scoreboard players set @e[type=armor_stand,tag=GPDispR,distance=..2,limit=1,sort=nearest] CmdData 0
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run function cannons:updategp
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run scoreboard players set @s CmdData 0
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run tag @s remove FireCannon
execute as @e[type=armor_stand,tag=!FireCannon,tag=!RecentTracer,scores={cannonshot=30..}] at @s run scoreboard players set @s playerUUID 0
execute as @e[type=armor_stand,tag=!FireCannon,scores={cannonshot=30..}] at @s run scoreboard players reset @s cannonshot

execute as @e[type=armor_stand,tag=cannonball] store result entity @s Air double 1 run scoreboard players get $toggle CmdData

execute as @e[type=armor_stand,tag=cannonball,tag=ChainCannonball,scores={CmdData=4..}] at @s run particle dust_color_transition 1 1 1 1.7 0.398 0.398 0.398 ^ ^2 ^1 0.1 0.1 0.1 0.01 3 force
execute as @e[type=armor_stand,tag=cannonball,tag=ChainCannonball,scores={CmdData=4..}] at @s run particle dust_color_transition 1 1 1 1.7 0.398 0.398 0.398 ^ ^2 ^-1 0.1 0.1 0.1 0.01 3 force
execute as @e[type=armor_stand,tag=cannonball,tag=GoldenCannonball,scores={CmdData=4..}] at @s run particle dust_color_transition 1 0.835 0 1.4 1 0.667 0 ^ ^2 ^-8.5 0.1 0.1 0.1 0.01 3 force

execute as @e[type=armor_stand,tag=cannonball,tag=!TracerCannonball,tag=!CannonballCluster,tag=!ChainCannonball,tag=!GoldenCannonball,scores={CmdData=4..}] at @s run particle dust_color_transition 1 1 1 2 0.398 0.398 0.398 ^ ^2 ^-8.5 0.1 0.1 0.1 0.01 3 force
execute as @e[type=armor_stand,tag=cannonball,tag=!TracerCannonball,tag=CannonballCluster,scores={CmdData=4..}] at @s run particle dust_color_transition 1 1 1 1.7 0.398 0.398 0.398 ^ ^2 ^-8.5 0.1 0.1 0.1 0.01 3 force

execute as @e[type=armor_stand,tag=Cannonball,scores={CmdData=4..}] at @s run particle large_smoke ^ ^2 ^-8.5 0 0 0 0.1 4 force
execute as @e[type=armor_stand,tag=GoldenCannonball,scores={CmdData=4..}] at @s run particle large_smoke ^ ^2 ^-8.5 0 0 0 0.1 2 force
execute as @e[type=armor_stand,tag=CannonballCluster,scores={CmdData=4..}] at @s run particle smoke ^ ^2 ^-8.5 0 0 0 0.1 2 force
execute as @e[type=armor_stand,tag=HotCannonball,scores={CmdData=4..}] at @s run particle large_smoke ^ ^2 ^-8.5 0 0 0 0.1 1 force
execute as @e[type=armor_stand,tag=HotCannonball,scores={CmdData=4..}] at @s run particle flame ^ ^2 ^-8.5 0.2 0.2 0.2 0.1 12 force
execute as @e[type=armor_stand,tag=GasCannonball,scores={CmdData=4..}] at @s run particle large_smoke ^ ^2 ^-8.5 0 0 0 0.1 1 force
execute as @e[type=armor_stand,tag=GasCannonball,scores={CmdData=4..}] at @s run particle minecraft:soul ^ ^2 ^-8.5 0 0 0 0.02 2 force
execute as @e[type=armor_stand,tag=PlayerCannonball,scores={CmdData=4..}] at @s run particle minecraft:cloud ^ ^2 ^-8.5 0 0 0 0.02 1 force
execute as @e[type=armor_stand,tag=TracerCannonball,scores={CmdData=4..}] at @s run function cannons:tracerparticle

execute as @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/ocean] at @s run particle splash ~ ~ ~ 0.3 0 0.3 0.3 150 force
execute as @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/ocean] at @s run particle falling_water ~ ~1 ~ 0.2 0.4 0.1 0.2 150 force
execute as @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/ocean] at @s run particle minecraft:bubble_column_up ~ ~-1 ~ 0.4 0.2 0.4 0.1 20 force
execute as @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/ocean] at @s run playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 2 0
execute as @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/ocean] at @s run playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 2 1.4
execute as @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/ocean] at @s run playsound minecraft:block.bubble_column.whirlpool_ambient master @a ~ ~ ~ 2 1.2
execute as @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/ocean] at @s run kill @s
execute as @e[type=armor_stand,tag=cannonball,tag=!PlayerCannonball,tag=!TracerCannonball] at @s if block ~ ~ ~ #game:nonsolids run function cannons:explode
execute as @e[type=armor_stand,tag=cannonball,tag=!PlayerCannonball,tag=!TracerCannonball] at @s unless block ~ ~-1 ~ air run function cannons:explode
execute as @e[type=armor_stand,tag=cannonball,tag=!PlayerCannonball,tag=!TracerCannonball] at @s unless block ^ ^ ^2 air run function cannons:explode
execute as @e[type=armor_stand,tag=cannonball,tag=PlayerCannonball,tag=!Hit] at @s if block ~ ~ ~ #game:nonsolids run function cannons:ejectplayer
execute as @e[type=armor_stand,tag=cannonball,tag=PlayerCannonball,tag=!Hit] at @s unless block ~ ~-1 ~ air run function cannons:ejectplayer
execute as @e[type=armor_stand,tag=cannonball,tag=PlayerCannonball,tag=!Hit] at @s unless block ^ ^ ^2 air run function cannons:ejectplayer
execute as @e[type=armor_stand,tag=cannonball,tag=TracerCannonball] at @s if block ~ ~ ~ #game:nonsolids run function cannons:tracerhit
execute as @e[type=armor_stand,tag=cannonball,tag=TracerCannonball] at @s unless block ~ ~-1 ~ air run function cannons:tracerhit
execute as @e[type=armor_stand,tag=cannonball,tag=TracerCannonball] at @s unless block ^ ^ ^2 air run function cannons:tracerhit

scoreboard players add @e[type=armor_stand,tag=BouncyCannonball,tag=Hit1,scores={gravity=..1000}] gravity 60

#Weakpoints
function game:shipweakpoint/spot

function cannons:damagecalc

#Global
tag @a remove HoldCB
tag @a remove HoldFB
tag @a remove HoldCBC
tag @a remove HoldGCB
tag @a remove HoldCCB
tag @a remove HoldBCB
tag @a remove HoldPCB
tag @a remove HoldTCB
tag @a remove HoldGOCB