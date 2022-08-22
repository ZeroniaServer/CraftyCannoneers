#> Functionality
execute as @e[type=armor_stand,tag=BouncyCannonball,scores={bouncedelay=1}] at @s run function cannons:bounce/functionality

#> Blast entities
execute as @e[type=slime,tag=BounceSlime] at @s run function cannons:bounce/slime
execute as @e[type=area_effect_cloud,tag=BounceAEC] at @s run function cannons:bounce/aec