scoreboard players add @s eyeclick 1
data merge entity @s {Motion:[0.0d,-0.3d,0.0d]}



execute if entity @s[tag=Cannonball,scores={eyeclick=30..}] run particle item diamond_hoe{CustomModelData:16} ^ ^1 ^-6 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=HotCannonball,scores={eyeclick=30..}] run particle item lava_bucket{CustomModelData:1} ^ ^1 ^-6 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=HotCannonball,scores={eyeclick=1}] run particle cloud ^ ^1.2 ^-6 0.6 0.2 0.6 0.1 30 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=HotCannonball,scores={eyeclick=1}] run particle bubble_column_up ^ ^-1 ^-6 0.6 0.2 0.6 0.1 30 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=CannonballCluster,scores={eyeclick=30..}] run particle item diamond_hoe{CustomModelData:30} ^ ^1 ^-6 0 0 0 0.1 10 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=GasCannonball,scores={eyeclick=30..}] run particle item diamond_hoe{CustomModelData:31} ^ ^1 ^-6 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=ChainCannonball,scores={eyeclick=30..}] run particle item diamond_hoe{CustomModelData:40} ^ ^1 ^-6 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=BouncyCannonball,tag=!bouncing,scores={eyeclick=30..}] run particle item diamond_hoe{CustomModelData:55} ^ ^1 ^-6 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=BouncyCannonball,tag=bouncing,scores={eyeclick=30..}] run particle item diamond_hoe{CustomModelData:55} ~ ~1 ~ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=GoldenCannonball,scores={eyeclick=30..}] run particle item diamond_hoe{CustomModelData:73} ^ ^1 ^-6 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
tag @s add InWater


execute if entity @s[tag=!bouncing,scores={eyeclick=1}] run particle minecraft:splash ^ ^1 ^-6 0.3 0.5 0.3 0.2 100 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=!bouncing,scores={eyeclick=1}] run particle minecraft:falling_water ^ ^1.3 ^-6 0.3 0.5 0.3 0.1 100 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=!bouncing,scores={eyeclick=1}] run playsound minecraft:entity.player.swim master @a ^ ^ ^-6 2 0
execute if entity @s[tag=!bouncing,scores={eyeclick=1}] run playsound minecraft:entity.generic.splash master @a ^ ^ ^-6 2 1.4

execute if entity @s[tag=bouncing,scores={eyeclick=1}] run particle minecraft:splash ~ ~1 ~ 0.3 0.5 0.3 0.2 100 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=bouncing,scores={eyeclick=1}] run particle minecraft:falling_water ~ ~1.3 ~ 0.3 0.5 0.3 0.1 100 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=bouncing,scores={eyeclick=1}] run playsound minecraft:entity.player.swim master @a ~ ~ ~ 2 0
execute if entity @s[tag=bouncing,scores={eyeclick=1}] run playsound minecraft:entity.generic.splash master @a ~ ~ ~ 2 1.4

execute if entity @s[tag=HotCannonball,scores={eyeclick=1}] run playsound minecraft:block.fire.extinguish master @a ^ ^ ^-6 2 1
execute if entity @s[tag=HotCannonball,scores={eyeclick=1}] run playsound minecraft:block.fire.extinguish master @a ^ ^ ^-6 2 2
execute if entity @s[tag=HotCannonball,scores={eyeclick=1}] run playsound minecraft:block.fire.extinguish master @a ^ ^ ^-6 2 0
kill @s[scores={eyeclick=30..}]