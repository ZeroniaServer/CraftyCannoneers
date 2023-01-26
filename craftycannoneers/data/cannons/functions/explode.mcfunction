execute if entity @s[tag=!Hit1] at @s unless entity @s[predicate=cannons:safezones/island] run fill ~ ~-1 ~ ~ ~-1 ~ air replace #game:shipblocks
execute if entity @s[tag=!Hit1] at @s unless entity @s[predicate=cannons:safezones/island] run fill ^1 ^1 ^1 ^-1 ^-1 ^1 air replace #game:shipblocks

execute at @s[tag=!BouncyCannonball,tag=!PlayerCannonball] run tp @s ^ ^ ^1
#>Safezone check
#Island
execute at @s if entity @s[predicate=cannons:safezones/island] run tag @s add InSafezone
#Cannons
execute at @s if entity @e[type=#game:cannon,tag=cannon,distance=..2] run tag @s add InSafezone
#Purple
execute at @s if entity @s[predicate=cannons:safezones/purple/1] run tag @s add InSafezone
execute at @s if entity @s[predicate=cannons:safezones/purple/2] run tag @s add InSafezone
execute at @s if entity @s[predicate=cannons:safezones/purple/3] run tag @s add InSafezone
execute at @s if entity @s[predicate=cannons:safezones/purple/4] run tag @s add InSafezone
execute at @s if entity @s[predicate=cannons:safezones/purple/5] run tag @s add InSafezone
#Orange
execute at @s if entity @s[predicate=cannons:safezones/orange/1] run tag @s add InSafezone
execute at @s if entity @s[predicate=cannons:safezones/orange/2] run tag @s add InSafezone
execute at @s if entity @s[predicate=cannons:safezones/orange/3] run tag @s add InSafezone
execute at @s if entity @s[predicate=cannons:safezones/orange/4] run tag @s add InSafezone
execute at @s if entity @s[predicate=cannons:safezones/orange/5] run tag @s add InSafezone

#FIREBALL EFFECT
execute if entity @s[tag=!Hit1,tag=HotCannonball] unless entity @s[scores={doublehit=1..}] at @s run tag @e[type=armor_stand,tag=GasBubble,tag=!GasIgnite,distance=..6] add GasIgnite
execute if entity @s[tag=!Hit1,tag=HotCannonball] unless entity @s[scores={doublehit=1..}] at @s run summon marker ^ ^-2 ^3 {Tags:["RingOfFire"]}
execute if entity @s[tag=!Hit1,tag=HotCannonball] unless entity @s[scores={doublehit=1..}] at @s run scoreboard players operation @e[type=armor_stand,tag=GasBubble,tag=!GasIgnite,distance=..6] playerUUID = @s playerUUID
scoreboard players operation @e[type=marker,tag=RingOfFire,tag=!HasUUID,limit=1] playerUUID = @s playerUUID
data modify entity @e[type=marker,tag=RingOfFire,tag=!HasUUID,limit=1] CustomName set from entity @s CustomName
tag @e[type=marker,tag=RingOfFire,tag=!HasUUID,limit=1] add HasUUID

#GAS EFFECT
execute if entity @s[tag=Hit1,tag=GasCannonball] at @s run summon marker ^ ^-2 ^3 {Tags:["GasCloud"]}

#General Impact Marker
execute if entity @s[tag=InSafezone,tag=!Hit1,tag=!CannonballCluster,tag=!GoldenCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1"]}
execute if entity @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..},tag=!CannonballCluster,tag=!BouncyCannonball,tag=!GoldenCannonball,tag=!GasCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1","Hit1"]}
execute if entity @s[tag=!InSafezone,tag=!Hit1,tag=!Cannonball,tag=!ChainCannonball,tag=!CannonballCluster,tag=!GoldenCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power3"]}
execute if entity @s[tag=!InSafezone,tag=Hit1,tag=!Cannonball,tag=!ChainCannonball,scores={doublehit=4..},tag=!CannonballCluster,tag=!BouncyCannonball,tag=!GoldenCannonball,tag=!GasCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power2","Hit1"]}

#Normal Cannonball
execute if entity @s[tag=!InSafezone,tag=!Hit1,tag=Cannonball] at @s run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power2"]}
execute if entity @s[tag=!InSafezone,tag=Hit1,tag=Cannonball,scores={doublehit=4..},tag=!CannonballCluster,tag=!BouncyCannonball,tag=!GoldenCannonball,tag=!GasCannonball] at @s run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power1","Hit1"]}

#Gas Cannonball (default Hit1)
execute if entity @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..},tag=GasCannonball] at @s run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power1"]}
execute if entity @s[tag=!InSafezone,tag=Hit1,scores={doublehit=4..},tag=GasCannonball] at @s run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power2"]}

#Golden Cannonball
execute if entity @s[tag=InSafezone,tag=!Hit1,tag=GoldenCannonball] at @s run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power1","GoldImpact"]}
execute if entity @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..},tag=GoldenCannonball] at @s run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power1","Hit1","GoldImpact"]}
execute if entity @s[tag=!InSafezone,tag=!Hit1,tag=GoldenCannonball] at @s run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power3","GoldImpact"]}
execute if entity @s[tag=!InSafezone,tag=Hit1,scores={doublehit=4..},tag=GoldenCannonball] at @s run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power2","Hit1","GoldImpact"]}

#Cannonball Cluster
execute if entity @s[tag=InSafezone,tag=!Hit1,tag=CannonballCluster] at @s run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power1","cluster"]}
execute if entity @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..},tag=CannonballCluster] at @s run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power1","cluster"]}
execute if entity @s[tag=!InSafezone,tag=!Hit1,tag=CannonballCluster] at @s run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power3","cluster"]}
execute if entity @s[tag=!InSafezone,tag=Hit1,scores={doublehit=4..},tag=CannonballCluster] at @s run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power2","cluster"]}

#Chain Cannonball
execute if entity @s[tag=!InSafezone,tag=!Hit1,tag=ChainCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power2","ChainImpact"]}
execute if entity @s[tag=!InSafezone,tag=!Hit1,tag=ChainCannonball] at @s run summon marker ^ ^ ^-1 {Tags:["ImpactMarker","Power2","ChainImpact"]}

execute if entity @s[tag=!InSafezone,tag=Hit1,tag=ChainCannonball,scores={doublehit=4..}] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power2","Hit1"]}
execute if entity @s[tag=!InSafezone,tag=Hit1,tag=ChainCannonball,scores={doublehit=4..}] at @s run summon marker ^ ^ ^-1 {Tags:["ImpactMarker","Power2","Hit1"]}

scoreboard players operation @e[type=marker,tag=ImpactMarker,tag=!HasUUID] playerUUID = @s playerUUID
tag @s add currentCannonball
execute as @e[type=marker,tag=ImpactMarker,tag=!HasUUID] run data modify entity @s CustomName set from entity @e[type=armor_stand,tag=currentCannonball,limit=1] CustomName
tag @s remove currentCannonball
tag @e[type=marker,tag=ImpactMarker,tag=!HasUUID] add HasUUID

execute if entity @s[tag=!Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,predicate=cannons:ships/orange] at @s run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute if entity @s[tag=!Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,predicate=cannons:ships/purple] at @s run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,scores={doublehit=4..},predicate=cannons:ships/orange] at @s run playsound shipdamage1 master @a ~ ~ ~ 2 1
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,scores={doublehit=4..},predicate=cannons:ships/purple] at @s run playsound shipdamage1 master @a ~ ~ ~ 2 1
execute if entity @s[tag=!Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,tag=!CannonballCluster] at @s run playsound cannonball master @a ~ ~ ~ 4 1
execute if entity @s[tag=!Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,tag=!CannonballCluster] at @s run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,scores={doublehit=4..},tag=!CannonballCluster] at @s run playsound cannonball master @a ~ ~ ~ 4 1.2
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,scores={doublehit=4..},tag=!CannonballCluster] at @s run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1.2
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=!CannonballCluster] at @s run particle explosion ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=!cannons:seeparticles]
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=!CannonballCluster] at @s run particle flash ~ ~ ~ 0 0 0 0 5 force @a[predicate=!cannons:seeparticles]
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=!CannonballCluster] at @s run particle lava ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=!cannons:seeparticles]
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=CannonballCluster] at @s run particle explosion ~ ~ ~ 0.4 0.3 0.4 0.1 4 force @a[predicate=!cannons:seeparticles]
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=CannonballCluster] at @s run particle flash ~ ~ ~ 0 0 0 0 1 force @a[predicate=!cannons:seeparticles]
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=CannonballCluster] at @s run particle lava ~ ~ ~ 0.4 0.3 0.4 0.1 4 force @a[predicate=!cannons:seeparticles]
tag @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..}] add Hit2

execute if entity @s[tag=!Hit1,tag=BouncyCannonball] at @s run playsound bounce master @a ~ ~ ~ 2 0.8
execute if entity @s[tag=!Hit1,tag=BouncyCannonball] at @s run tp @s @s

execute if entity @s[tag=Hit1,tag=BouncyCannonball,scores={doublehit=..3}] at @s run tag @s add bouncing
execute if entity @s[tag=bouncing] unless score @s bouncedelay matches 2.. at @s unless block ~ ~-1 ~ #cannons:cannonball_passable run scoreboard players set $bounce CmdData 1
execute if entity @s[tag=bouncing] unless score @s bouncedelay matches 2.. at @s unless block ~ ~ ~ #cannons:cannonball_passable run scoreboard players set $bounce CmdData 1
execute if entity @s[tag=bouncing] unless score @s bouncedelay matches 2.. at @s if block ~ ~-0.5 ~ spruce_slab[type=bottom] run scoreboard players set $bounce CmdData 1
execute if entity @s[tag=bouncing] unless score @s bouncedelay matches 2.. at @s if block ~ ~-1 ~ spruce_slab[type=double] run scoreboard players set $bounce CmdData 1
execute if entity @s[tag=bouncing] unless score @s bouncedelay matches 2.. at @s if block ~ ~-1 ~ spruce_slab[type=top] run scoreboard players set $bounce CmdData 1
execute if entity @s[tag=bouncing] unless score @s bouncedelay matches 2.. at @s if block ~ ~ ~ spruce_slab[type=double] run scoreboard players set $bounce CmdData 1
execute if entity @s[tag=bouncing] unless score @s bouncedelay matches 2.. at @s if block ~ ~ ~ spruce_slab[type=top] run scoreboard players set $bounce CmdData 1
execute if entity @s[tag=bouncing] unless score @s bouncedelay matches 2.. at @s if block ~ ~-0.0625 ~ gray_carpet run scoreboard players set $bounce CmdData 1
execute if entity @s[tag=bouncing] unless score @s bouncedelay matches 2.. at @s if block ~ ~-0.1875 ~ spruce_trapdoor[half=bottom] run scoreboard players set $bounce CmdData 1
execute at @s[tag=bouncing] if score $bounce CmdData matches 1 run function cannons:bounce
scoreboard players reset $bounce CmdData
execute if entity @s[tag=bouncing] if score @s bouncedelay matches 12.. at @s run scoreboard players reset @s bouncedelay
execute if entity @s[tag=Hit1,tag=BouncyCannonball,scores={doublehit=4..}] at @s run scoreboard players reset @s doublehit
tag @s add Hit1

execute as @e[type=marker,tag=ImpactMarker] at @s unless entity @s[scores={CmdData=1..}] run function cannons:spawncreeper

execute if entity @s[tag=Hit2,tag=ChainCannonball] run kill @e[type=armor_stand,tag=ChainAnchor,limit=1,sort=nearest]
kill @s[tag=Hit2]