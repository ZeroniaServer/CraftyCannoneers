playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1 1.2
execute unless entity @s[tag=surface] run playsound graveemerge master @a ~ ~ ~ 1 0.7
execute if entity @s[tag=surface] run playsound graveemerge_nosub master @a ~ ~ ~ 1 0.7
particle splash ~ ~ ~ 0.7 0.2 0.7 0.1 50 force @a[predicate=cannons:seeparticles]
particle falling_water ~ ~0.4 ~ 0.7 0.2 0.7 0.1 10 force @a[predicate=cannons:seeparticles]
particle cloud ~ ~ ~ 0.5 0.2 0.5 0.03 5 force @a[predicate=cannons:seeparticles]
tag @s add ascended