execute at @s[predicate=cannons:ships/purple] run summon item_display ~ ~ ~ {item_display:"head",transformation:{scale:[0.625f,0.625f,0.625f],translation:[0f,1.65f,-.15f],left_rotation:{angle:0.541052f,axis:[-1f,0f,0f]},right_rotation:[0f,0f,0f,1f]},Rotation:[0.0f,0.0f],width:1f,height:2f,Tags:["EndFirework","Purple","new","new2","new3"],item:{id:"minecraft:diamond_hoe",Count:1b,components:{"custom_model_data":41}}}
execute at @s[predicate=cannons:ships/purple] run summon marker ^ ^2 ^3 {Tags:["LightFlash","cannon"]}
execute at @s[predicate=cannons:ships/orange] run summon item_display ~ ~ ~ {item_display:"head",transformation:{scale:[0.625f,0.625f,0.625f],translation:[0f,1.65f,-.15f],left_rotation:{angle:0.541052f,axis:[-1f,0f,0f]},right_rotation:[0f,0f,0f,1f]},Rotation:[180.0f,0.0f],width:1f,height:2f,Tags:["EndFirework","Orange","new","new2","new3"],item:{id:"minecraft:diamond_hoe",Count:1b,components:{"custom_model_data":41}}}
execute at @s[predicate=cannons:ships/orange] run summon marker ^ ^2 ^3 {Tags:["LightFlash","cannon"]}

execute at @s[tag=!Firework2] run particle explosion ^ ^1.1 ^2 0.1 0.1 0.1 0.1 3 force
execute at @s[tag=!Firework2] run particle flame ^ ^1.1 ^2 0.1 0.1 0.1 0.3 6 force
execute at @s[tag=!Firework2] run particle campfire_cosy_smoke ^ ^0.8 ^2 0.1 0.1 0.1 0.02 10 force
execute at @s[tag=!Firework2] run particle lava ^ ^1.1 ^2 0.1 0.1 0.1 0.02 10 force
execute at @s[tag=!Firework2] run playsound entity.firework_rocket.launch master @a ~ ~ ~ 6 0.8
execute at @s[tag=!Firework2] run playsound cannonshot master @a ~ ~ ~ 6 1.6
execute at @s[tag=!Firework2] run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.6
tag @s[tag=!Firework2] add Firework2
tag @s remove Firework