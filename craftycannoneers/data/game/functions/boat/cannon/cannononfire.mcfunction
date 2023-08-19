scoreboard players add @s firetime 1

#> Ignite cannon
execute at @s[scores={firetime=1}] run function game:boat/cannon/ignitecannon

#> Recoil
execute at @s[tag=!FireCannon,tag=Recoil,scores={firetime=1..6}] run function game:boat/cannon/recoil
tag @s[tag=!FireCannon,tag=Recoil,scores={firetime=7}] remove Recoil

#> Fire blank
execute at @s[tag=!FireCannon,scores={PowerM=1..,firetime=2}] on passengers run data merge entity @s[tag=BoatCannonBarrel] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[0f,2.225f,0f],left_rotation:[-0.09f,0.0f,0.0f,1.0f]}}
execute at @s[tag=!FireCannon,scores={PowerM=1..,firetime=3}] run function game:boat/cannon/fireblank
execute at @s[tag=!FireCannon,scores={PowerM=1..,firetime=4}] run function game:boat/cannon/tipfireblank

#> Light block
execute at @s positioned ^ ^1 ^ unless entity @e[type=marker,tag=templight,limit=1,distance=..1] run summon marker ~ ~ ~ {Tags:["templight"]}

#> Continuous effects
particle smoke ^ ^1.2 ^1.7 0 0 0 0.1 2 normal @a[team=!Lobby]
particle flame ^ ^1.2 ^1.7 0 0 0 0.03 2 normal @a[team=!Lobby]

#> Extinguish cannon
execute at @s[scores={firetime=400..}] run function game:boat/cannon/extinguishcannon