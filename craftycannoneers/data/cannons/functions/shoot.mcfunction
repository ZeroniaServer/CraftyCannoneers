#> Tag for holding gunpowder
tag @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:1b}}}] add HoldCB

#> Fill gunpowder
#Left
#execute as @a[tag=FillLeft,tag=HoldGP] at @s unless entity @e[tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..5] at @e[tag=GPDispL,limit=1,sort=nearest,distance=..5] run playsound minecraft:block.sand.break master @a ~ ~ ~ 0.6 2
execute as @a[tag=FillCB,tag=HoldCB] at @s unless entity @e[tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..5] run item replace entity @s weapon.mainhand with air
execute as @a[tag=FillCB,tag=HoldCB] at @s unless entity @e[tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..5] run scoreboard players set @e[tag=CannonDisp,limit=1,sort=nearest,distance=..5] CmdData 1
#Global
tag @a remove HoldCB
tag @a remove FillCB


#> Fire Cannon
tag @e[tag=CannonDisp,scores={CmdData=1..}] add FireCannon

scoreboard players add @e[tag=FireCannon] cannonshot 1
execute as @e[tag=FireCannon,scores={cannonshot=1}] at @s run playsound cannonload master @a ~ ~ ~ 1 1
execute as @e[tag=FireCannon,scores={cannonshot=5}] at @s run playsound cannonprime master @a ~ ~ ~ 0.4 1.7
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run playsound cannonshot master @a ~ ~ ~ 6 1
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run particle explosion ^ ^1.1 ^2 0.1 0.1 0.1 0.1 3 force
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run particle flame ^ ^1.1 ^2 0.1 0.1 0.1 0.3 6 force
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run particle minecraft:campfire_cosy_smoke ^ ^0.8 ^2 0.1 0.1 0.1 0.02 10 force
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run particle lava ^ ^1.1 ^2 0.1 0.1 0.1 0.02 10 force

#Normal Cannonball
scoreboard players add @e[tag=cannonball] CmdData 1
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run summon armor_stand ~ ~1 ~ {Tags:["cannonball","Cannonball"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:16}}]}
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s run tp @e[tag=cannonball,limit=1,sort=nearest,distance=..1] @s
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[tag=cannonball,limit=1,sort=nearest,distance=..1] PowerL run scoreboard players get @e[tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[tag=cannonball,limit=1,sort=nearest,distance=..1] PowerR run scoreboard players get @e[tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[tag=cannonball,limit=1,sort=nearest,distance=..1] PowerM run scoreboard players operation @e[tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
execute as @e[tag=FireCannon,scores={cannonshot=30..}] at @s store result score @e[tag=cannonball,limit=1,sort=nearest,distance=..1] PowerV run scoreboard players operation @e[tag=GPDispR,limit=1,sort=nearest,distance=..2] CmdData += @e[tag=GPDispL,limit=1,sort=nearest,distance=..2] CmdData
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

execute as @e[tag=Cannonball] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.1 1 force

#Kill cannonball on ground and summon creeper (TEMPORARY)
execute as @e[tag=cannonball] at @s unless block ~ ~-1 ~ air run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"Cannon Ball"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Tags:["CannonExplode"]}
execute as @e[tag=cannonball] at @s unless block ~ ~-1 ~ air run kill @s