scoreboard players add @s firetime 1

#> Ignite cannon
execute at @s[scores={firetime=1},tag=!FireCannon] run function cannons:firering/ignitecannon

#> Start Cannon Barrel fire animation
execute at @s[scores={firetime=1},tag=!FireCannon] run tag @e[type=item_display,tag=CannonBarrel,limit=1,sort=nearest] add FireAnimation
execute at @s[scores={firetime=1},tag=!FireCannon] run scoreboard players reset @e[type=item_display,tag=CannonBarrel,limit=1,sort=nearest] firetime
execute at @s[scores={firetime=3},tag=!FireCannon,tag=ByLightning] run scoreboard players add @e[type=item_display,tag=CannonBarrel,limit=1,sort=nearest] firetime 200
execute at @s[scores={firetime=3},tag=ByLightning] run scoreboard players add @s firetime 200

#> Light block
execute at @s run setblock ^ ^1 ^2 light[level=15]

#> Continuous effects
item replace entity @s container.0 with diamond_hoe{CustomModelData:74}
particle smoke ^ ^1.4 ^0.4 0 0 1 0.1 2 normal @a[team=!Lobby]
particle flame ^ ^1.4 ^0.5 0 0 1 0.03 2 normal @a[team=!Lobby]
execute if entity @s[tag=ByLightning] run particle electric_spark ^ ^1.4 ^0.5 0.3 0.2 1 0.03 7 normal @a[team=!Lobby]

#> Extinguish cannon
execute at @s[scores={firetime=400..}] run function cannons:firering/extinguishcannon

#> Fire blank
execute at @s[tag=FireBlank] run function cannons:firering/fireblank