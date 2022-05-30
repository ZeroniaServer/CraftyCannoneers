execute as @s[tag=!Hit1] at @s unless entity @s[predicate=cannons:safezones/island] run fill ~ ~-1 ~ ~ ~-1 ~ air replace #game:shipblocks
execute as @s[tag=!Hit1] at @s unless entity @s[predicate=cannons:safezones/island] run fill ^1 ^1 ^1 ^-1 ^-1 ^1 air replace #game:shipblocks

execute at @s run tp @s ^ ^ ^1
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
execute as @s[tag=!InSafezone,tag=!Hit1,tag=HotCannonball] unless entity @s[scores={doublehit=1..}] at @s run summon marker ^ ^-2 ^3 {Tags:["RingOfFire"]}
#GAS EFFECT
execute as @s[tag=!InSafezone,tag=Hit1,tag=GasCannonball] at @s run summon marker ^ ^-2 ^3 {Tags:["GasCloud"]}

execute as @s[tag=InSafezone,tag=!Hit1,tag=!CannonballCluster] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1"]}
execute as @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..},tag=!CannonballCluster] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1"]}
execute as @s[tag=!InSafezone,tag=!Hit1,tag=!ChainCannonball,tag=!CannonballCluster] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power3"]}
execute as @s[tag=!InSafezone,tag=Hit1,tag=!ChainCannonball,scores={doublehit=4..},tag=!CannonballCluster] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power2"]}

execute as @s[tag=InSafezone,tag=!Hit1,tag=CannonballCluster] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1","cluster"]}
execute as @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..},tag=CannonballCluster] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1","cluster"]}
execute as @s[tag=!InSafezone,tag=!Hit1,tag=CannonballCluster] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power3","cluster"]}
execute as @s[tag=!InSafezone,tag=Hit1,scores={doublehit=4..},tag=CannonballCluster] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power2","cluster"]}


#Chain effect
execute as @s[tag=ChainCannonball,predicate=cannons:ships/purple] at @s if entity @s[predicate=cannons:ships/abovesails] run scoreboard players add $DamagePurple CmdData 20
execute as @s[tag=ChainCannonball,predicate=cannons:ships/orange] at @s if entity @s[predicate=cannons:ships/abovesails] run scoreboard players add $DamageOrange CmdData 20


execute as @s[tag=!InSafezone,tag=!Hit1,tag=ChainCannonball] at @s run summon marker ^ ^ ^2 {Tags:["ImpactMarker","Power2"]}
execute as @s[tag=!InSafezone,tag=!Hit1,tag=ChainCannonball] at @s run summon marker ^ ^ ^2 {Tags:["ImpactMarker","Power2"]}

execute as @s[tag=!InSafezone,tag=Hit1,tag=ChainCannonball,scores={doublehit=4..}] at @s run summon marker ^ ^ ^-2 {Tags:["ImpactMarker","Power2"]}
execute as @s[tag=!InSafezone,tag=Hit1,tag=ChainCannonball,scores={doublehit=4..}] at @s run summon marker ^ ^ ^-2 {Tags:["ImpactMarker","Power2"]}


execute as @e[type=marker,tag=ImpactMarker,tag=!HasUUID] at @s run scoreboard players operation @s playerUUID = @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..4] playerUUID
execute as @e[type=marker,tag=ImpactMarker,tag=!HasUUID] at @s run data modify entity @s CustomName set from entity @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..4] CustomName
tag @e[type=marker,tag=ImpactMarker,tag=!HasUUID] add HasUUID

execute as @e[type=marker,tag=ImpactMarker] at @s unless entity @s[scores={CmdData=1..}] run function cannons:spawncreeper


execute as @s[tag=!Hit1,predicate=cannons:ships/orange] at @s run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute as @s[tag=!Hit1,predicate=cannons:ships/purple] at @s run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute as @s[tag=Hit1,scores={doublehit=4..},predicate=cannons:ships/orange] at @s run playsound shipdamage1 master @a ~ ~ ~ 2 1
execute as @s[tag=Hit1,scores={doublehit=4..},predicate=cannons:ships/purple] at @s run playsound shipdamage1 master @a ~ ~ ~ 2 1
execute as @s[tag=!Hit1,tag=!CannonballCluster] at @s run playsound cannonball master @a ~ ~ ~ 4 1
execute as @s[tag=!Hit1,tag=!CannonballCluster] at @s run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1
execute as @s[tag=Hit1,scores={doublehit=4..},tag=!CannonballCluster] at @s run playsound cannonball master @a ~ ~ ~ 4 1.2
execute as @s[tag=Hit1,scores={doublehit=4..},tag=!CannonballCluster] at @s run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1.2
tag @s[tag=Hit1,scores={doublehit=4..}] add Hit2
tag @s add Hit1

kill @s[tag=Hit2]