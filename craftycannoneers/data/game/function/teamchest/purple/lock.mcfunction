item replace entity @e[type=item_display,tag=purplechestdisplay,limit=1] container.0 with diamond_hoe[custom_model_data={floats:[50.0f]}]
summon area_effect_cloud ~ ~0.85 ~ {Duration:2000000000,Tags:["ChestNotif","Purple","chestdisplay"],CustomNameVisible:1b,CustomName:{translate:"teamchest.locked",color:"dark_red",bold:true,underlined:true},custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f}
summon area_effect_cloud ~ ~0.6 ~ {Duration:2000000000,Tags:["ChestNotif","Purple","chestdisplay"],CustomNameVisible:1b,CustomName:{translate:"teamchest.locked.subtitle",color:"red",bold:true},custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f}
playsound chestlock master @a ~ ~ ~ 1.3 1
tag @s add PlayedSound
data modify storage craftycannoneers:purpleteamchest Items set from entity @e[type=chest_minecart,tag=purpleteamchest,limit=1] Items
execute as @e[type=chest_minecart,tag=purpleteamchest,limit=1] run function arenaclear:kill