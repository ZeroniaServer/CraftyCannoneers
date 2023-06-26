scoreboard players add @s firetime 1

#> Ignite cannon
execute at @s[scores={firetime=1}] run function game:boat/cannon/ignitecannon

#> Recoil
execute at @s[tag=!FireCannon,tag=Recoil,scores={firetime=1..6}] run function game:boat/cannon/recoil

#> Fire blank
execute at @s[tag=!FireCannon,scores={PowerM=1..,firetime=3}] run function game:boat/cannon/fireblank

#> Light block
execute at @s positioned ^ ^1 ^ unless entity @e[type=marker,tag=templight,limit=1,distance=..1] run summon marker ~ ~ ~ {Tags:["templight"]}

#> Continuous effects
particle smoke ^ ^0.5 ^1.3 0 0 0 0.1 2 normal @a[team=!Lobby]
particle flame ^ ^0.5 ^1.3 0 0 0 0.03 2 normal @a[team=!Lobby]

#> Extinguish cannon
execute at @s[scores={firetime=400..}] run function game:boat/cannon/extinguishcannon