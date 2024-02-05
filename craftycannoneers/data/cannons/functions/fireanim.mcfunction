# firetime=400..
scoreboard players add @s firetime 1

execute unless entity @e[type=item_display,tag=CannonCart,distance=..1,limit=1,sort=nearest,tag=FireCannon] run data merge entity @s[scores={firetime=1}] {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[-0.2f,0.0f,0.0f,1.0f]}}
item replace entity @s[scores={firetime=1}] container.0 with diamond_hoe{CustomModelData:63}
data merge entity @s[scores={firetime=400..}] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
item replace entity @s[scores={firetime=400..}] container.0 with diamond_hoe{CustomModelData:62}
tag @s[scores={firetime=400..}] remove FireAnimation
scoreboard players reset @s[scores={firetime=400..}] firetime