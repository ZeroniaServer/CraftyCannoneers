scoreboard players add @s eyeclick 1
tag @s add InWater
data merge entity @s {Motion:[0.0d,-0.3d,0.0d]}

execute if entity @s[scores={eyeclick=1}] positioned ~ 100 ~ positioned over world_surface positioned ~ ~1 ~ run function cannons:splash

execute if entity @s[scores={eyeclick=6..}] run particle bubble ^ ^1 ^ 0.05 0 0.05 0 1 force @a[predicate=cannons:seeparticles]

execute if entity @s[tag=Cannonball,scores={eyeclick=30..}] run particle item{item:{id:"diamond_hoe",components:{"minecraft:custom_model_data":{floats:[16.0f]}}}} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=HotCannonball,scores={eyeclick=30..}] run particle item{item:{id:"lava_bucket",components:{"minecraft:custom_model_data":{floats:[1.0f]}}}} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=HotCannonball,scores={eyeclick=1}] run particle cloud ^ ^1.2 ^ 0.6 0.2 0.6 0.1 30 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=HotCannonball,scores={eyeclick=1}] run particle bubble_column_up ^ ^-1 ^ 0.6 0.2 0.6 0.1 30 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=CannonballCluster,scores={eyeclick=30..}] run particle item{item:{id:"diamond_hoe",components:{"minecraft:custom_model_data":{floats:[30.0f]}}}} ^ ^1 ^ 0 0 0 0.1 10 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=GasCannonball,scores={eyeclick=30..}] run particle item{item:{id:"diamond_hoe",components:{"minecraft:custom_model_data":{floats:[31.0f]}}}} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=ChainCannonball,scores={eyeclick=30..}] run particle item{item:{id:"diamond_hoe",components:{"minecraft:custom_model_data":{floats:[40.0f]}}}} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=BouncyCannonball,tag=!bouncing,scores={eyeclick=30..}] run particle item{item:{id:"diamond_hoe",components:{"minecraft:custom_model_data":{floats:[55.0f]}}}} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=BouncyCannonball,tag=bouncing,scores={eyeclick=30..}] run particle item{item:{id:"diamond_hoe",components:{"minecraft:custom_model_data":{floats:[55.0f]}}}} ~ ~1 ~ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=GoldenCannonball,scores={eyeclick=30..}] run particle item{item:{id:"diamond_hoe",components:{"minecraft:custom_model_data":{floats:[73.0f]}}}} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=CopperCannonball,scores={eyeclick=30..,copperStrike=..19}] run particle item{item:{id:"diamond_hoe",components:{"minecraft:custom_model_data":{floats:[109.0f]}}}} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=CopperCannonball,scores={eyeclick=30..,copperStrike=..34}] run particle item{item:{id:"diamond_hoe",components:{"minecraft:custom_model_data":{floats:[110.0f]}}}} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=CopperCannonball,scores={eyeclick=30..,copperStrike=..54}] run particle item{item:{id:"diamond_hoe",components:{"minecraft:custom_model_data":{floats:[111.0f]}}}} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=CopperCannonball,scores={eyeclick=30..,copperStrike=..69}] run particle item{item:{id:"diamond_hoe",components:{"minecraft:custom_model_data":{floats:[112.0f]}}}} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=CopperCannonball,scores={eyeclick=30..,copperStrike=70..}] run particle item{item:{id:"diamond_hoe",components:{"minecraft:custom_model_data":{floats:[113.0f]}}}} ^ ^1 ^ 0 0 0 0.1 40 force @a[predicate=cannons:seeparticles]

execute if entity @s[scores={eyeclick=30..}] run function cannons:killcb