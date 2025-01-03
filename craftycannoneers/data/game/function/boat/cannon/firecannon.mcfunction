#> Begin
scoreboard players add @s cannonshot 1
scoreboard players set @s[scores={cannonshot=1,CannonID=8}] cannonshot 30
execute at @s[scores={cannonshot=1}] run function game:boat/motionlock
execute if entity @s[scores={cannonshot=2}] on passengers run item replace entity @s[tag=BoatCannonBarrel] container.0 with diamond_hoe[custom_model_data={floats:[131.0f]}]

execute at @s[scores={cannonshot=2}] run playsound cannonload master @a ~ ~ ~ 1 1

execute at @s[scores={cannonshot=5}] run playsound cannonprime master @a ~ ~ ~ 0.4 1.6

#> Particles/Sounds
execute at @s[scores={cannonshot=2}] run particle soul_fire_flame ^ ^0.9 ^0.55 .02 0.05 .02 .003 1 normal @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=2}] run particle soul_fire_flame ^-0.15 ^0.9 ^0.55 .02 0.05 .02 .003 1 normal @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=2}] run particle soul_fire_flame ^0.15 ^0.9 ^0.55 .02 0.05 .02 .003 1 normal @a[predicate=cannons:seeparticles]

execute at @s[scores={cannonshot=5..30}] if predicate game:fiftyfifty run particle flame ^ ^0.85 ^0.6 .02 0.1 .02 .003 1 normal @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=5..30}] if predicate game:fiftyfifty run particle flame ^-0.15 ^0.85 ^0.6 .02 0.1 .02 .003 1 normal @a[predicate=cannons:seeparticles]
execute at @s[scores={cannonshot=5..30}] if predicate game:fiftyfifty run particle flame ^0.15 ^0.85 ^0.6 .02 0.1 .02 .003 1 normal @a[predicate=cannons:seeparticles]

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

#> Recoil
execute at @s[scores={cannonshot=33}] run function game:boat/motionunlock
execute at @s[scores={cannonshot=27..}] unless score @s CannonID matches 8 run function game:boat/cannon/recoil

#> Set light
execute at @s[scores={cannonshot=27}] run summon marker ~ ~ ~ {Tags:["templight","flash"]}

#> Shoot
execute at @s[scores={cannonshot=29}] on passengers run data merge entity @s[tag=BoatCannonBarrel] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[0f,2.15f,-0.02f],left_rotation:[-0.09f,0.0f,0.0f,1.0f]}}
execute at @s[tag=!OnFire,scores={cannonshot=31}] on passengers run data merge entity @s[tag=BoatCannonBarrel] {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0f,2.375f,0.425f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute at @s[tag=OnFire,scores={cannonshot=31}] run function game:boat/cannon/tipfireblank
execute at @s[tag=!OnFire,scores={cannonshot=32}] on passengers run item replace entity @s[tag=BoatCannonBarrel] container.0 with diamond_hoe[custom_model_data={floats:[125.0f]}]
execute at @s[tag=OnFire,scores={cannonshot=32}] on passengers run item replace entity @s[tag=BoatCannonBarrel] container.0 with diamond_hoe[custom_model_data={floats:[137.0f]}]

data modify storage craftycannoneers:boat angle set from entity @s Rotation[0]
tag @s[scores={cannonshot=30}] add Shoot
execute at @s[scores={cannonshot=30}] positioned ^ ^2 ^3.6 run function game:boat/cannon/firecannonball with storage craftycannoneers:boat
tag @s[scores={cannonshot=30}] remove Shoot
execute at @s[scores={cannonshot=30}] run function game:boat/cannon/cannonballtick
scoreboard players set @s[scores={cannonshot=30,CannonID=8}] cannonshot 35

#> Finish shooting
execute if entity @s[scores={cannonshot=33..}] run function game:boat/cannon/finishshoot