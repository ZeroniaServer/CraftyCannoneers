execute at @s if entity @a[team=!Lobby,team=!Spectator,distance=..20] run function cannons:bounce/towardsplayer
execute at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..20] run function cannons:bounce/randomdirection

scoreboard players add @s drag 4
scoreboard players set @s gravity -250
particle sweep_attack ~ ~ ~ 1 0.1 1 0 8 force
particle cloud ~ ~ ~ 1 0.2 1 0.05 12 force

execute at @s run function cannons:bounce/sound

execute if score @s bounce matches 7.. run scoreboard players set $max RNGmax 100
execute if score @s bounce matches 7.. at @s run summon marker ~ ~ ~ {Tags:["ExplodeRNG"]}
execute if score @s bounce matches 7.. store result score $explode RNGscore run data get entity @e[type=marker,tag=ExplodeRNG,limit=1] UUID[0]
kill @e[type=marker,tag=ExplodeRNG,limit=1]
execute if score @s bounce matches 7.. run scoreboard players operation $explode RNGscore %= $max RNGmax
scoreboard players reset $max RNGmax

scoreboard players add @s bounce 1

scoreboard players set @s bouncedelay 1

#explosion
execute at @s[tag=!InSafezone,tag=!Hit2] if score $explode RNGscore matches 80.. run summon marker ~ ~1 ~ {Tags:["ImpactMarker","Power3"]}
execute at @s[tag=InSafezone,tag=!Hit2] if score $explode RNGscore matches 80.. run summon marker ~ ~1 ~ {Tags:["ImpactMarker","Power1"]}
execute at @s[tag=!Hit2] if score $explode RNGscore matches 80.. run playsound cannonball master @a ~ ~ ~ 4 1.2
execute at @s[tag=!Hit2] if score $explode RNGscore matches 80.. run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1.2
execute at @s[tag=!Hit2] if score $explode RNGscore matches 80.. run particle explosion ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!Hit2] if score $explode RNGscore matches 80.. run particle flash ~ ~ ~ 0 0 0 0 5 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!Hit2] if score $explode RNGscore matches 80.. run particle lava ~ ~ ~ 1 1 1 0.1 10 force @a[predicate=cannons:seeparticles]
execute at @s[tag=!Hit2] if score $explode RNGscore matches 80.. run function cannons:bounce/killslime
execute if score $explode RNGscore matches 80.. run tag @s[tag=!Hit2] add Hit2

execute as @e[type=marker,tag=ImpactMarker,tag=!HasUUID] at @s run scoreboard players operation @s playerUUID = @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..4] playerUUID
execute as @e[type=marker,tag=ImpactMarker,tag=!HasUUID] at @s run data modify entity @s CustomName set from entity @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..4] CustomName
tag @e[type=marker,tag=ImpactMarker,tag=!HasUUID] add HasUUID

execute if score $explode RNGscore matches 80.. run tag @s add Hit2
scoreboard players reset $explode RNGscore

data modify storage craftycannoneers:cannonball Pos set from entity @s Pos
execute store result score @s x run data get storage craftycannoneers:cannonball Pos[0] 1000000
execute store result score @s y run data get storage craftycannoneers:cannonball Pos[1] 1000000
execute store result score @s z run data get storage craftycannoneers:cannonball Pos[2] 1000000

tp @s ^ ^ ^0.0001

data modify storage craftycannoneers:cannonball Pos set from entity @s Pos
execute store result score @s dx run data get storage craftycannoneers:cannonball Pos[0] 1000000
execute store result score @s dy run data get storage craftycannoneers:cannonball Pos[1] 1000000
execute store result score @s dz run data get storage craftycannoneers:cannonball Pos[2] 1000000

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dy -= @s y
scoreboard players operation @s dz -= @s z

#########
#How to change the speed:
#        "(...) Motion[0] double 0.002 (...)"        <--- the bigger this number, the faster the entity
#########

data modify storage craftycannoneers:cannonball Motion set value [0d, 0d, 0d]
execute store result storage craftycannoneers:cannonball Motion[0] double 0.001 run scoreboard players get @s dx
execute store result storage craftycannoneers:cannonball Motion[1] double 0.008 run scoreboard players get @s dy
execute store result storage craftycannoneers:cannonball Motion[2] double 0.001 run scoreboard players get @s dz
data modify entity @s Motion set from storage craftycannoneers:cannonball Motion

tag @s add CannonballShot

execute store result score @s x run data get storage craftycannoneers:cannonball Motion[0] 1000
execute store result score @s y run data get storage craftycannoneers:cannonball Motion[1] 1000
execute store result score @s z run data get storage craftycannoneers:cannonball Motion[2] 1000
data remove storage craftycannoneers:cannonball Motion

execute if block ~ ~-1 ~ water run tp @s ~ ~-1 ~