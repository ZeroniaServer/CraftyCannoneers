scoreboard players add @s[tag=Hit1] doublehit 1
scoreboard players add @s CmdData 1

execute if entity @s[tag=!TracerCannonball,tag=!PlayerCannonball,scores={CmdData=3}] run function cannons:showcannonballs

scoreboard players add @s[tag=bouncing,scores={bouncedelay=1..}] bouncedelay 1

execute at @s[tag=CannonballCluster,tag=!AccuracySet] run function cannons:setaccuracy
execute at @s[tag=CannonballCluster,tag=!0,tag=!clusteracc] run function cannons:clusteraccuracy
scoreboard players set @s[tag=CannonballCluster] doublehit 69

execute at @s[tag=ChainCannonball,tag=AccuracySet] run tp @s ~ ~ ~ ~40 ~
execute at @s[tag=ChainCannonball,tag=!AccuracySet] run function cannons:setaccuracy
execute at @s[tag=ChainCannonball,tag=!AccuracySet] run function cannons:chainaccuracy
execute at @s[tag=PlayerCannonball,tag=!AccuracySet] run function cannons:setaccuracy
execute at @s[tag=PlayerCannonball] run function cannons:playercbtravel
execute at @s[tag=TracerCannonball,tag=!AccuracySet] run function cannons:setaccuracy

scoreboard players operation @s[tag=!CannonballShot] PowerL *= $3 CmdData
scoreboard players operation @s[tag=!CannonballShot] PowerR *= $3 CmdData
execute at @s[tag=!CannonballShot,tag=!playeracc,tag=!clusteracc,tag=!chainacc,tag=!traceracc,tag=!AccuracySet] run function cannons:setaccuracy
execute at @s run function cannons:cannonballrotation
execute at @s[tag=!CannonballShot,tag=!PlayerCannonball] run function cannons:cannonballtick
execute at @s[tag=!CannonballShot,tag=PlayerCannonball] run function cannons:playercannonballtick
execute at @s[tag=CannonballShot] run function cannons:drag
execute at @s[tag=BouncyCannonball,tag=Hit1] if entity @a[team=!Lobby,team=!Spectator,distance=..20] run function cannons:bounce/bouncedrag
execute store result entity @s Air double 1 run scoreboard players get $toggle CmdData

execute at @s[tag=ChainCannonball,scores={CmdData=4..}] run particle dust_color_transition 1 1 1 1.7 0.398 0.398 0.398 ^ ^2 ^1 0.1 0.1 0.1 0.01 3 force @a[predicate=cannons:seeparticles]
execute at @s[tag=ChainCannonball,scores={CmdData=4..}] run particle dust_color_transition 1 1 1 1.7 0.398 0.398 0.398 ^ ^2 ^-1 0.1 0.1 0.1 0.01 3 force @a[predicate=cannons:seeparticles]
execute at @s[tag=GoldenCannonball,scores={CmdData=4..}] run particle dust_color_transition 1 0.835 0 1.4 1 0.667 0 ^ ^2 ^-8.5 0.1 0.1 0.1 0.01 3 force @a[predicate=cannons:seeparticles]

execute at @s[tag=!TracerCannonball,tag=!CannonballCluster,tag=!StrikeLightning,tag=!ChainCannonball,tag=!GoldenCannonball,tag=!bouncing,scores={CmdData=4..}] run particle dust_color_transition 1 1 1 2 0.398 0.398 0.398 ^ ^2 ^-8.5 0.1 0.1 0.1 0.01 3 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!TracerCannonball,tag=CannonballCluster,scores={CmdData=4..}] run particle dust_color_transition 1 1 1 1.7 0.398 0.398 0.398 ^ ^2 ^-8.5 0.1 0.1 0.1 0.01 3 force @a[predicate=cannons:seeparticles]

execute at @s[tag=!CannonballCluster,tag=!GoldenCannonball,tag=!StrikeLightning,tag=!ChainCannonball,tag=!TracerCannonball,scores={CmdData=4..}] unless entity @s[tag=bouncing] run particle large_smoke ^ ^2 ^-8.5 0 0 0 0.1 4 force @a[predicate=cannons:seeparticles]
execute at @s[tag=GoldenCannonball,scores={CmdData=4..}] run particle large_smoke ^ ^2 ^-8.5 0 0 0 0.1 2 force @a[predicate=cannons:seeparticles]
execute at @s[tag=CannonballCluster,scores={CmdData=4..}] run particle smoke ^ ^2 ^-8.5 0 0 0 0.1 2 force @a[predicate=cannons:seeparticles]

execute at @s[tag=HotCannonball,scores={CmdData=4..}] run particle large_smoke ^ ^2 ^-8.5 0 0 0 0.1 1 force @a[predicate=cannons:seeparticles]
execute at @s[tag=HotCannonball,scores={CmdData=4..}] run particle flame ^ ^2 ^-8.5 0.2 0.2 0.2 0.1 12 force @a[predicate=cannons:seeparticles]
execute at @s[tag=GasCannonball,scores={CmdData=4..}] run particle large_smoke ^ ^2 ^-8.5 0 0 0 0.1 1 force @a[predicate=cannons:seeparticles]
execute at @s[tag=GasCannonball,scores={CmdData=4..}] run particle soul ^ ^2 ^-8.5 0 0 0 0.02 2 force @a[predicate=cannons:seeparticles]
execute at @s[tag=CopperCannonball,tag=!StrikeLightning,scores={CmdData=4..}] run particle electric_spark ^ ^2 ^-8.5 0.5 0.5 0.5 0.05 5 force @a[predicate=cannons:seeparticles]
execute at @s[tag=CopperCannonball,tag=!StrikeLightning,scores={CmdData=4..}] run particle firework ^ ^2 ^-8.5 0.5 0.5 0.5 0.02 1 force @a[predicate=cannons:seeparticles]
execute at @s[tag=PlayerCannonball,scores={CmdData=4..}] run particle cloud ^ ^2 ^-8.5 0 0 0 0.02 1 force @a[predicate=cannons:seeparticles]
execute at @s[tag=TracerCannonball,scores={CmdData=1..}] run function cannons:tracerparticle

#> Landing conditions
execute at @s[tag=!TracerCannonball,tag=!PlayerCannonball] if block ~ ~-1 ~ water run function cannons:waterkill

execute at @s[tag=PlayerCannonball] if block ~ ~-1 ~ water run scoreboard players set $landed CmdData 1
execute at @s[tag=TracerCannonball] if block ~ ~-1 ~ water run scoreboard players set $landed CmdData 1

execute store result score @s dx2 run scoreboard players get @s x2
execute store result score @s dy2 run scoreboard players get @s y2
execute store result score @s dz2 run scoreboard players get @s z2

data modify storage craftycannoneers:cannonball Pos set from entity @s Pos
execute store result score @s x2 run data get storage craftycannoneers:cannonball Pos[0] 10000
execute store result score @s y2 run data get storage craftycannoneers:cannonball Pos[1] 10000
execute store result score @s z2 run data get storage craftycannoneers:cannonball Pos[2] 10000
data remove storage craftycannoneers:cannonball Pos

execute if score @s CmdData matches 3.. if score @s x2 = @s dx2 if score @s y2 = @s dy2 if score @s z2 = @s dz2 run scoreboard players set $landed CmdData 1

execute unless score $landed CmdData matches 1 if entity @s[predicate=!game:inarena,predicate=!cannons:safezones/tutorial] run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~ ~ #game:nonsolids run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s unless block ~ ~-1 ~ #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~-0.5 ~ spruce_slab[type=bottom] run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~-1 ~ spruce_slab[type=top] run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~-1 ~ spruce_slab[type=double] run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~ ~ spruce_slab[type=top] run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~ ~ spruce_slab[type=double] run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~-0.0625 ~ gray_carpet run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s if block ~ ~-0.1875 ~ spruce_trapdoor[half=bottom] run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=!ChainCannonball,tag=!InWater] unless block ^ ^ ^2 #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=!ChainCannonball,tag=!InWater] unless block ^ ^ ^1 #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=!ChainCannonball,tag=!InWater] unless block ^ ^ ^ #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] rotated as @e[type=armor_stand,tag=ChainAnchor,limit=1,sort=nearest] unless block ~ ~ ~ #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] rotated as @e[type=armor_stand,tag=ChainAnchor,limit=1,sort=nearest] unless block ^ ^ ^3 #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] rotated as @e[type=armor_stand,tag=ChainAnchor,limit=1,sort=nearest] unless block ^ ^ ^2 #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] rotated as @e[type=armor_stand,tag=ChainAnchor,limit=1,sort=nearest] unless block ^ ^ ^1 #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] rotated as @e[type=armor_stand,tag=ChainAnchor,limit=1,sort=nearest] unless block ^ ^ ^-1 #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] rotated as @e[type=armor_stand,tag=ChainAnchor,limit=1,sort=nearest] unless block ^ ^ ^-3 #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 if predicate cannons:pasttraining run scoreboard players set $landed CmdData 1

execute if score $landed CmdData matches 1 at @s[tag=!PlayerCannonball,tag=!TracerCannonball,tag=!InWater] unless predicate cannons:pasttraining unless predicate cannons:pastorange unless predicate cannons:pastpurple run function cannons:explode
execute if score $landed CmdData matches 1 at @s[tag=!PlayerCannonball,tag=!TracerCannonball,tag=!InWater] if predicate cannons:pasttraining run kill @s
execute if score $landed CmdData matches 1 at @s[tag=!PlayerCannonball,tag=!TracerCannonball,tag=!InWater] if predicate cannons:pastorange run kill @s
execute if score $landed CmdData matches 1 at @s[tag=!PlayerCannonball,tag=!TracerCannonball,tag=!InWater] if predicate cannons:pastpurple run kill @s
execute if score $landed CmdData matches 1 at @s[tag=PlayerCannonball,tag=!Hit] run function cannons:ejectplayer
execute if score $landed CmdData matches 1 at @s[tag=TracerCannonball] run function cannons:tracerhit
scoreboard players reset $landed CmdData

scoreboard players add @s[tag=BouncyCannonball,tag=Hit1,scores={gravity=..1000}] gravity 60