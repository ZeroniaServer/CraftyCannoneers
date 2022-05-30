summon marker ~ ~ ~ {Tags:["BounceRNG"]}
scoreboard players set @e[type=marker,tag=BounceRNG] RNGmax 10
execute as @e[type=marker,tag=BounceRNG] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=BounceRNG] run scoreboard players operation @s RNGscore %= @s RNGmax

execute as @s if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=..0}] at @s run tp @s ~ ~ ~ ~30 ~
execute as @s if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=1}] at @s run tp @s ~ ~ ~ ~-30 ~
execute as @s if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=2}] at @s run tp @s ~ ~ ~ ~45 ~
execute as @s if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=3}] at @s run tp @s ~ ~ ~ ~-45 ~
execute as @s if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=4}] at @s run tp @s ~ ~ ~ ~90 ~
execute as @s if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=5}] at @s run tp @s ~ ~ ~ ~-90 ~
execute as @s if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=6}] at @s run tp @s ~ ~ ~ ~10 ~
execute as @s if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=7}] at @s run tp @s ~ ~ ~ ~-10 ~
execute as @s if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=8}] at @s run tp @s ~ ~ ~ ~5 ~
execute as @s if entity @e[type=marker,tag=BounceRNG,scores={RNGscore=9}] at @s run tp @s ~ ~ ~ ~-5 ~

kill @e[tag=BounceRNG]

scoreboard players add @s drag 4
scoreboard players set @s gravity -400

execute as @s at @s run playsound bounce master @a ~ ~ ~ 2 1

summon marker ~ ~ ~ {Tags:["ExplodeRNG"]}
scoreboard players set @e[type=marker,tag=ExplodeRNG] RNGmax 100
execute as @e[type=marker,tag=ExplodeRNG] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=ExplodeRNG] run scoreboard players operation @s RNGscore %= @s RNGmax
execute as @s[tag=!InSafezone,tag=!Hit2] if entity @e[type=marker,tag=ExplodeRNG,scores={RNGscore=80..}] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power3"]}
execute as @s[tag=InSafezone,tag=!Hit2] if entity @e[type=marker,tag=ExplodeRNG,scores={RNGscore=80..}] at @s run summon marker ^ ^ ^1 {Tags:["ImpactMarker","Power1"]}

execute as @e[type=marker,tag=ImpactMarker,tag=!HasUUID] at @s run scoreboard players operation @s playerUUID = @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..4] playerUUID
execute as @e[type=marker,tag=ImpactMarker,tag=!HasUUID] at @s run data modify entity @s CustomName set from entity @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..4] CustomName
tag @e[type=marker,tag=ImpactMarker,tag=!HasUUID] add HasUUID

execute as @s if entity @e[type=marker,tag=ExplodeRNG,scores={RNGscore=80..}] run tag @s add Hit2
execute as @s if entity @e[type=marker,tag=ExplodeRNG,scores={RNGscore=80..}] run playsound cannonball master @a ~ ~ ~ 4 1.2
execute as @s if entity @e[type=marker,tag=ExplodeRNG,scores={RNGscore=80..}] run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1.2
kill @e[tag=ExplodeRNG]












execute store result score @s x run data get entity @s Pos[0] 1000000
execute store result score @s y run data get entity @s Pos[1] 1000000
execute store result score @s z run data get entity @s Pos[2] 1000000

tp @s ^ ^ ^0.0001

execute store result score @s dx run data get entity @s Pos[0] 1000000
execute store result score @s dy run data get entity @s Pos[1] 1000000
execute store result score @s dz run data get entity @s Pos[2] 1000000

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dy -= @s y
scoreboard players operation @s dz -= @s z

#########
#How to change the speed:
#        "(...) Motion[0] double 0.002 (...)"        <--- the bigger this number, the faster the entity
#########

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s dx
execute store result entity @s Motion[1] double 0.008 run scoreboard players get @s dy
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s dz

tag @s add CannonballShot

execute store result score @s x run data get entity @s Motion[0] 1000
execute store result score @s y run data get entity @s Motion[1] 1000
execute store result score @s z run data get entity @s Motion[2] 1000