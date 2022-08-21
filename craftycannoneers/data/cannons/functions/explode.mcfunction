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
execute as @e[type=marker,tag=RingOfFire,tag=!HasUUID] at @s run scoreboard players operation @s playerUUID = @e[type=armor_stand,tag=HotCannonball,limit=1,sort=nearest,distance=..4] playerUUID
execute as @e[type=marker,tag=RingOfFire,tag=!HasUUID] at @s run data modify entity @s CustomName set from entity @e[type=armor_stand,tag=HotCannonball,limit=1,sort=nearest,distance=..4] CustomName
tag @e[type=marker,tag=RingOfFire,tag=!HasUUID] add HasUUID

#GAS EFFECT
execute if entity @s[tag=Hit1,tag=GasCannonball] at @s run summon marker ^ ^-2 ^3 {Tags:["GasCloud"]}

#General Impact Marker
execute if entity @s[tag=InSafezone,tag=!Hit1,tag=!CannonballCluster,tag=!GoldenCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1"]}
execute if entity @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..},tag=!CannonballCluster,tag=!BouncyCannonball,tag=!GoldenCannonball,tag=!GasCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1","Hit1"]}
execute if entity @s[tag=!InSafezone,tag=!Hit1,tag=!Cannonball,tag=!ChainCannonball,tag=!CannonballCluster,tag=!GoldenCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power3"]}
execute if entity @s[tag=!InSafezone,tag=Hit1,tag=!Cannonball,tag=!ChainCannonball,scores={doublehit=4..},tag=!CannonballCluster,tag=!BouncyCannonball,tag=!GoldenCannonball,tag=!GasCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power2","Hit1"]}

#Normal Cannonball
execute if entity @s[tag=!InSafezone,tag=!Hit1,tag=Cannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power2"]}
execute if entity @s[tag=!InSafezone,tag=Hit1,tag=Cannonball,scores={doublehit=4..},tag=!CannonballCluster,tag=!BouncyCannonball,tag=!GoldenCannonball,tag=!GasCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1","Hit1"]}

#Gas Cannonball (default Hit1)
execute if entity @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..},tag=GasCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1"]}
execute if entity @s[tag=!InSafezone,tag=Hit1,scores={doublehit=4..},tag=GasCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power2"]}

#Golden Cannonball
execute if entity @s[tag=InSafezone,tag=!Hit1,tag=GoldenCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1","GoldImpact"]}
execute if entity @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..},tag=GoldenCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1","Hit1","GoldImpact"]}
execute if entity @s[tag=!InSafezone,tag=!Hit1,tag=GoldenCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power3","GoldImpact"]}
execute if entity @s[tag=!InSafezone,tag=Hit1,scores={doublehit=4..},tag=GoldenCannonball] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power2","Hit1","GoldImpact"]}

#Cannonball Cluster
execute if entity @s[tag=InSafezone,tag=!Hit1,tag=CannonballCluster] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1","cluster"]}
execute if entity @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..},tag=CannonballCluster] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1","cluster"]}
execute if entity @s[tag=!InSafezone,tag=!Hit1,tag=CannonballCluster] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power3","cluster"]}
execute if entity @s[tag=!InSafezone,tag=Hit1,scores={doublehit=4..},tag=CannonballCluster] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power2","cluster"]}

#Chain effect
execute if entity @s[tag=ChainCannonball,tag=!Hit1,predicate=cannons:ships/purple] at @s if entity @s[predicate=cannons:ships/abovesails] run scoreboard players operation $hitmarkuuid playerUUID = @s playerUUID
execute if entity @s[tag=ChainCannonball,tag=!Hit1,predicate=cannons:ships/purple] at @s if entity @s[predicate=cannons:ships/abovesails] run scoreboard players add $DamagePurple CmdData 20
execute if entity @s[tag=ChainCannonball,tag=!Hit1,predicate=cannons:ships/purple] at @s if entity @s[predicate=cannons:ships/abovesails] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=ChainCannonball,tag=!Hit1,predicate=cannons:ships/purple] at @s if entity @s[predicate=cannons:ships/abovesails] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players set @s HitmarkerType 1
execute if entity @s[tag=ChainCannonball,tag=!Hit1,predicate=cannons:ships/purple] at @s if entity @s[predicate=cannons:ships/abovesails] run scoreboard players reset $hitmarkuuid
execute if entity @s[tag=ChainCannonball,tag=!Hit1,predicate=cannons:ships/orange] at @s if entity @s[predicate=cannons:ships/abovesails] run scoreboard players operation $hitmarkuuid playerUUID = @s playerUUID
execute if entity @s[tag=ChainCannonball,tag=!Hit1,predicate=cannons:ships/orange] at @s if entity @s[predicate=cannons:ships/abovesails] run scoreboard players add $DamageOrange CmdData 20
execute if entity @s[tag=ChainCannonball,tag=!Hit1,predicate=cannons:ships/orange] at @s if entity @s[predicate=cannons:ships/abovesails] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=ChainCannonball,tag=!Hit1,predicate=cannons:ships/orange] at @s if entity @s[predicate=cannons:ships/abovesails] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players set @s HitmarkerType 1
execute if entity @s[tag=ChainCannonball,tag=!Hit1,predicate=cannons:ships/orange] at @s if entity @s[predicate=cannons:ships/abovesails] run scoreboard players reset $hitmarkuuid
execute if entity @s[tag=ChainCannonball,tag=!Hit1,predicate=cannons:ships/tutorial] at @s if entity @s[predicate=cannons:ships/abovesails] run scoreboard players operation $hitmarkuuid playerUUID = @s playerUUID
execute if entity @s[tag=ChainCannonball,tag=!Hit1,predicate=cannons:ships/tutorial] at @s if entity @s[predicate=cannons:ships/abovesails] as @a[team=Lobby] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=ChainCannonball,tag=!Hit1,predicate=cannons:ships/tutorial] at @s if entity @s[predicate=cannons:ships/abovesails] as @a[team=Lobby] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players set @s HitmarkerType 1
execute if entity @s[tag=ChainCannonball,tag=!Hit1,predicate=cannons:ships/tutorial] at @s if entity @s[predicate=cannons:ships/abovesails] run scoreboard players reset $hitmarkuuid

execute if entity @s[tag=!InSafezone,tag=!Hit1,tag=ChainCannonball] at @s run summon marker ^ ^ ^1.4 {Tags:["ImpactMarker","Power2"]}
execute if entity @s[tag=!InSafezone,tag=!Hit1,tag=ChainCannonball] at @s run summon marker ^ ^ ^-1.4 {Tags:["ImpactMarker","Power2"]}

execute if entity @s[tag=!InSafezone,tag=Hit1,tag=ChainCannonball,scores={doublehit=4..}] at @s run summon marker ^ ^ ^1.4 {Tags:["ImpactMarker","Power2","Hit1"]}
execute if entity @s[tag=!InSafezone,tag=Hit1,tag=ChainCannonball,scores={doublehit=4..}] at @s run summon marker ^ ^ ^-1.4 {Tags:["ImpactMarker","Power2","Hit1"]}


execute as @e[type=marker,tag=ImpactMarker,tag=!HasUUID] at @s run scoreboard players operation @s playerUUID = @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..4] playerUUID
execute as @e[type=marker,tag=ImpactMarker,tag=!HasUUID] at @s run data modify entity @s CustomName set from entity @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..4] CustomName
tag @e[type=marker,tag=ImpactMarker,tag=!HasUUID] add HasUUID



execute if entity @s[tag=!Hit1,tag=!BouncyCannonball,predicate=cannons:ships/orange] at @s run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute if entity @s[tag=!Hit1,tag=!BouncyCannonball,predicate=cannons:ships/purple] at @s run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},predicate=cannons:ships/orange] at @s run playsound shipdamage1 master @a ~ ~ ~ 2 1
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},predicate=cannons:ships/purple] at @s run playsound shipdamage1 master @a ~ ~ ~ 2 1
execute if entity @s[tag=!Hit1,tag=!BouncyCannonball,tag=!CannonballCluster] at @s run playsound cannonball master @a ~ ~ ~ 4 1
execute if entity @s[tag=!Hit1,tag=!BouncyCannonball,tag=!CannonballCluster] at @s run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=!CannonballCluster] at @s run playsound cannonball master @a ~ ~ ~ 4 1.2
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=!CannonballCluster] at @s run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1.2
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=!CannonballCluster] at @s run particle explosion ~ ~ ~ 1 1 1 0.1 10 force @a
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=!CannonballCluster] at @s run particle flash ~ ~ ~ 0 0 0 0 5 force @a
execute if entity @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..},tag=!CannonballCluster] at @s run particle lava ~ ~ ~ 1 1 1 0.1 10 force @a
tag @s[tag=Hit1,tag=!BouncyCannonball,scores={doublehit=4..}] add Hit2

execute if entity @s[tag=!Hit1,tag=BouncyCannonball] at @s run playsound bounce master @a ~ ~ ~ 2 0.8
execute if entity @s[tag=!Hit1,tag=BouncyCannonball] at @s run tp @s @s

execute if entity @s[tag=Hit1,tag=BouncyCannonball,scores={doublehit=..3}] at @s run tag @s add bouncing
execute if entity @s[tag=Hit1,tag=BouncyCannonball,scores={doublehit=..3}] at @s run scoreboard players add @s gravity 100
execute if entity @s[tag=Hit1,tag=BouncyCannonball,scores={doublehit=4..}] at @s run function cannons:bounce
execute if entity @s[tag=Hit1,tag=BouncyCannonball,scores={doublehit=4..}] at @s run scoreboard players reset @s doublehit
tag @s add Hit1

execute as @e[type=marker,tag=ImpactMarker] at @s unless entity @s[scores={CmdData=1..}] run function cannons:spawncreeper

execute if entity @s[tag=Hit2,tag=ChainCannonball] run kill @e[type=armor_stand,tag=ChainAnchor,limit=1,sort=nearest]
kill @s[tag=Hit2]