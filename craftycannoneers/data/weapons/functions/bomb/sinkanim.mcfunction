execute at @s run summon marker ~ ~ ~ {Tags:["BubbleSource","new"]}
execute store result score @s playerUUID run data get entity @s UUID[0]
scoreboard players operation @e[type=marker,tag=BubbleSource,tag=new,limit=1] playerUUID = @s playerUUID
tag @e[type=marker,tag=BubbleSource,tag=new,limit=1] remove new

data modify entity @s billboard set value "vertical"
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
execute store result score @s click run data get entity @s interpolation_duration