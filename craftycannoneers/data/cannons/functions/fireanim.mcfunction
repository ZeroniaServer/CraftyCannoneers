# firetime=400..
scoreboard players add @s firetime 1

execute as @s[scores={firetime=1}] at @s run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[-0.2f,0.0f,0.0f,1.0f]}}
execute as @s[scores={firetime=1}] run item replace entity @s container.0 with diamond_hoe{CustomModelData:63}
execute as @s[scores={firetime=400..}] at @s run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute as @s[scores={firetime=400..}] run item replace entity @s container.0 with diamond_hoe{CustomModelData:62}
tag @s[scores={firetime=400..}] remove FireAnimation
scoreboard players reset @s[scores={firetime=400..}] firetime