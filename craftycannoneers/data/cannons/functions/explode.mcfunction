execute at @s[tag=!Hit1,predicate=!cannons:safezones/island] run fill ~ ~-1 ~ ~ ~-1 ~ air replace #game:shipblocks
execute at @s[tag=!Hit1,predicate=!cannons:safezones/island] run fill ^1 ^1 ^1 ^-1 ^-1 ^1 air replace #game:shipblocks

execute at @s[tag=!BouncyCannonball,tag=!PlayerCannonball] run tp @s ^ ^ ^1
#>Safezone check
#Island
tag @s[predicate=cannons:safezones/island] add InSafezone
#Cannons
execute at @s if entity @e[type=#game:cannon,tag=cannon,distance=..2] run tag @s add InSafezone
#Ships
tag @s[predicate=cannons:safezones/ships] add InSafezone

#FIREBALL EFFECT
execute at @s[tag=!Hit1,tag=HotCannonball] unless score @s doublehit matches 1.. run tag @e[type=armor_stand,tag=GasBubble,tag=!GasIgnite,distance=..6] add GasIgnite
execute at @s[tag=!Hit1,tag=HotCannonball] unless score @s doublehit matches 1.. run summon marker ^ ^-2 ^3 {Tags:["RingOfFire"]}
execute at @s[tag=!Hit1,tag=HotCannonball] unless score @s doublehit matches 1.. if predicate game:onpurple run scoreboard players add $PFireCount CmdData 1
execute at @s[tag=!Hit1,tag=HotCannonball] unless score @s doublehit matches 1.. if predicate game:onpurple run scoreboard players add $OFireCount CmdData 1
execute at @s[tag=!Hit1,tag=HotCannonball] unless score @s doublehit matches 1.. run scoreboard players operation @e[type=armor_stand,tag=GasBubble,tag=!GasIgnite,distance=..6] playerUUID = @s playerUUID
scoreboard players operation @e[type=marker,tag=RingOfFire,tag=!HasUUID,limit=1] playerUUID = @s playerUUID
data modify entity @e[type=marker,tag=RingOfFire,tag=!HasUUID,limit=1] CustomName set from entity @s CustomName
tag @e[type=marker,tag=RingOfFire,tag=!HasUUID,limit=1] add HasUUID

#GAS EFFECT
execute at @s[tag=Hit1,tag=GasCannonball] run summon marker ^ ^-2 ^3 {Tags:["GasCloud"]}

#General Impact Marker
execute at @s[tag=InSafezone,tag=!Hit1,tag=!CannonballCluster,tag=!GoldenCannonball] run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1"]}
execute at @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..},tag=!CannonballCluster,tag=!BouncyCannonball,tag=!GoldenCannonball,tag=!GasCannonball] run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1","Hit1"]}
execute at @s[tag=!InSafezone,tag=!Hit1,tag=!Cannonball,tag=!ChainCannonball,tag=!CannonballCluster,tag=!GoldenCannonball] run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power3"]}
execute at @s[tag=!InSafezone,tag=Hit1,tag=!Cannonball,tag=!ChainCannonball,scores={doublehit=4..},tag=!CannonballCluster,tag=!BouncyCannonball,tag=!GoldenCannonball,tag=!GasCannonball] run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power2","Hit1"]}

#Normal Cannonball
execute at @s[tag=!InSafezone,tag=!Hit1,tag=Cannonball] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power2"]}
execute at @s[tag=!InSafezone,tag=Hit1,tag=Cannonball,scores={doublehit=4..},tag=!CannonballCluster,tag=!BouncyCannonball,tag=!GoldenCannonball,tag=!GasCannonball] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power1","Hit1"]}

#Gas Cannonball (default Hit1)
execute at @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..},tag=GasCannonball] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power1"]}
execute at @s[tag=!InSafezone,tag=Hit1,scores={doublehit=4..},tag=GasCannonball] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power2"]}

#Golden Cannonball
execute at @s[tag=InSafezone,tag=!Hit1,tag=GoldenCannonball] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power1","GoldImpact"]}
execute at @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..},tag=GoldenCannonball] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power1","Hit1","GoldImpact"]}
execute at @s[tag=!InSafezone,tag=!Hit1,tag=GoldenCannonball] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power3","GoldImpact"]}
execute at @s[tag=!InSafezone,tag=Hit1,scores={doublehit=4..},tag=GoldenCannonball] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power2","Hit1","GoldImpact"]}

#Cannonball Cluster
execute at @s[tag=InSafezone,tag=!Hit1,tag=CannonballCluster] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power1","cluster"]}
execute at @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..},tag=CannonballCluster] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power1","cluster"]}
execute at @s[tag=!InSafezone,tag=!Hit1,tag=CannonballCluster] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power3","cluster"]}
execute at @s[tag=!InSafezone,tag=Hit1,scores={doublehit=4..},tag=CannonballCluster] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power2","cluster"]}

#Chain Cannonball
execute at @s[tag=!InSafezone,tag=!Hit1,tag=ChainCannonball] run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power2","ChainImpact"]}
execute at @s[tag=!InSafezone,tag=!Hit1,tag=ChainCannonball] run summon marker ^ ^ ^-1 {Tags:["ImpactMarker","Power2","ChainImpact"]}

execute at @s[tag=!InSafezone,tag=Hit1,tag=ChainCannonball,scores={doublehit=4..}] run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power2","Hit1"]}
execute at @s[tag=!InSafezone,tag=Hit1,tag=ChainCannonball,scores={doublehit=4..}] run summon marker ^ ^ ^-1 {Tags:["ImpactMarker","Power2","Hit1"]}

scoreboard players operation @e[type=marker,tag=ImpactMarker,tag=!HasUUID] playerUUID = @s playerUUID
tag @s add currentCannonball
execute as @e[type=marker,tag=ImpactMarker,tag=!HasUUID] run data modify entity @s CustomName set from entity @e[type=armor_stand,tag=currentCannonball,limit=1] CustomName
tag @s remove currentCannonball
tag @e[type=marker,tag=ImpactMarker,tag=!HasUUID] add HasUUID

execute at @s[tag=!Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,predicate=cannons:ships/orange] run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute at @s[tag=!Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,predicate=cannons:ships/purple] run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute at @s[tag=Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,scores={doublehit=4..},predicate=cannons:ships/orange] run playsound shipdamage1 master @a ~ ~ ~ 2 1
execute at @s[tag=Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,scores={doublehit=4..},predicate=cannons:ships/purple] run playsound shipdamage1 master @a ~ ~ ~ 2 1
execute at @s[tag=!Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,tag=!CannonballCluster] run playsound cannonball master @a ~ ~ ~ 4 1
execute at @s[tag=!Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,tag=!CannonballCluster] run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1
execute at @s[tag=Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,scores={doublehit=4..},tag=!CannonballCluster] run playsound cannonball master @a ~ ~ ~ 4 1.2
execute at @s[tag=Hit1,tag=!BouncyCannonball,tag=!ChainCannonball,scores={doublehit=4..},tag=!CannonballCluster] run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1.2
execute at @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=!CannonballCluster] run particle explosion ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=!cannons:seeparticles]
execute at @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=!CannonballCluster] run particle flash ~ ~ ~ 0 0 0 0 5 force @a[predicate=!cannons:seeparticles]
execute at @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=!CannonballCluster] run particle lava ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=!cannons:seeparticles]
execute at @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=CannonballCluster] run particle explosion ~ ~ ~ 0.4 0.3 0.4 0.1 4 force @a[predicate=!cannons:seeparticles]
execute at @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=CannonballCluster] run particle flash ~ ~ ~ 0 0 0 0 1 force @a[predicate=!cannons:seeparticles]
execute at @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=CannonballCluster] run particle lava ~ ~ ~ 0.4 0.3 0.4 0.1 4 force @a[predicate=!cannons:seeparticles]
tag @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..}] add Hit2

execute at @s[tag=!Hit1,tag=BouncyCannonball] run playsound bounce master @a ~ ~ ~ 2 0.8
execute at @s[tag=!Hit1,tag=BouncyCannonball] run tp @s @s

tag @s[tag=Hit1,tag=BouncyCannonball,scores={doublehit=..3}] add bouncing
execute at @s[tag=bouncing] unless score @s bouncedelay matches 2.. unless block ~ ~-1 ~ #cannons:cannonball_passable run scoreboard players set $bounce CmdData 1
execute at @s[tag=bouncing] unless score @s bouncedelay matches 2.. unless block ~ ~ ~ #cannons:cannonball_passable run scoreboard players set $bounce CmdData 1
execute at @s[tag=bouncing] unless score @s bouncedelay matches 2.. if block ~ ~-0.5 ~ spruce_slab[type=bottom] run scoreboard players set $bounce CmdData 1
execute at @s[tag=bouncing] unless score @s bouncedelay matches 2.. if block ~ ~-1 ~ spruce_slab[type=double] run scoreboard players set $bounce CmdData 1
execute at @s[tag=bouncing] unless score @s bouncedelay matches 2.. if block ~ ~-1 ~ spruce_slab[type=top] run scoreboard players set $bounce CmdData 1
execute at @s[tag=bouncing] unless score @s bouncedelay matches 2.. if block ~ ~ ~ spruce_slab[type=double] run scoreboard players set $bounce CmdData 1
execute at @s[tag=bouncing] unless score @s bouncedelay matches 2.. if block ~ ~ ~ spruce_slab[type=top] run scoreboard players set $bounce CmdData 1
execute at @s[tag=bouncing] unless score @s bouncedelay matches 2.. if block ~ ~-0.0625 ~ gray_carpet run scoreboard players set $bounce CmdData 1
execute at @s[tag=bouncing] unless score @s bouncedelay matches 2.. if block ~ ~-0.1875 ~ spruce_trapdoor[half=bottom] run scoreboard players set $bounce CmdData 1
execute at @s[tag=bouncing] if score $bounce CmdData matches 1 run function cannons:bounce/randomdirection
execute at @s[tag=bouncing] if score $bounce CmdData matches 1 run function cannons:bounce
scoreboard players reset $bounce CmdData
scoreboard players reset @s[tag=bouncing,scores={bouncedelay=16..}] bouncedelay
scoreboard players reset @s[tag=Hit1,tag=BouncyCannonball,scores={doublehit=4..}] doublehit
tag @s add Hit1

execute as @e[type=marker,tag=ImpactMarker] at @s unless score @s CmdData matches 1.. run function cannons:spawncreeper

execute at @s[tag=Hit2,tag=ChainCannonball] run kill @e[type=armor_stand,tag=ChainAnchor,limit=1,sort=nearest]
kill @s[tag=Hit2]