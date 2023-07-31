execute if entity @s[tag=!bouncing] run particle minecraft:splash ^ ^1 ^-6 0.3 0.5 0.3 0.2 100 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=!bouncing] run particle minecraft:falling_water ^ ^1.3 ^-6 0.3 0.5 0.3 0.1 100 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=!bouncing] run playsound minecraft:entity.player.swim master @a ^ ^ ^-6 2 0
execute if entity @s[tag=!bouncing] run playsound minecraft:entity.generic.splash master @a ^ ^ ^-6 2 1.4

execute if entity @s[tag=bouncing] run particle minecraft:splash ~ ~1 ~ 0.3 0.5 0.3 0.2 100 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=bouncing] run particle minecraft:falling_water ~ ~1.3 ~ 0.3 0.5 0.3 0.1 100 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=bouncing] run playsound minecraft:entity.player.swim master @a ~ ~ ~ 2 0
execute if entity @s[tag=bouncing] run playsound minecraft:entity.generic.splash master @a ~ ~ ~ 2 1.4

execute if entity @s[tag=HotCannonball] run playsound minecraft:block.fire.extinguish master @a ^ ^ ^-6 2 1
execute if entity @s[tag=HotCannonball] run playsound minecraft:block.fire.extinguish master @a ^ ^ ^-6 2 2
execute if entity @s[tag=HotCannonball] run playsound minecraft:block.fire.extinguish master @a ^ ^ ^-6 2 0