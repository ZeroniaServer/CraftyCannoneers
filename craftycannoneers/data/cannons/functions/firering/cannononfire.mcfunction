scoreboard players add @s firetime 1

#> Ignite cannon
execute at @s[scores={firetime=1}] run function cannons:firering/ignitecannon

#> Continuous effects
item replace entity @s container.0 with diamond_hoe{CustomModelData:74}
particle smoke ^ ^1.4 ^0.4 0 0 1 0.1 2 normal @a[team=!Lobby]
particle flame ^ ^1.4 ^0.5 0 0 1 0.03 2 normal @a[team=!Lobby]

#> Extinguish cannon
execute at @s[scores={firetime=400..}] run function cannons:firering/extinguishcannon

#> Fire blank
execute at @s[tag=FireBlank] run function cannons:firering/fireblank