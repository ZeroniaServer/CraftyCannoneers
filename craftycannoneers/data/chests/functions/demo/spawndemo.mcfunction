summon item_display ~ ~ ~ {Tags:["Demo"],item_display:"head",item:{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":138}},interpolation_duration:0,start_interpolation:0,transformation:{scale:[0.2f,0.2f,0.2f]}}
summon item_display ~ ~ ~ {Tags:["Demo","Lid"],item_display:"head",item:{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":139}},interpolation_duration:0,start_interpolation:0,transformation:{scale:[0.2f,0.2f,0.2f]}}

execute as @e[tag=Demo] run data merge entity @s {transformation:{scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.06f,0.0f]}}