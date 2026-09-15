#>Safezone check
tag @s[predicate=cannons:safezones/island] add InSafezone
tag @s[predicate=cannons:safezones/ships] add InSafezone
tag @s[predicate=cannons:safezones/lobby] add InSafezone
execute at @s[tag=!InSafezone] if entity @e[type=item_display,tag=cannon,distance=..2] run tag @s add InSafezone
execute at @s[tag=!InSafezone] if entity @e[type=interaction,tag=cannon,distance=..2] run tag @s add InSafezone

execute at @s[tag=!Hit1,tag=!InSafezone] store result score @s CalcAir1 run fill ~ ~-1 ~ ~ ~-1 ~ air replace #game:shipblocks
execute at @s[tag=!Hit1,tag=!InSafezone] store result score @s CalcAir2 run fill ^1 ^1 ^1 ^-1 ^-1 ^1 air replace #game:shipblocks

execute at @s[tag=CopperCannonball,tag=!StrikeLightning,tag=!InSafezone] store result score @s CalcAir1 run fill ~ ~-1 ~ ~ ~-1 ~ air replace #game:shipblocks
execute at @s[tag=CopperCannonball,tag=!StrikeLightning,tag=!InSafezone] store result score @s CalcAir2 run fill ^1 ^1 ^1 ^-1 ^-1 ^1 air replace #game:shipblocks

execute at @s[tag=!BouncyCannonball,tag=!PlayerCannonball,tag=!Hit1] run tp @s ^ ^ ^1

#FIREBALL EFFECT
execute at @s[tag=!Hit1,tag=HotCannonball] unless score @s doublehit matches 1.. run scoreboard players operation @e[type=item_display,tag=GasBubble,tag=!GasIgnite,distance=..6] playerUUID = @s playerUUID
execute at @s[tag=!Hit1,tag=HotCannonball] unless score @s doublehit matches 1.. run tag @e[type=item_display,tag=GasBubble,tag=!GasIgnite,distance=..6] add GasIgnite
execute if score $BoatCannons CmdData matches 1 at @s[tag=!Hit1,tag=HotCannonball] run tag @e[type=oak_boat,tag=!OnFire,distance=..8,limit=2,sort=nearest] add OnFire
execute at @s[tag=!InSafezone,tag=!Hit1,tag=HotCannonball] unless score @s doublehit matches 1.. run summon marker ^ ^-2 ^3 {Tags:["RingOfFire"]}
execute at @s[tag=!Hit1,tag=HotCannonball] unless score @s doublehit matches 1.. if predicate game:onpurple run scoreboard players add $PFireCount CmdData 1
execute at @s[tag=!Hit1,tag=HotCannonball] unless score @s doublehit matches 1.. if predicate game:onpurple run scoreboard players add $OFireCount CmdData 1
scoreboard players operation @e[type=marker,tag=RingOfFire,tag=!HasUUID,limit=1] playerUUID = @s playerUUID
data modify entity @e[type=marker,tag=RingOfFire,tag=!HasUUID,limit=1] CustomName set from entity @s CustomName
tag @e[type=marker,tag=RingOfFire,tag=!HasUUID,limit=1] add HasUUID

#GAS EFFECT
execute at @s[tag=Hit1,tag=GasCannonball] run summon marker ^ ^-2 ^3 {Tags:["GasCloud"]}

#General Impact Marker
execute at @s[tag=InSafezone,tag=!Hit1,tag=!CannonballCluster,tag=!GoldenCannonball] run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1"]}
execute at @s[tag=InSafezone,tag=Hit1,scores={doublehit=4..},tag=!CannonballCluster,tag=!BouncyCannonball,tag=!CopperCannonball,tag=!GoldenCannonball,tag=!GasCannonball] run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1","Hit1"]}
execute at @s[tag=!InSafezone,tag=!Hit1,tag=!Cannonball,tag=!ChainCannonball,tag=!CannonballCluster,tag=!CopperCannonball,tag=!GoldenCannonball] run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power3"]}
execute at @s[tag=!InSafezone,tag=Hit1,tag=!Cannonball,tag=!ChainCannonball,scores={doublehit=4..},tag=!CannonballCluster,tag=!BouncyCannonball,tag=!CopperCannonball,tag=!GoldenCannonball,tag=!GasCannonball] run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power2","Hit1"]}

#Normal Cannonball
execute at @s[tag=!InSafezone,tag=!Hit1,tag=Cannonball] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power2"]}
execute at @s[tag=!InSafezone,tag=Hit1,tag=Cannonball,scores={doublehit=4..},tag=!CannonballCluster,tag=!BouncyCannonball,tag=!CopperCannonball,tag=!GoldenCannonball,tag=!GasCannonball] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power1","Hit1"]}

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

#Copper Cannonball
execute at @s[tag=CopperCannonball,tag=StrikeLightning] if block ~ ~0.1 ~ air run tp @s ~ ~-0.1 ~
execute at @s[tag=CopperCannonball,tag=StrikeLightning] if block ~ ~0.1 ~ air run tp @s ~ ~-0.1 ~
execute at @s[tag=CopperCannonball,tag=StrikeLightning] if block ~ ~0.1 ~ air run tp @s ~ ~-0.1 ~
execute at @s[tag=CopperCannonball,tag=StrikeLightning] if block ~ ~0.1 ~ air run tp @s ~ ~-0.1 ~
execute at @s[tag=CopperCannonball,tag=StrikeLightning] if block ~ ~0.1 ~ air run tp @s ~ ~-0.1 ~
execute at @s[tag=CopperCannonball,tag=StrikeLightning] if block ~ ~0.1 ~ air run tp @s ~ ~-0.1 ~
execute at @s[tag=!InSafezone,tag=Hit1,tag=!StrikeLightning,tag=CopperCannonball] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power2"]}
execute at @s[tag=InSafezone,tag=Hit1,tag=!StrikeLightning,tag=CopperCannonball] run summon marker ^ ^ ^0.5 {Tags:["ImpactMarker","Power1"]}
scoreboard players add @s[tag=StrikeLightning] copperStrike 1
execute at @s[tag=CopperCannonball,scores={copperStrike=80},tag=!InSafezone] run summon marker ~ ~1 ~ {Tags:["ImpactMarker","Power2"]}
execute at @s[tag=CopperCannonball,scores={copperStrike=80},tag=InSafezone] run summon marker ~ ~1 ~ {Tags:["ImpactMarker","Power1"]}

scoreboard players operation @e[type=marker,tag=ImpactMarker,tag=!HasUUID] click += @s CalcAir1
scoreboard players operation @e[type=marker,tag=ImpactMarker,tag=!HasUUID] click += @s CalcAir2
scoreboard players operation @e[type=marker,tag=ImpactMarker,tag=!HasUUID] playerUUID = @s playerUUID
execute unless data entity @s CustomName run function cannons:namecannonball
data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute as @e[type=marker,tag=ImpactMarker,tag=!HasUUID] run data modify entity @s CustomName set from storage craftycannoneers:temp CustomName
tag @e[type=marker,tag=ImpactMarker,tag=!HasUUID] add HasUUID

execute if score $LostCargo CmdData matches 1 at @s[tag=!StreakIncreased,tag=!CSpread] run function game:modifiers/lostcargo/streak
execute at @s[tag=!Hit1,tag=!BouncyCannonball,tag=!CopperCannonball,tag=!ChainCannonball,predicate=cannons:ships/orange] run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute at @s[tag=!Hit1,tag=!BouncyCannonball,tag=!CopperCannonball,tag=!ChainCannonball,predicate=cannons:ships/purple] run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute at @s[tag=Hit1,tag=!BouncyCannonball,tag=!CopperCannonball,tag=!ChainCannonball,scores={doublehit=4..},predicate=cannons:ships/orange] run playsound shipdamage1 master @a ~ ~ ~ 2 1
execute at @s[tag=Hit1,tag=!BouncyCannonball,tag=!CopperCannonball,tag=!ChainCannonball,scores={doublehit=4..},predicate=cannons:ships/purple] run playsound shipdamage1 master @a ~ ~ ~ 2 1
execute at @s[tag=!Hit1,tag=!BouncyCannonball,tag=!CopperCannonball,tag=!ChainCannonball,tag=!CannonballCluster] run playsound cannonball master @a ~ ~ ~ 4 1
execute at @s[tag=!Hit1,tag=!BouncyCannonball,tag=!CopperCannonball,tag=!ChainCannonball,tag=!CannonballCluster] run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1
execute at @s[tag=Hit1,tag=!BouncyCannonball,tag=!CopperCannonball,tag=!ChainCannonball,scores={doublehit=4..},tag=!CannonballCluster] run playsound cannonball master @a ~ ~ ~ 4 1.2
execute at @s[tag=Hit1,tag=!BouncyCannonball,tag=!CopperCannonball,tag=!ChainCannonball,scores={doublehit=4..},tag=!CannonballCluster] run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1.2
execute at @s[tag=!BouncyCannonball,tag=!CopperCannonball,scores={doublehit=4..},tag=!CannonballCluster] run particle explosion ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!BouncyCannonball,tag=!CopperCannonball,scores={doublehit=4..},tag=!CannonballCluster] run particle flash{color:0xFFFFFF} ~ ~ ~ 0 0 0 0 5 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!BouncyCannonball,tag=!CopperCannonball,scores={doublehit=4..},tag=!CannonballCluster] run particle lava ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!BouncyCannonball,tag=!CopperCannonball,scores={doublehit=4..},tag=CannonballCluster] run particle explosion ~ ~ ~ 0.4 0.3 0.4 0.1 4 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!BouncyCannonball,tag=!CopperCannonball,scores={doublehit=4..},tag=CannonballCluster] run particle flash{color:0xFFFFFF} ~ ~ ~ 0 0 0 0 1 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!BouncyCannonball,tag=!CopperCannonball,scores={doublehit=4..},tag=CannonballCluster] run particle lava ~ ~ ~ 0.4 0.3 0.4 0.1 4 force @a[predicate=cannons:seeparticles]
tag @s[tag=Hit1,tag=!BouncyCannonball,tag=!CopperCannonball,scores={doublehit=4..}] add Hit2

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
execute at @s[tag=bouncing,scores={bouncedelay=1}] run function cannons:bounce/blast

execute at @s[tag=!StrikeLightning,tag=CopperCannonball] run playsound cannonball master @a ~ ~ ~ 4 1
execute at @s[tag=!StrikeLightning,tag=CopperCannonball] run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1
execute at @s[tag=!BouncyCannonball,tag=!CopperCannonball,tag=!CannonballCluster,tag=!Hit1] run particle explosion ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!BouncyCannonball,tag=!CopperCannonball,tag=!CannonballCluster,tag=!Hit1] run particle flash{color:0xFFFFFF} ~ ~ ~ 0 0 0 0 5 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!BouncyCannonball,tag=!CopperCannonball,tag=!CannonballCluster,tag=!Hit1] run particle lava ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=cannons:seeparticles]

execute at @s[tag=!BouncyCannonball,tag=!CopperCannonball,tag=!CannonballCluster,tag=Hit1,scores={doublehit=4..}] run particle explosion ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!BouncyCannonball,tag=!CopperCannonball,tag=!CannonballCluster,tag=Hit1,scores={doublehit=4..}] run particle flash{color:0xFFFFFF} ~ ~ ~ 0 0 0 0 5 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!BouncyCannonball,tag=!CopperCannonball,tag=!CannonballCluster,tag=Hit1,scores={doublehit=4..}] run particle lava ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=cannons:seeparticles]

execute at @s[tag=CopperCannonball,tag=!StrikeLightning] run particle explosion ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=cannons:seeparticles]
execute at @s[tag=CopperCannonball,tag=!StrikeLightning] run particle flash{color:0xFFFFFF} ~ ~ ~ 0 0 0 0 5 force @a[predicate=cannons:seeparticles]
execute at @s[tag=CopperCannonball,tag=!StrikeLightning] run particle lava ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=cannons:seeparticles]
tag @s add Hit1
tag @s[tag=!CannonballCluster,tag=!BouncyCannonball,tag=!GasCannonball,tag=!PlayerCannonball,tag=!CopperCannonball,predicate=cannons:safezones/island] add Hit2
tp @s[tag=CopperCannonball,predicate=!game:inwater] @s
tag @s[tag=CopperCannonball] add StrikeLightning

execute at @s[scores={copperStrike=1},predicate=!game:inwater] run scoreboard players operation @s drag *= $1200 CmdData
execute at @s[scores={copperStrike=1},predicate=!game:inwater] run scoreboard players operation @s gravity *= $1200 CmdData
execute at @s[scores={copperStrike=1},predicate=!game:inwater] run data merge entity @s {Marker:1b,NoGravity:1b,Motion:[0.0d,0.0d,0.0d]}

execute at @s[scores={copperStrike=20},predicate=!game:inwater] run summon marker ~ ~1 ~ {Tags:["LightningMarker","StormEntity","Instant"]}
execute at @s[scores={copperStrike=20},predicate=!game:inwater] as @a[team=!Spectator,team=!Lobby,predicate=!game:inwater,distance=..7,sort=random] at @s run summon marker ~ ~1 ~ {Tags:["LightningMarker","StormEntity","Instant"]}
execute at @s[scores={copperStrike=20},predicate=!game:inwater] run tag @e[type=item_display,tag=!OnFire,tag=CannonDisp,tag=CannonCart,tag=!OnFire,distance=..7,sort=nearest] add ByLightning
execute at @s[scores={copperStrike=20},predicate=!game:inwater] run tag @e[type=oak_boat,tag=!OnFire,distance=..7,limit=2,sort=nearest] add ByLightning
execute at @s[scores={copperStrike=20},predicate=!game:inwater] run tag @e[type=item_display,tag=!OnFire,tag=CannonDisp,tag=CannonCart,tag=!OnFire,distance=..7,sort=nearest] add OnFire
execute at @s[scores={copperStrike=20},predicate=!game:inwater] run tag @e[type=oak_boat,tag=!OnFire,distance=..7,limit=2,sort=nearest] add OnFire
item replace entity @s[scores={copperStrike=20},predicate=!game:inwater] armor.head with minecraft:diamond_hoe[custom_model_data={floats:[110.0f]}]

execute at @s[scores={copperStrike=35},predicate=!game:inwater] run summon marker ~ ~1 ~ {Tags:["LightningMarker","StormEntity","Instant"]}
execute at @s[scores={copperStrike=35},predicate=!game:inwater] as @a[team=!Spectator,team=!Lobby,predicate=!game:inwater,distance=..7,sort=random] at @s run summon marker ~ ~1 ~ {Tags:["LightningMarker","StormEntity","Instant"]}
execute at @s[scores={copperStrike=35},predicate=!game:inwater] run tag @e[type=item_display,tag=!OnFire,tag=CannonDisp,tag=CannonCart,tag=!OnFire,distance=..7,sort=nearest] add ByLightning
execute at @s[scores={copperStrike=35},predicate=!game:inwater] run tag @e[type=oak_boat,tag=!OnFire,distance=..7,limit=2,sort=nearest] add ByLightning
execute at @s[scores={copperStrike=35},predicate=!game:inwater] run tag @e[type=item_display,tag=!OnFire,tag=CannonDisp,tag=CannonCart,tag=!OnFire,distance=..7,sort=nearest] add OnFire
execute at @s[scores={copperStrike=35},predicate=!game:inwater] run tag @e[type=oak_boat,tag=!OnFire,distance=..7,limit=2,sort=nearest] add OnFire
item replace entity @s[scores={copperStrike=35},predicate=!game:inwater] armor.head with minecraft:diamond_hoe[custom_model_data={floats:[111.0f]}]

execute at @s[scores={copperStrike=55},predicate=!game:inwater] run summon marker ~ ~1 ~ {Tags:["LightningMarker","StormEntity","Instant"]}
execute at @s[scores={copperStrike=55},predicate=!game:inwater] as @a[team=!Spectator,team=!Lobby,predicate=!game:inwater,distance=..7,sort=random] at @s run summon marker ~ ~1 ~ {Tags:["LightningMarker","StormEntity","Instant"]}
execute at @s[scores={copperStrike=55},predicate=!game:inwater] run tag @e[type=item_display,tag=!OnFire,tag=CannonDisp,tag=CannonCart,tag=!OnFire,distance=..7,sort=nearest] add ByLightning
execute at @s[scores={copperStrike=55},predicate=!game:inwater] run tag @e[type=oak_boat,tag=!OnFire,distance=..7,limit=2,sort=nearest] add ByLightning
execute at @s[scores={copperStrike=55},predicate=!game:inwater] run tag @e[type=item_display,tag=!OnFire,tag=CannonDisp,tag=CannonCart,tag=!OnFire,distance=..7,sort=nearest] add OnFire
execute at @s[scores={copperStrike=55},predicate=!game:inwater] run tag @e[type=oak_boat,tag=!OnFire,distance=..7,limit=2,sort=nearest] add OnFire
item replace entity @s[scores={copperStrike=55},predicate=!game:inwater] armor.head with minecraft:diamond_hoe[custom_model_data={floats:[112.0f]}]

execute at @s[scores={copperStrike=70},predicate=!game:inwater] run summon marker ~ ~1 ~ {Tags:["LightningMarker","StormEntity","Instant"]}
execute at @s[scores={copperStrike=70},predicate=!game:inwater] as @a[team=!Spectator,team=!Lobby,predicate=!game:inwater,distance=..7,sort=random] at @s run summon marker ~ ~1 ~ {Tags:["LightningMarker","StormEntity","Instant"]}
execute at @s[scores={copperStrike=70},predicate=!game:inwater] run tag @e[type=item_display,tag=!OnFire,tag=CannonDisp,tag=CannonCart,tag=!OnFire,distance=..7,sort=nearest] add ByLightning
execute at @s[scores={copperStrike=70},predicate=!game:inwater] run tag @e[type=oak_boat,tag=!OnFire,distance=..7,limit=2,sort=nearest] add ByLightning
execute at @s[scores={copperStrike=70},predicate=!game:inwater] run tag @e[type=item_display,tag=!OnFire,tag=CannonDisp,tag=CannonCart,tag=!OnFire,distance=..7,sort=nearest] add OnFire
execute at @s[scores={copperStrike=70},predicate=!game:inwater] run tag @e[type=oak_boat,tag=!OnFire,distance=..7,limit=2,sort=nearest] add OnFire

execute at @s[scores={copperStrike=80..},predicate=!game:inwater] run playsound cannonball master @a ~ ~ ~ 4 1
execute at @s[scores={copperStrike=80..},predicate=!game:inwater] run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1
execute at @s[scores={copperStrike=80..},predicate=!game:inwater] run particle explosion ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=cannons:seeparticles]
execute at @s[scores={copperStrike=80..},predicate=!game:inwater] run particle flash{color:0xFFFFFF} ~ ~ ~ 0 0 0 0 5 force @a[predicate=cannons:seeparticles]
execute at @s[scores={copperStrike=80..},predicate=!game:inwater] run particle lava ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=cannons:seeparticles]
execute at @s[scores={copperStrike=80..},predicate=!game:inwater] run tag @s add Hit2

execute if score @s copperStrike matches 1.. run scoreboard players operation @e[type=marker,tag=LightningMarker,tag=Instant,tag=!HasUUID] playerUUID = @s playerUUID
execute if score @s copperStrike matches 1.. as @e[type=marker,tag=LightningMarker,tag=Instant,tag=!HasUUID] run data modify entity @s CustomName set from storage craftycannoneers:temp CustomName
execute if score @s copperStrike matches 1.. run tag @e[type=marker,tag=LightningMarker,tag=Instant,tag=!HasUUID] add HasUUID

execute if entity @s[tag=Hit1,tag=boatshot,tag=!BouncyCannonball,tag=!CopperCannonball] run function cannons:killcb
execute if entity @s[tag=Hit2] run function cannons:killcb