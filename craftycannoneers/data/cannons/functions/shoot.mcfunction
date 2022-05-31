#> Tag for holding cannonballs
#Normal
tag @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:1b}}}] add HoldCB
#Hot
tag @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:2b}}}] add HoldFB
#Cluster
tag @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:3b}}}] add HoldCBC
#Gas
tag @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:4b}}}] add HoldGCB
#Chain
tag @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:5b}}}] add HoldCCB
#Bouncy
tag @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:6b}}}] add HoldBCB
#Player
tag @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:7b}}}] add HoldPCB

#> MVP scores
scoreboard players add @a[tag=FillCB,tag=HoldCB] MVPcannon 1
scoreboard players add @a[tag=FillCB,tag=HoldFB] MVPcannon 1
scoreboard players add @a[tag=FillCB,tag=HoldCBC] MVPcannon 1
scoreboard players add @a[tag=FillCB,tag=HoldGCB] MVPcannon 1
scoreboard players add @a[tag=FillCB,tag=HoldCCB] MVPcannon 1
scoreboard players add @a[tag=FillCB,tag=HoldBCB] MVPcannon 1
scoreboard players add @a[tag=FillCB,tag=HoldPCB] MVPcannon 1

#> Tutorial Advancement trigger
execute as @a[tag=FillCB] unless entity @s[tag=!HoldCB,tag=!HoldFB,tag=!HoldCBC,tag=!GCB,tag=!HoldCCB,tag=!HoldBCB,tag=!HoldPCB] run advancement grant @s only tutorial:fire_cannon

#> Fill Cannonball
#Normal
execute as @a[tag=FillCB,tag=HoldCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @a[tag=FillCB,tag=HoldCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run tag @s add UsedCB
execute as @a[tag=FillCB,tag=HoldCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players operation @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] playerUUID = @s playerUUID
execute as @a[tag=FillCB,tag=HoldCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] CmdData 1
#Hot
execute as @a[tag=FillCB,tag=HoldFB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @a[tag=FillCB,tag=HoldFB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run tag @s add UsedFB
execute as @a[tag=FillCB,tag=HoldFB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players operation @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] playerUUID = @s playerUUID
execute as @a[tag=FillCB,tag=HoldFB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] CmdData 2
#Cluster
execute as @a[tag=FillCB,tag=HoldCBC] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @a[tag=FillCB,tag=HoldCBC] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run tag @s add UsedCBC
execute as @a[tag=FillCB,tag=HoldCBC] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players operation @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] playerUUID = @s playerUUID
execute as @a[tag=FillCB,tag=HoldCBC] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] CmdData 3
#Gas
execute as @a[tag=FillCB,tag=HoldGCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @a[tag=FillCB,tag=HoldGCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run tag @s add UsedGCB
execute as @a[tag=FillCB,tag=HoldGCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players operation @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] playerUUID = @s playerUUID
execute as @a[tag=FillCB,tag=HoldGCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] CmdData 4
#Chain
execute as @a[tag=FillCB,tag=HoldCCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @a[tag=FillCB,tag=HoldCCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run tag @s add UsedCCB
execute as @a[tag=FillCB,tag=HoldCCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players operation @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] playerUUID = @s playerUUID
execute as @a[tag=FillCB,tag=HoldCCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] CmdData 5
#Bouncy
execute as @a[tag=FillCB,tag=HoldBCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @a[tag=FillCB,tag=HoldBCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run tag @s add UsedBCB
execute as @a[tag=FillCB,tag=HoldBCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players operation @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] playerUUID = @s playerUUID
execute as @a[tag=FillCB,tag=HoldBCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] CmdData 6
#Player
execute as @a[tag=FillCB,tag=HoldPCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @a[tag=FillCB,tag=HoldPCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run tag @s add UsedPCB
execute as @a[tag=FillCB,tag=HoldPCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players operation @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] playerUUID = @s playerUUID
execute as @a[tag=FillCB,tag=HoldPCB] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] CmdData 7

#Global
tag @a remove HoldCB
tag @a remove HoldFB
tag @a remove HoldCBC
tag @a remove HoldGCB
tag @a remove HoldCCB
tag @a remove HoldBCB
tag @a remove HoldPCB

execute as @a[tag=UsedCB,tag=UsedFB,tag=UsedCBC,tag=UsedGCB,tag=UsedCCB,tag=UsedBCB,tag=UsedPCB] run advancement grant @s only tutorial:all_cannonballs
tag @a[advancements={tutorial:all_cannonballs=true}] remove UsedCB
tag @a[advancements={tutorial:all_cannonballs=true}] remove UsedFB
tag @a[advancements={tutorial:all_cannonballs=true}] remove UsedCBC
tag @a[advancements={tutorial:all_cannonballs=true}] remove UsedGCB
tag @a[advancements={tutorial:all_cannonballs=true}] remove UsedCCB
tag @a[advancements={tutorial:all_cannonballs=true}] remove UsedBCB
tag @a[advancements={tutorial:all_cannonballs=true}] remove UsedPCB

tag @a remove FillCB

scoreboard players add @e[type=armor_stand,tag=Hit1] doublehit 1


#> Fire Cannon
tag @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..}] add FireCannon

scoreboard players add @e[type=armor_stand,tag=FireCannon] cannonshot 1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=1}] at @s run playsound cannonload master @a ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=5}] at @s run playsound cannonprime master @a ~ ~ ~ 0.4 1.7
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run particle explosion ^ ^1.1 ^2 0.1 0.1 0.1 0.1 3 force
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run particle flame ^ ^1.1 ^2 0.1 0.1 0.1 0.3 6 force
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run particle minecraft:campfire_cosy_smoke ^ ^0.8 ^2 0.1 0.1 0.1 0.02 10 force
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run particle lava ^ ^1.1 ^2 0.1 0.1 0.1 0.02 10 force

scoreboard players add @e[type=armor_stand,tag=cannonball] CmdData 1
#Normal Cannonball
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=1}] at @s run playsound cannonshot master @a ~ ~ ~ 6 1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=1}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=1}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","Cannonball","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:16}}]}
#Hot Cannonball
function cannons:firering
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=2}] at @s run playsound cannonshot master @a ~ ~ ~ 6 0.85
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=2}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 0.85
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=2}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","HotCannonball","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:22}}]}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=2}] at @s run playsound fireshot master @a ~ ~ ~ 4 1
#Cannonball Cluster
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run playsound cannonshot master @a ~ ~ ~ 6 1.2
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.2
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
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=3}] at @s run playsound cluster master @a ~ ~ ~ 4 1
scoreboard players set @e[type=armor_stand,tag=CannonballCluster] doublehit 69
#Gas Cannonball
function cannons:gas
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=4}] at @s run playsound cannonshot master @a ~ ~ ~ 6 1.05
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=4}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.05
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=4}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","GasCannonball","Hit1","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:31}}]}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=4}] at @s run playsound gasshot master @a ~ ~ ~ 4 1
#Chain Cannonball
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=5}] at @s run playsound cannonshot master @a ~ ~ ~ 6 0.9
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=5}] at @s run playsound minecraft:block.chain.break master @a ~ ~ ~ 4 0
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=5}] at @s run playsound minecraft:block.chain.break master @a ~ ~ ~ 4 1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=5}] at @s run playsound minecraft:block.chain.break master @a ~ ~ ~ 4 1.3
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=5}] at @s run playsound minecraft:block.chain.break master @a ~ ~ ~ 4 0.7
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=5}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 0.9
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=5}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","ChainCannonball","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:40}}]}
execute as @e[type=armor_stand,tag=ChainCannonball,tag=!chainacc] run function cannons:chainaccuracy
execute as @e[type=armor_stand,tag=ChainCannonball] at @s run tp @s ~ ~ ~ ~20 ~
#Bouncy Cannonball
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=6}] at @s run playsound cannonshot master @a ~ ~ ~ 6 1.1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=6}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.1
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=6}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","BouncyCannonball","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:55}}]}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=6}] at @s run playsound bounceshot master @a ~ ~ ~ 4 1
#Player Cannonball
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=20,CmdData=7}] at @s run playsound cannonload master @a ~ ~ ~ 6 1.4
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=7}] at @s run playsound cannonshot master @a ~ ~ ~ 6 1.3
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=7}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.3
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=7}] at @s run summon armor_stand ~ ~1 ~ {CustomNameVisible:1b,Tags:["cannonball","PlayerCannonball","NewCannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:57}}],Passengers:[{id:"minecraft:armor_stand",Tags:["PCannonballdeco","New"],Marker:1b,Invulnerable:1b,Small:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}]}]}
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..,CmdData=7}] as @e[tag=PCannonballdeco] at @s run tp @s @e[tag=PlayerCannonball,limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=PlayerCannonball,tag=!playeracc] run function cannons:playeraccuracy
execute as @e[type=armor_stand,tag=PlayerCannonball] at @s run function cannons:playercbtravel
#Global
execute as @e[type=armor_stand,tag=NewCannonball] at @s run scoreboard players operation @s playerUUID = @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] playerUUID
execute as @e[type=armor_stand,tag=NewCannonball] at @s run function cannons:namecannonball
tag @e[type=armor_stand,tag=NewCannonball] remove NewCannonball
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run tp @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] @s
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerL run scoreboard players get @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerR run scoreboard players get @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerM run scoreboard players operation @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] PowerV run scoreboard players operation @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
scoreboard players set $3 CmdData 3
execute as @e[type=armor_stand,tag=cannonball,tag=!CannonballShot] store result score @s PowerL run scoreboard players operation @s PowerL *= $3 CmdData
execute as @e[type=armor_stand,tag=cannonball,tag=!CannonballShot] store result score @s PowerR run scoreboard players operation @s PowerR *= $3 CmdData
execute as @e[type=armor_stand,tag=cannonball,tag=!CannonballShot,tag=!playeracc,tag=!clusteracc,tag=!chainacc] run function cannons:accuracy
execute as @e[type=armor_stand,tag=cannonball] at @s run function cannons:cannonballrotation
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run tp @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..1] ^ ^2 ^3.6
execute as @e[type=armor_stand,tag=cannonball,tag=!CannonballShot,tag=!PlayerCannonball] at @s run function cannons:cannonballtick
execute as @e[type=armor_stand,tag=cannonball,tag=!CannonballShot,tag=PlayerCannonball] at @s run function cannons:playercannonballtick

function cannons:drag
#> End Fire Cannon
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run scoreboard players set @e[type=armor_stand,tag=GPDispL,distance=..2,limit=1,sort=nearest] CmdData 0
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run scoreboard players set @e[type=armor_stand,tag=GPDispR,distance=..2,limit=1,sort=nearest] CmdData 0
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run function cannons:updategp
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run scoreboard players set @s CmdData 0
execute as @e[type=armor_stand,tag=FireCannon,scores={cannonshot=30..}] at @s run tag @s remove FireCannon
execute as @e[type=armor_stand,tag=!FireCannon,scores={cannonshot=30..}] at @s run scoreboard players reset @s playerUUID
execute as @e[type=armor_stand,tag=!FireCannon,scores={cannonshot=30..}] at @s run scoreboard players reset @s cannonshot

execute as @e[type=armor_stand,tag=Cannonball] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.1 4 force
execute as @e[type=armor_stand,tag=CannonballCluster] at @s run particle smoke ~ ~ ~ 0 0 0 0.1 2 force
execute as @e[type=armor_stand,tag=HotCannonball] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.1 1 force
execute as @e[type=armor_stand,tag=HotCannonball] at @s run particle flame ~ ~ ~ 0.2 0.2 0.2 0.1 12 force
execute as @e[type=armor_stand,tag=GasCannonball] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.1 1 force
execute as @e[type=armor_stand,tag=GasCannonball] at @s run particle minecraft:soul ~ ~ ~ 0 0 0 0.02 2 force

execute as @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/ocean] at @s run particle splash ~ ~ ~ 0.3 0 0.3 0.3 150 force
execute as @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/ocean] at @s run particle falling_water ~ ~1 ~ 0.2 0.4 0.1 0.2 150 force
execute as @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/ocean] at @s run particle minecraft:bubble_column_up ~ ~-1 ~ 0.4 0.2 0.4 0.1 20 force
execute as @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/ocean] at @s run playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 2 0
execute as @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/ocean] at @s run playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 2 1.4
execute as @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/ocean] at @s run playsound minecraft:block.bubble_column.whirlpool_ambient master @a ~ ~ ~ 2 1.2
execute as @e[type=armor_stand,tag=cannonball,predicate=cannons:safezones/ocean] at @s run kill @s
execute as @e[type=armor_stand,tag=cannonball,tag=!PlayerCannonball] at @s unless block ~ ~-1 ~ air run function cannons:explode
execute as @e[type=armor_stand,tag=cannonball,tag=!PlayerCannonball] at @s unless block ^ ^ ^1 air run function cannons:explode
execute as @e[type=armor_stand,tag=cannonball,tag=PlayerCannonball,tag=!Hit] at @s unless block ~ ~-1 ~ air run function cannons:ejectplayer
execute as @e[type=armor_stand,tag=cannonball,tag=PlayerCannonball,tag=!Hit] at @s unless block ^ ^ ^1 air run function cannons:ejectplayer

scoreboard players add @e[type=armor_stand,tag=BouncyCannonball,tag=Hit1,scores={gravity=..1000}] gravity 60

#Weakpoints
function game:shipweakpoint/spot

function cannons:damagecalc