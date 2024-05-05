kill @e[type=item_display,tag=chestdisplay]
tp @e[type=chest_minecart,tag=teamchest] 0 -1000 0
kill @e[type=chest_minecart,tag=teamchest]
kill @e[type=marker,tag=teamchest]

#ORANGE
summon marker 68.50 -28 60.50 {Tags:["orangeteamchest","teamchest"]}
summon chest_minecart 68.50 -28 60.50 {LootTable:"game:orangeteamchest",NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[-90.0f,0.0f],CustomDisplayTile:1b,Tags:["teamchest","orangeteamchest"],CustomName:'[{"translate":"space.-48"},{"text":"\\uE02B","color":"white"},{"translate":"space.-4096"}]',DisplayState:{Name:"minecraft:air"}}
summon item_display 68.52 -27.702 60.568 {Tags:["chestdisplay","orangechestdisplay"],Rotation:[180.0f,0.0f],item_display:"fixed",height:1.0f,width:1.2f,item:{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":52}}}

#PURPLE
summon marker 72.50 -28 -59.50 {Tags:["purpleteamchest","teamchest"]}
summon chest_minecart 72.50 -28 -59.50 {LootTable:"game:purpleteamchest",NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[-90.0f,0.0f],CustomDisplayTile:1b,Tags:["teamchest","purpleteamchest"],CustomName:'[{"translate":"space.-48"},{"text":"\\uE02C","color":"white"},{"translate":"space.-4096"}]',DisplayState:{Name:"minecraft:air"}}
summon item_display 72.48 -27.702 -59.568 {Tags:["chestdisplay","purplechestdisplay"],Rotation:[0.0f,0.0f],item_display:"fixed",height:1.0f,width:1.2f,item:{id:"minecraft:diamond_hoe",count:1,components:{"custom_model_data":49}}}