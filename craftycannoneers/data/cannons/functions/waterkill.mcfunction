scoreboard players add @s eyeclick 1
tag @s add InWater
data merge entity @s {Motion:[0.0d,-0.3d,0.0d]}

execute if entity @s[scores={eyeclick=1}] positioned ~ 100 ~ positioned over world_surface positioned ~ ~1 ~ run function cannons:splash

execute if entity @s[tag=Cannonball,scores={eyeclick=30..}] run particle item diamond_hoe{CustomModelData:16} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=HotCannonball,scores={eyeclick=30..}] run particle item lava_bucket{CustomModelData:1} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=HotCannonball,scores={eyeclick=1}] run particle cloud ^ ^1.2 ^ 0.6 0.2 0.6 0.1 30 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=HotCannonball,scores={eyeclick=1}] run particle bubble_column_up ^ ^-1 ^ 0.6 0.2 0.6 0.1 30 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=CannonballCluster,scores={eyeclick=30..}] run particle item diamond_hoe{CustomModelData:30} ^ ^1 ^ 0 0 0 0.1 10 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=GasCannonball,scores={eyeclick=30..}] run particle item diamond_hoe{CustomModelData:31} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=ChainCannonball,scores={eyeclick=30..}] run particle item diamond_hoe{CustomModelData:40} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=BouncyCannonball,tag=!bouncing,scores={eyeclick=30..}] run particle item diamond_hoe{CustomModelData:55} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=BouncyCannonball,tag=bouncing,scores={eyeclick=30..}] run particle item diamond_hoe{CustomModelData:55} ~ ~1 ~ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=GoldenCannonball,scores={eyeclick=30..}] run particle item diamond_hoe{CustomModelData:73} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
kill @s[scores={eyeclick=30..}]