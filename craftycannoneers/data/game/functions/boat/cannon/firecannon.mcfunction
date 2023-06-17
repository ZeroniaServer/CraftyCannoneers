#> Begin
scoreboard players add @s cannonshot 1
execute if entity @s[scores={cannonshot=1}] on passengers on passengers on passengers run item replace entity @s[type=husk] armor.head with mooshroom_spawn_egg{CustomModelData:12}
execute at @s[scores={cannonshot=1}] run playsound cannonload master @a ~ ~ ~ 1 1

#> Fire time depends on gunpowder amount
#TODO improve these ranges? @YZERO
execute at @s[scores={cannonshot=5,PowerM=1..2}] run playsound cannonprime master @a ~ ~ ~ 0.4 1.8
execute at @s[scores={cannonshot=5,PowerM=1..2}] run scoreboard players set @s cannonshot 25

execute at @s[scores={cannonshot=5,PowerM=3..4}] run playsound cannonprime master @a ~ ~ ~ 0.4 1.7
execute at @s[scores={cannonshot=5,PowerM=3..4}] run scoreboard players set @s cannonshot 10

execute at @s[scores={cannonshot=5,PowerM=5..}] run playsound cannonprime master @a ~ ~ ~ 0.4 1.6

#> Particles/Sounds
#TODO flame particles for gunpowder slot @YZERO

#Normal Cannonball
execute at @s[scores={cannonshot=30,CannonID=1}] run playsound cannonshot master @a ~ ~ ~ 6 1
execute at @s[scores={cannonshot=30,CannonID=1}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1

#Hot Cannonball
execute at @s[scores={cannonshot=26,CannonID=2}] run playsound cannonshot master @a ~ ~ ~ 6 0.85
execute at @s[scores={cannonshot=26,CannonID=2}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 0.85
execute at @s[scores={cannonshot=26,CannonID=2}] run playsound fireshot master @a ~ ~ ~ 4 1

#Cannonball Cluster
execute at @s[scores={cannonshot=26,CannonID=3}] run playsound cannonshot master @a ~ ~ ~ 6 1.2
execute at @s[scores={cannonshot=26,CannonID=3}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.2
execute at @s[scores={cannonshot=26,CannonID=3}] run playsound cluster master @a ~ ~ ~ 4 1

#Gas Cannonball
execute at @s[scores={cannonshot=26,CannonID=4}] run playsound cannonshot master @a ~ ~ ~ 6 1.05
execute at @s[scores={cannonshot=26,CannonID=4}] run playsound cannonshot_distant master @a
execute at @s[scores={cannonshot=26,CannonID=4}] run playsound gasshot master @a ~ ~ ~ 4 1

#Chain Cannonball
execute at @s[scores={cannonshot=26,CannonID=5}] run playsound cannonshot master @a ~ ~ ~ 6 0.9
execute at @s[scores={cannonshot=26,CannonID=5}] run playsound cannonshot2 master @a ~ ~ ~ 4 0
execute at @s[scores={cannonshot=26,CannonID=5}] run playsound cannonshot2 master @a ~ ~ ~ 4 1
execute at @s[scores={cannonshot=26,CannonID=5}] run playsound cannonshot2 master @a ~ ~ ~ 4 1.3
execute at @s[scores={cannonshot=26,CannonID=5}] run playsound cannonshot2 master @a ~ ~ ~ 4 0.7
execute at @s[scores={cannonshot=26,CannonID=5}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 0.9

#Bouncy Cannonball
execute at @s[scores={cannonshot=26,CannonID=6}] run playsound cannonshot master @a ~ ~ ~ 6 1.1
execute at @s[scores={cannonshot=26,CannonID=6}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.1
execute at @s[scores={cannonshot=26,CannonID=6}] run playsound bounceshot master @a ~ ~ ~ 4 1

#Player Cannonball
execute at @s[scores={cannonshot=26,CannonID=7}] run playsound cannonshot master @a ~ ~ ~ 6 1.3
execute at @s[scores={cannonshot=30,CannonID=7}] run playsound playershot master @a ~ ~ ~ 6.5 1
execute at @s[scores={cannonshot=26,CannonID=7}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.3

#Tracer Cannonball
execute at @s[scores={cannonshot=30,CannonID=8}] on passengers run tag @s[type=player] add HoldTCB
execute at @s[scores={cannonshot=30,CannonID=8}] run particle explosion ^ ^2.1 ^2 0.1 0.1 0.1 0.1 3 force @a[tag=HoldTCB]
execute at @s[scores={cannonshot=30,CannonID=8}] run particle flame ^ ^2.1 ^2 0.1 0.1 0.1 0.3 6 force @a[tag=HoldTCB]
execute at @s[scores={cannonshot=30,CannonID=8}] run particle campfire_cosy_smoke ^ ^0.8 ^2 0.1 0.1 0.1 0.02 10 force @a[tag=HoldTCB]
execute at @s[scores={cannonshot=30,CannonID=8}] run particle lava ^ ^2.1 ^2 0.1 0.1 0.1 0.02 10 force @a[tag=HoldTCB]
execute at @s[scores={cannonshot=30,CannonID=8}] run playsound cannonshot master @a[tag=HoldTCB] ~ ~ ~ 0.7 2
execute at @s[scores={cannonshot=30,CannonID=8}] on passengers run tag @s[type=player] remove HoldTCB

#Golden Cannonball
execute at @s[scores={cannonshot=30,CannonID=9}] run playsound cannonshot master @a ~ ~ ~ 6 1
execute at @s[scores={cannonshot=30,CannonID=9}] run playsound goldshot master @a ~ ~ ~ 4 1
execute at @s[scores={cannonshot=30,CannonID=9}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1

#Copper Cannonball
execute at @s[scores={cannonshot=30,CannonID=10}] run playsound cannonshot master @a ~ ~ ~ 6 1.1
execute at @s[scores={cannonshot=30,CannonID=10}] run playsound shockshot master @a ~ ~ ~ 4 1
execute at @s[scores={cannonshot=30,CannonID=10}] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.1

#Particles (non-Tracer)
execute at @s[scores={cannonshot=26}] unless score @s CannonID matches 8 run particle explosion ^ ^2.1 ^2 0.1 0.1 0.1 0.1 3 force @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=26}] unless score @s CannonID matches 8 run particle flame ^ ^2.1 ^2 0.1 0.1 0.1 0.3 6 force @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=26}] unless score @s CannonID matches 8 run particle campfire_cosy_smoke ^ ^0.8 ^2 0.1 0.1 0.1 0.02 10 force @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=26}] unless score @s CannonID matches 8 run particle lava ^ ^2.1 ^2 0.1 0.1 0.1 0.02 10 force @a[predicate=cannons:seeparticles]

#> Shoot
#TODO polish cannonball trajectories @YZERO
execute store result score @s[scores={cannonshot=30}] eyeclick run data get entity @s Rotation[0]
scoreboard players operation @s[scores={cannonshot=30}] eyeclick /= 2 const
tag @s[scores={cannonshot=30}] add Shoot
execute at @s[scores={cannonshot=30}] positioned ^ ^2 ^3.6 run function game:boat/rotate/tree/root
execute at @s[scores={cannonshot=30}] run function game:boat/cannon/cannonballtick

#> Recoil
execute if entity @s[scores={cannonshot=30..}] at @s run function game:boat/cannon/recoil

#> Finish shooting
execute if entity @s[scores={cannonshot=35..}] run function game:boat/cannon/finishshoot