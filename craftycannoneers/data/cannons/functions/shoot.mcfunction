#> Tag for holding cannonballs
#Normal
tag @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:1b}}}] add HoldCB
#Hot
tag @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:2b}}}] add HoldFB
#Cluster
tag @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:3b}}}] add HoldCBC
#Gas
tag @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:4b}}}] add HoldGCB

#> Fill Cannonball
#Normal
execute as @a[tag=FillCB,tag=HoldCB] at @s unless entity @e[tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @a[tag=FillCB,tag=HoldCB] at @s unless entity @e[tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[tag=CannonDisp,limit=1,sort=nearest,distance=..5] CmdData 1
#Hot
execute as @a[tag=FillCB,tag=HoldFB] at @s unless entity @e[tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @a[tag=FillCB,tag=HoldFB] at @s unless entity @e[tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[tag=CannonDisp,limit=1,sort=nearest,distance=..5] CmdData 2
#Cluster
execute as @a[tag=FillCB,tag=HoldCBC] at @s unless entity @e[tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @a[tag=FillCB,tag=HoldCBC] at @s unless entity @e[tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[tag=CannonDisp,limit=1,sort=nearest,distance=..5] CmdData 3
#Gas
execute as @a[tag=FillCB,tag=HoldGCB] at @s unless entity @e[tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @a[tag=FillCB,tag=HoldGCB] at @s unless entity @e[tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[tag=CannonDisp,limit=1,sort=nearest,distance=..5] CmdData 4

#Global
tag @a remove HoldCB
tag @a remove HoldFB
tag @a remove HoldCBC
tag @a remove FillCB
scoreboard players add @e[tag=Hit1] doublehit 1


#> Fire Cannon
tag @e[tag=CannonDisp,scores={CmdData=1..}] add FireCannon

scoreboard players add @e[tag=FireCannon] cannonshot 1
execute as @e[tag=FireCannon,scores={cannonshot=1}] at @s run playsound cannonload master @a ~ ~ ~ 1 1
execute as @e[tag=FireCannon,scores={cannonshot=5}] at @s run playsound cannonprime master @a ~ ~ ~ 0.4 1.7
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run particle explosion ^ ^1.1 ^2 0.1 0.1 0.1 0.1 3 force
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run particle flame ^ ^1.1 ^2 0.1 0.1 0.1 0.3 6 force
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run particle minecraft:campfire_cosy_smoke ^ ^0.8 ^2 0.1 0.1 0.1 0.02 10 force
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run particle lava ^ ^1.1 ^2 0.1 0.1 0.1 0.02 10 force

scoreboard players add @e[tag=cannonball] CmdData 1
#Normal Cannonball
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=1}] at @s run playsound cannonshot master @a ~ ~ ~ 6 1
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=1}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=1}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","Cannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:16}}]}
#Hot Cannonball
function cannons:firering
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=2}] at @s run playsound cannonshot master @a ~ ~ ~ 6 0.9
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=2}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 0.9
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=2}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","HotCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:22}}]}
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=2}] at @s run playsound fireshot master @a ~ ~ ~ 4 1
#Cannonball Cluster
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run playsound cannonshot master @a ~ ~ ~ 6 1.2
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.2
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","0","Hit1"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:30}}]}
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","1","Hit1"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:30}}]}
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","2","Hit1"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:30}}]}
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","3","Hit1"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:30}}]}
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","CannonballCluster","4","Hit1"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:30}}]}
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run tp @e[tag=CannonballCluster,distance=..1] @s
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s store result score @e[tag=CannonballCluster,distance=..1] PowerL run scoreboard players get @e[tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s store result score @e[tag=CannonballCluster,distance=..1] PowerR run scoreboard players get @e[tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s store result score @e[tag=CannonballCluster,distance=..1] PowerM run scoreboard players operation @e[tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s store result score @e[tag=CannonballCluster,distance=..1] PowerV run scoreboard players operation @e[tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run tp @e[tag=CannonballCluster,tag=!Main,distance=..1] ^ ^2 ^3.6
execute as @e[tag=CannonballCluster,tag=!clusteracc] run function cannons:clusteraccuracy
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run playsound cluster master @a ~ ~ ~ 4 1
#Gas Cannonball
function cannons:gas
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=4}] at @s run playsound cannonshot master @a ~ ~ ~ 6 1.05
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=4}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.05
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=4}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GasCannonball","Hit1"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:31}}]}
execute as @e[tag=FireCannon,scores={cannonshot=30..,CmdData=4}] at @s run playsound gasshot master @a ~ ~ ~ 4 1

#Global
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run tp @e[tag=cannonball,limit=1,sort=nearest,distance=..1] @s
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[tag=cannonball,limit=1,sort=nearest,distance=..1] PowerL run scoreboard players get @e[tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[tag=cannonball,limit=1,sort=nearest,distance=..1] PowerR run scoreboard players get @e[tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[tag=cannonball,limit=1,sort=nearest,distance=..1] PowerM run scoreboard players operation @e[tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[tag=cannonball,limit=1,sort=nearest,distance=..1] PowerV run scoreboard players operation @e[tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
scoreboard players set $3 CmdData 3
execute as @e[tag=cannonball,tag=!CannonballShot] store result score @s PowerL run scoreboard players operation @s PowerL *= $3 CmdData
execute as @e[tag=cannonball,tag=!CannonballShot] store result score @s PowerR run scoreboard players operation @s PowerR *= $3 CmdData
execute as @e[tag=cannonball,tag=!CannonballShot,tag=!clusteracc] run function cannons:accuracy
execute as @e[tag=cannonball] at @s run function cannons:cannonballrotation
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run tp @e[tag=cannonball,limit=1,sort=nearest,distance=..1] ^ ^2 ^3.6
execute as @e[tag=cannonball,tag=!CannonballShot] at @s run function cannons:cannonballtick

function cannons:drag
#> End Fire Cannon
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run scoreboard players set @e[tag=GPDispL,distance=..2,limit=1,sort=nearest] CmdData 0
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run scoreboard players set @e[tag=GPDispR,distance=..2,limit=1,sort=nearest] CmdData 0
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run function cannons:updategp
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run scoreboard players set @s CmdData 0
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run tag @s remove FireCannon
execute as @e[tag=!FireCannon,scores={cannonshot=30..}] at @s run scoreboard players reset @s cannonshot

execute as @e[tag=Cannonball] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.1 4 force
execute as @e[tag=CannonballCluster] at @s run particle smoke ~ ~ ~ 0 0 0 0.1 2 force
execute as @e[tag=HotCannonball] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.1 1 force
execute as @e[tag=HotCannonball] at @s run particle flame ~ ~ ~ 0.2 0.2 0.2 0.1 12 force
execute as @e[tag=GasCannonball] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.1 1 force
execute as @e[tag=GasCannonball] at @s run particle minecraft:soul ~ ~ ~ 0 0 0 0.02 2 force

execute as @e[tag=cannonball,predicate=cannons:safezones/ocean] at @s run particle splash ~ ~ ~ 0.3 0 0.3 0.3 150 force
execute as @e[tag=cannonball,predicate=cannons:safezones/ocean] at @s run particle falling_water ~ ~1 ~ 0.2 0.4 0.1 0.2 150 force
execute as @e[tag=cannonball,predicate=cannons:safezones/ocean] at @s run particle minecraft:bubble_column_up ~ ~-1 ~ 0.4 0.2 0.4 0.1 20 force
execute as @e[tag=cannonball,predicate=cannons:safezones/ocean] at @s run playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 2 0
execute as @e[tag=cannonball,predicate=cannons:safezones/ocean] at @s run playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 2 1.4
execute as @e[tag=cannonball,predicate=cannons:safezones/ocean] at @s run playsound minecraft:block.bubble_column.whirlpool_ambient master @a ~ ~ ~ 2 1.2
execute as @e[tag=cannonball,predicate=cannons:safezones/ocean] at @s run kill @s
execute as @e[tag=cannonball] at @s unless block ~ ~-1 ~ air run function cannons:explode
execute as @e[tag=cannonball] at @s unless block ^ ^ ^1 air run function cannons:explode