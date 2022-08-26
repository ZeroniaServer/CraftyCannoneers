scoreboard players add @s[tag=Hit1] doublehit 1
scoreboard players add @s CmdData 1

scoreboard players add @s[tag=bouncing,scores={bouncedelay=1..}] bouncedelay 1

execute at @s[tag=CannonballCluster,tag=!clusteracc] run function cannons:clusteraccuracy
scoreboard players set @s[tag=CannonballCluster] doublehit 69

execute at @s[tag=ChainCannonball,tag=chainacc] run tp @s ~ ~ ~ ~20 ~
execute at @s[tag=ChainCannonball,tag=!chainacc] run function cannons:chainaccuracy
execute at @s[tag=PlayerCannonball,tag=!playeracc] run function cannons:playeraccuracy
execute at @s[tag=PlayerCannonball] run function cannons:playercbtravel
execute at @s[tag=TracerCannonball,tag=!traceracc] run function cannons:traceraccuracy

scoreboard players operation @s[tag=!CannonballShot] PowerL *= $3 CmdData
scoreboard players operation @s[tag=!CannonballShot] PowerR *= $3 CmdData
execute at @s[tag=!CannonballShot,tag=!playeracc,tag=!clusteracc,tag=!chainacc,tag=!traceracc] run function cannons:accuracy
execute at @s run function cannons:cannonballrotation
execute at @s[tag=!CannonballShot,tag=!PlayerCannonball] run function cannons:cannonballtick
execute at @s[tag=!CannonballShot,tag=PlayerCannonball] run function cannons:playercannonballtick
execute at @s[tag=CannonballShot] run function cannons:drag
execute store result entity @s Air double 1 run scoreboard players get $toggle CmdData

execute at @s[tag=ChainCannonball,scores={CmdData=4..}] run particle dust_color_transition 1 1 1 1.7 0.398 0.398 0.398 ^ ^2 ^1 0.1 0.1 0.1 0.01 3 force
execute at @s[tag=ChainCannonball,scores={CmdData=4..}] run particle dust_color_transition 1 1 1 1.7 0.398 0.398 0.398 ^ ^2 ^-1 0.1 0.1 0.1 0.01 3 force
execute at @s[tag=GoldenCannonball,scores={CmdData=4..}] run particle dust_color_transition 1 0.835 0 1.4 1 0.667 0 ^ ^2 ^-8.5 0.1 0.1 0.1 0.01 3 force

execute at @s[tag=!TracerCannonball,tag=!CannonballCluster,tag=!ChainCannonball,tag=!GoldenCannonball,tag=!bouncing,scores={CmdData=4..}] run particle dust_color_transition 1 1 1 2 0.398 0.398 0.398 ^ ^2 ^-8.5 0.1 0.1 0.1 0.01 3 force
execute at @s[tag=!TracerCannonball,tag=CannonballCluster,scores={CmdData=4..}] run particle dust_color_transition 1 1 1 1.7 0.398 0.398 0.398 ^ ^2 ^-8.5 0.1 0.1 0.1 0.01 3 force

execute at @s[tag=!CannonballCluster,tag=!GoldenCannonball,tag=!ChainCannonball,scores={CmdData=4..}] unless entity @s[tag=bouncing] run particle large_smoke ^ ^2 ^-8.5 0 0 0 0.1 4 force
execute at @s[tag=GoldenCannonball,scores={CmdData=4..}] run particle large_smoke ^ ^2 ^-8.5 0 0 0 0.1 2 force
execute at @s[tag=CannonballCluster,scores={CmdData=4..}] run particle smoke ^ ^2 ^-8.5 0 0 0 0.1 2 force

execute at @s[tag=HotCannonball,scores={CmdData=4..}] run particle large_smoke ^ ^2 ^-8.5 0 0 0 0.1 1 force
execute at @s[tag=HotCannonball,scores={CmdData=4..}] run particle flame ^ ^2 ^-8.5 0.2 0.2 0.2 0.1 12 force
execute at @s[tag=GasCannonball,scores={CmdData=4..}] run particle large_smoke ^ ^2 ^-8.5 0 0 0 0.1 1 force
execute at @s[tag=GasCannonball,scores={CmdData=4..}] run particle soul ^ ^2 ^-8.5 0 0 0 0.02 2 force
execute at @s[tag=PlayerCannonball,scores={CmdData=4..}] run particle cloud ^ ^2 ^-8.5 0 0 0 0.02 1 force
execute at @s[tag=TracerCannonball,scores={CmdData=4..}] run function cannons:tracerparticle

#> Landing conditions
execute store result score $temp x run data get entity @s Motion[0]
execute store result score $temp y run data get entity @s Motion[1]
execute store result score $temp z run data get entity @s Motion[2]
execute if score $temp x matches -1..0 if score $temp y matches -1..0 if score $temp z matches -1..0 run scoreboard players set $landed CmdData 1
scoreboard players reset $temp x
scoreboard players reset $temp y
scoreboard players reset $temp z

execute as @e[type=armor_stand,tag=cannonball,tag=!TracerCannonball,tag=!PlayerCannonball] at @s if block ~ ~-1 ~ water run function cannons:waterkill

execute unless score $landed CmdData matches 1 at @s if block ~ ~ ~ #game:nonsolids run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s unless block ~ ~-1 ~ air run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=!ChainCannonball,tag=!InWater] unless block ^ ^ ^2 air run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] rotated as @e[type=armor_stand,tag=ChainAnchor,limit=1,sort=nearest] unless block ^ ^ ^3 air unless block ^ ^ ^3 water run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] rotated as @e[type=armor_stand,tag=ChainAnchor,limit=1,sort=nearest] unless block ^ ^ ^2 air unless block ^ ^ ^2 water run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] rotated as @e[type=armor_stand,tag=ChainAnchor,limit=1,sort=nearest] unless block ^ ^ ^1 air unless block ^ ^ ^1 water run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] rotated as @e[type=armor_stand,tag=ChainAnchor,limit=1,sort=nearest] unless block ^ ^ ^-1 air unless block ^ ^ ^-1 water run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] rotated as @e[type=armor_stand,tag=ChainAnchor,limit=1,sort=nearest] unless block ^ ^ ^-3 air unless block ^ ^ ^-3 water run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[predicate=cannons:pasttraining] run scoreboard players set $landed CmdData 1

execute if score $landed CmdData matches 1 at @s[tag=!PlayerCannonball,tag=!TracerCannonball,tag=!InWater] run function cannons:explode
execute if score $landed CmdData matches 1 at @s[tag=PlayerCannonball,tag=!Hit] run function cannons:ejectplayer
execute if score $landed CmdData matches 1 at @s[tag=TracerCannonball] run function cannons:tracerhit
scoreboard players reset $landed CmdData

scoreboard players add @s[tag=BouncyCannonball,tag=Hit1,scores={gravity=..1000}] gravity 60