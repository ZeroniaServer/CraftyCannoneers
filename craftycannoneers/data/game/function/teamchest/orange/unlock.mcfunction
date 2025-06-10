playsound chestunlock master @a ~ ~ ~ 1.3 1
item replace entity @e[type=item_display,tag=orangechestdisplay,limit=1] container.0 with diamond_hoe[custom_model_data={floats:[52.0f]}]
kill @e[type=area_effect_cloud,tag=ChestNotif,tag=Orange]
summon area_effect_cloud ~ ~0.85 ~ {Duration:2000000000,Tags:["ChestNotif","Orange","chestdisplay"],CustomNameVisible:1b,CustomName:{translate:"teamchest.unlocked",color:"dark_green",bold:true,underlined:true},Particle:{type:"block",block_state:"minecraft:air"},Radius:0f}
summon area_effect_cloud ~ ~0.6 ~ {Duration:2000000000,Tags:["ChestNotif","Orange","chestdisplay"],CustomNameVisible:1b,CustomName:{translate:"teamchest.unlocked.subtitle",color:"green",bold:true},Particle:{type:"block",block_state:"minecraft:air"},Radius:0f}
tag @s add PlayedSound2
execute unless entity @e[type=chest_minecart,tag=orangeteamchest] run function game:teamchest/orange/respawn