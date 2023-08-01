execute if block ~ ~-0.1 ~ water run data merge entity @s {start_interpolation:0,interpolation_duration:21,transformation:{translation:[0.0f,-0.1f,0.0f]}}
execute if block ~ ~-0.2 ~ water run data merge entity @s {start_interpolation:0,interpolation_duration:22,transformation:{translation:[0.0f,-0.2f,0.0f]}}
execute if block ~ ~-0.3 ~ water run data merge entity @s {start_interpolation:0,interpolation_duration:23,transformation:{translation:[0.0f,-0.3f,0.0f]}}
execute if block ~ ~-0.4 ~ water run data merge entity @s {start_interpolation:0,interpolation_duration:24,transformation:{translation:[0.0f,-0.4f,0.0f]}}
execute if block ~ ~-0.5 ~ water run data merge entity @s {start_interpolation:0,interpolation_duration:25,transformation:{translation:[0.0f,-0.5f,0.0f]}}
execute if block ~ ~-0.6 ~ water run data merge entity @s {start_interpolation:0,interpolation_duration:26,transformation:{translation:[0.0f,-0.6f,0.0f]}}
execute if block ~ ~-0.7 ~ water run data merge entity @s {start_interpolation:0,interpolation_duration:27,transformation:{translation:[0.0f,-0.7f,0.0f]}}
execute if block ~ ~-0.8 ~ water run data merge entity @s {start_interpolation:0,interpolation_duration:28,transformation:{translation:[0.0f,-0.8f,0.0f]}}
execute if block ~ ~-0.9 ~ water run data merge entity @s {start_interpolation:0,interpolation_duration:29,transformation:{translation:[0.0f,-0.9f,0.0f]}}
execute if block ~ ~-1 ~ water run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.0f,0.0f]}}

execute if score @s CmdData matches 2.. run tag @s add currbomb
execute if score @s CmdData matches 2.. as @e[type=snowball,tag=BubbleSource] run function weapons:bomb/movebubble
execute if score @s CmdData matches 2.. run tag @s remove currbomb
execute if score @s CmdData matches 2.. run return 0

summon snowball ~ ~ ~ {Item:{id:"minecraft:slime_ball",Count:1b},Tags:["BubbleSource","new"],NoGravity:1b}
data modify entity @e[type=snowball,tag=BubbleSource,tag=new,limit=1] Owner set from entity @s UUID
tag @e[type=snowball,tag=BubbleSource,tag=new,limit=1] remove new