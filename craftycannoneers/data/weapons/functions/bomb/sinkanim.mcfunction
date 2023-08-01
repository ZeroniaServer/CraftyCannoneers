execute at @s run summon snowball ~ ~ ~ {Item:{id:"minecraft:slime_ball",Count:1b},Tags:["BubbleSource","new"],NoGravity:1b}
data modify entity @e[type=snowball,tag=BubbleSource,tag=new,limit=1] Owner set from entity @s UUID
tag @e[type=snowball,tag=BubbleSource,tag=new,limit=1] remove new

execute positioned ~ ~-0.1 ~ if predicate game:located_water run data merge entity @s {start_interpolation:0,interpolation_duration:21,transformation:{translation:[0.0f,-0.1f,0.0f]}}
execute positioned ~ ~-0.2 ~ if predicate game:located_water run data merge entity @s {start_interpolation:0,interpolation_duration:22,transformation:{translation:[0.0f,-0.2f,0.0f]}}
execute positioned ~ ~-0.3 ~ if predicate game:located_water run data merge entity @s {start_interpolation:0,interpolation_duration:23,transformation:{translation:[0.0f,-0.3f,0.0f]}}
execute positioned ~ ~-0.4 ~ if predicate game:located_water run data merge entity @s {start_interpolation:0,interpolation_duration:24,transformation:{translation:[0.0f,-0.4f,0.0f]}}
execute positioned ~ ~-0.5 ~ if predicate game:located_water run data merge entity @s {start_interpolation:0,interpolation_duration:25,transformation:{translation:[0.0f,-0.5f,0.0f]}}
execute positioned ~ ~-0.6 ~ if predicate game:located_water run data merge entity @s {start_interpolation:0,interpolation_duration:26,transformation:{translation:[0.0f,-0.6f,0.0f]}}
execute positioned ~ ~-0.7 ~ if predicate game:located_water run data merge entity @s {start_interpolation:0,interpolation_duration:27,transformation:{translation:[0.0f,-0.7f,0.0f]}}
execute positioned ~ ~-0.8 ~ if predicate game:located_water run data merge entity @s {start_interpolation:0,interpolation_duration:28,transformation:{translation:[0.0f,-0.8f,0.0f]}}
execute positioned ~ ~-0.9 ~ if predicate game:located_water run data merge entity @s {start_interpolation:0,interpolation_duration:29,transformation:{translation:[0.0f,-0.9f,0.0f]}}
execute positioned ~ ~-1 ~ if predicate game:located_water run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{translation:[0.0f,-1.0f,0.0f]}}