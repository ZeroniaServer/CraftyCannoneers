execute at @s if predicate cannons:pasttraining run tag @s add kill
execute if entity @s[tag=kill,tag=!TracerCannonball] run function cannons:killcb
execute if entity @s[tag=kill,tag=TracerCannonball] run function cannons:tracerhit
execute if entity @s[tag=kill] run return 0

scoreboard players add @s[tag=Hit1] doublehit 1
scoreboard players add @s CmdData 1

execute if entity @s[tag=!TracerCannonball,tag=!PlayerCannonball,scores={CmdData=3}] run function cannons:showcannonballs

scoreboard players add @s[tag=bouncing,scores={bouncedelay=1..}] bouncedelay 1

# execute at @s[tag=CannonballCluster,tag=!AccuracySet] run function cannons:setaccuracy
# execute at @s[tag=CannonballCluster,tag=!0,tag=!clusteracc] run function cannons:clusteraccuracy
scoreboard players set @s[tag=CannonballCluster] doublehit 69

execute at @s[tag=ChainCannonball,tag=AccuracySet] run tp @s ~ ~ ~ ~40 ~
# execute at @s[tag=ChainCannonball,tag=!AccuracySet] run function cannons:setaccuracy
# execute at @s[tag=ChainCannonball,tag=!chainacc] run function cannons:chainaccuracy
# execute at @s[tag=PlayerCannonball,tag=!AccuracySet] run function cannons:setaccuracy
execute at @s[tag=PlayerCannonball] run function cannons:playercbtravel
# execute at @s[tag=TracerCannonball,tag=!AccuracySet] run function cannons:setaccuracy

scoreboard players operation @s[tag=!CannonballShot] PowerL *= $3 CmdData
scoreboard players operation @s[tag=!CannonballShot] PowerR *= $3 CmdData
execute at @s[tag=!CannonballShot,tag=!playeracc,tag=!clusteracc,tag=!chainacc,tag=!traceracc,tag=!AccuracySet] run function cannons:setaccuracy
execute at @s run function cannons:cannonballrotation
execute at @s[tag=!CannonballShot,tag=!PlayerCannonball] run function cannons:cannonballtick
execute at @s[tag=!CannonballShot,tag=PlayerCannonball] run function cannons:playercannonballtick
execute at @s[tag=CannonballShot] run function cannons:drag
execute at @s[tag=BouncyCannonball,tag=Hit1] if entity @a[team=!Lobby,team=!Spectator,distance=..20] run function cannons:bounce/bouncedrag
execute store result entity @s Air double 1 run scoreboard players get $toggle CmdData

execute rotated as @s[tag=ChainCannonball,tag=!Submerged,scores={CmdData=4..},predicate=game:inarena] on passengers on passengers on origin positioned as @s run particle dust_color_transition 1 1 1 1.7 0.398 0.398 0.398 ^ ^ ^1 0.1 0.1 0.1 0.01 3 force @a[predicate=cannons:seeparticles]
execute rotated as @s[tag=ChainCannonball,tag=!Submerged,scores={CmdData=4..},predicate=game:inarena] on passengers on passengers on origin positioned as @s run particle dust_color_transition 1 1 1 1.7 0.398 0.398 0.398 ^ ^ ^-1 0.1 0.1 0.1 0.01 3 force @a[predicate=cannons:seeparticles]
execute at @s[tag=GoldenCannonball,tag=!Submerged,scores={CmdData=4..},predicate=game:inarena] on passengers on passengers on origin at @s run particle dust_color_transition 1 0.835 0 1.4 1 0.667 0 ^ ^ ^ 0.1 0.1 0.1 0.01 3 force @a[predicate=cannons:seeparticles]

execute at @s[tag=!TracerCannonball,tag=!CannonballCluster,tag=!Submerged,tag=!StrikeLightning,tag=!ChainCannonball,tag=!GoldenCannonball,tag=!bouncing,scores={CmdData=4..},predicate=game:inarena] on passengers on passengers on origin at @s run particle dust_color_transition 1 1 1 2 0.398 0.398 0.398 ^ ^ ^ 0.1 0.1 0.1 0.01 3 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!TracerCannonball,tag=CannonballCluster,tag=!Submerged,scores={CmdData=4..},predicate=game:inarena] on passengers on passengers on origin at @s run particle dust_color_transition 1 1 1 1.7 0.398 0.398 0.398 ^ ^ ^ 0.1 0.1 0.1 0.01 3 force @a[predicate=cannons:seeparticles]

execute at @s[tag=!CannonballCluster,tag=!GoldenCannonball,tag=!StrikeLightning,tag=!Submerged,tag=!ChainCannonball,tag=!TracerCannonball,scores={CmdData=4..},predicate=game:inarena,tag=!bouncing] on passengers on passengers on origin at @s run particle large_smoke ^ ^ ^ 0 0 0 0.1 4 force @a[predicate=cannons:seeparticles]
execute at @s[tag=GoldenCannonball,tag=!Submerged,scores={CmdData=4..},predicate=game:inarena] on passengers on passengers on origin at @s run particle large_smoke ^ ^ ^ 0 0 0 0.1 2 force @a[predicate=cannons:seeparticles]
execute at @s[tag=CannonballCluster,tag=!Submerged,scores={CmdData=4..},predicate=game:inarena] on passengers on passengers on origin at @s run particle smoke ^ ^ ^ 0 0 0 0.1 2 force @a[predicate=cannons:seeparticles]

execute at @s[tag=HotCannonball,tag=!Submerged,scores={CmdData=4..},predicate=game:inarena] on passengers on passengers on origin at @s run particle large_smoke ^ ^ ^ 0 0 0 0.1 1 force @a[predicate=cannons:seeparticles]
execute at @s[tag=HotCannonball,tag=!Submerged,scores={CmdData=4..},predicate=game:inarena] on passengers on passengers on origin at @s run particle flame ^ ^ ^ 0.2 0.2 0.2 0.1 12 force @a[predicate=cannons:seeparticles]
execute at @s[tag=GasCannonball,tag=!Submerged,scores={CmdData=4..},predicate=game:inarena] on passengers on passengers on origin at @s run particle large_smoke ^ ^ ^ 0 0 0 0.1 1 force @a[predicate=cannons:seeparticles]
execute at @s[tag=GasCannonball,tag=!Submerged,scores={CmdData=4..},predicate=game:inarena] on passengers on passengers on origin at @s run particle soul ^ ^ ^ 0 0 0 0.02 2 force @a[predicate=cannons:seeparticles]
execute at @s[tag=CopperCannonball,tag=!Submerged,tag=!StrikeLightning,scores={CmdData=4..},predicate=game:inarena] on passengers on passengers on origin at @s run particle electric_spark ^ ^ ^ 0.5 0.5 0.5 0.05 5 force @a[predicate=cannons:seeparticles]
execute at @s[tag=CopperCannonball,tag=!Submerged,tag=!StrikeLightning,scores={CmdData=4..},predicate=game:inarena] on passengers on passengers on origin at @s run particle firework ^ ^ ^ 0.5 0.5 0.5 0.02 1 force @a[predicate=cannons:seeparticles]
execute at @s[tag=PlayerCannonball,tag=!Submerged,scores={CmdData=4..},predicate=game:inarena] on passengers on passengers on origin at @s run particle cloud ^ ^ ^ 0 0 0 0.02 1 force @a[predicate=cannons:seeparticles]
execute at @s[tag=TracerCannonball,scores={CmdData=1..}] run function cannons:tracertrail

#> Landing conditions
execute at @s if entity @e[type=boat,distance=..2,limit=1] run scoreboard players set $hitboat CmdData 1
execute at @s[tag=!TracerCannonball,tag=!PlayerCannonball,tag=!Submerged] if predicate game:located_water run function cannons:detectedwater
execute at @s[tag=!TracerCannonball,tag=!PlayerCannonball,tag=Submerged,tag=!boatlaunch] unless score $hitboat CmdData matches 1 run function cannons:waterkill

execute at @s[tag=PlayerCannonball] if block ~ ~3 ~ water run scoreboard players set $landed CmdData 1
execute at @s[tag=TracerCannonball] if block ~ ~3 ~ water run scoreboard players set $landed CmdData 1

execute at @s[tag=boatlaunch] unless block ~ ~3 ~ water run tag @s add boatshot
execute at @s[tag=boatlaunch] unless block ~ ~3 ~ water run tag @s remove boatlaunch

execute store result score @s dx2 run scoreboard players get @s x2
execute store result score @s dy2 run scoreboard players get @s y2
execute store result score @s dz2 run scoreboard players get @s z2

data modify storage craftycannoneers:cannonball Pos set from entity @s Pos
execute store result score @s x2 run data get storage craftycannoneers:cannonball Pos[0] 10000
execute store result score @s y2 run data get storage craftycannoneers:cannonball Pos[1] 10000
execute store result score @s z2 run data get storage craftycannoneers:cannonball Pos[2] 10000

execute if score @s CmdData matches 3.. if score @s x2 = @s dx2 if score @s y2 = @s dy2 if score @s z2 = @s dz2 run scoreboard players set $landed CmdData 1

execute if entity @s[predicate=!game:inarena,predicate=!cannons:safezones/tutorial] run tag @s add outside
execute unless score $landed CmdData matches 1 at @s[tag=!ChainCannonball] if block ~ ~ ~ #game:nonsolids run scoreboard players set $landed CmdData 1

execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball] on passengers rotated as @s if block ~ ~ ~ #game:nonsolids run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball] on passengers rotated as @s if block ^ ^ ^1 #game:nonsolids run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball] on passengers rotated as @s if block ^ ^ ^-1 #game:nonsolids run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball] on passengers rotated as @s if block ^ ^ ^2 #game:nonsolids run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball] on passengers rotated as @s if block ^ ^ ^-2 #game:nonsolids run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball] on passengers rotated as @s if block ^ ^ ^3 #game:nonsolids run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball] on passengers rotated as @s if block ^ ^ ^-3 #game:nonsolids run scoreboard players set $landed CmdData 1

execute unless score $landed CmdData matches 1 if score $hitboat CmdData matches 1 run scoreboard players set $landed CmdData 1
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
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] unless block ~ ~ ~ #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] unless block ^ ^ ^3 #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] unless block ^ ^ ^2 #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] unless block ^ ^ ^1 #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] unless block ^ ^ ^-1 #cannons:cannonball_passable run scoreboard players set $landed CmdData 1
execute unless score $landed CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] unless block ^ ^ ^-3 #cannons:cannonball_passable run scoreboard players set $landed CmdData 1

execute unless score $landed CmdData matches 1 unless score $phase CmdData matches 1 at @s[tag=!ChainCannonball,tag=!InWater] if block ^ ^ ^2 barrier run scoreboard players set $phase CmdData 1
execute unless score $landed CmdData matches 1 unless score $phase CmdData matches 1 at @s[tag=!ChainCannonball,tag=!InWater] if block ^ ^ ^1 barrier run scoreboard players set $phase CmdData 1
execute unless score $landed CmdData matches 1 unless score $phase CmdData matches 1 at @s[tag=!ChainCannonball,tag=!InWater] if block ^ ^ ^ barrier run scoreboard players set $phase CmdData 1
execute unless score $landed CmdData matches 1 unless score $phase CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] on passengers rotated as @s if block ^ ^ ^3 barrier run scoreboard players set $phase CmdData 1
execute unless score $landed CmdData matches 1 unless score $phase CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] on passengers rotated as @s if block ^ ^ ^2 barrier run scoreboard players set $phase CmdData 1
execute unless score $landed CmdData matches 1 unless score $phase CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] on passengers rotated as @s if block ^ ^ ^1 barrier run scoreboard players set $phase CmdData 1
execute unless score $landed CmdData matches 1 unless score $phase CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] on passengers rotated as @s if block ^ ^ ^-1 barrier run scoreboard players set $phase CmdData 1
execute unless score $landed CmdData matches 1 unless score $phase CmdData matches 1 at @s[tag=ChainCannonball,scores={CmdData=4..},tag=!InWater] on passengers rotated as @s if block ^ ^ ^-3 barrier run scoreboard players set $phase CmdData 1
execute if score $phase CmdData matches 1 run function cannons:phase

scoreboard players add @s[tag=outside,tag=!InWater] gravity 100
execute if entity @s[tag=PlayerCannonball,tag=outside,tag=!ejected] run function cannons:ejectplayer

execute if score $landed CmdData matches 1 at @s[tag=!PlayerCannonball,tag=!TracerCannonball,tag=!InWater,tag=!Submerged] unless predicate cannons:pasttraining unless predicate cannons:pastorange unless predicate cannons:pastpurple run function cannons:explode
execute if score $landed CmdData matches 1 at @s[tag=PlayerCannonball,tag=!Hit,tag=!ejected] run function cannons:ejectplayer
execute if score $landed CmdData matches 1 at @s[tag=PlayerCannonball,tag=!Hit] run function cannons:playercbkill
execute if score $landed CmdData matches 1 at @s[tag=TracerCannonball] run function cannons:tracerhit
scoreboard players reset $landed CmdData
scoreboard players reset $phase CmdData
scoreboard players reset $hitboat CmdData

scoreboard players add @s[tag=BouncyCannonball,tag=Hit1,scores={gravity=..1000}] gravity 60

execute on passengers on passengers if entity @s[type=snowball,tag=cbtracker] on origin run tag @s add curr
execute on passengers if entity @s[type=snowball,tag=cbtracker] on origin run tp @e[type=marker,tag=cbmarker,tag=curr,limit=1] @s
execute on passengers on passengers if entity @s[type=snowball,tag=cbtracker] on origin run tag @s remove curr
execute at @s on passengers if entity @s[type=snowball,tag=cbtracker] on origin run tp @s[type=marker,tag=cbmarker] ~ ~ ~