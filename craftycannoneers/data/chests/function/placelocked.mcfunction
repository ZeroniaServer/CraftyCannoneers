summon armor_stand ~ ~-1 ~ {Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["chest","LChestAS","NewChest"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":{floats:[69.0f]}}}],Passengers:[{id:"minecraft:interaction",Tags:["LChest","notifylock"],response:1b,width:0.98f,height:0.7f}]}
execute as @e[type=item_display,tag=BlastBarrel,distance=..1] at @s run function weapons:barrel/break
execute as @e[type=item_display,tag=CrabTrap,distance=..1] at @s run function weapons:crabtrap/break
kill