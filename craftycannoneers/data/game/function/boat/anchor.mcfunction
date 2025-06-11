summon area_effect_cloud ~ ~-0.375 ~ {Tags:["boatanchor","new"],Duration:2,custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f}
ride @s mount @e[type=area_effect_cloud,tag=boatanchor,tag=new,limit=1]
execute on vehicle run tag @s remove new