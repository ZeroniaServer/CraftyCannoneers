kill @e[type=armor_stand,tag=chestdisplay]
tp @e[type=chest_minecart,tag=teamchest] 0 -1000 0
kill @e[type=chest_minecart,tag=teamchest]
kill @e[type=marker,tag=teamchest]

#ORANGE
summon marker 68.50 -28 60.50 {Tags:["orangeteamchest","teamchest"]}
summon chest_minecart 68.50 -28 60.50 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[-90.0f, 0.0f],CustomDisplayTile:1b,Tags:["teamchest","orangeteamchest"],CustomName:'{"translate":"teamchest.orange","color":"gold","bold":"true","underlined":"true"}',DisplayState:{Name:"minecraft:air"}}
summon armor_stand 68.50 -29.00 60.50 {NoGravity:1b,Silent:1b,Invulnerable:1b,DisabledSlots:4144959,Invisible:1b,Tags:["chestdisplay","orangechestdisplay"],Marker:1b,Rotation:[180.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:52,Count:1b}},{}]}

#PURPLE
summon marker 72.50 -28 -59.50 {Tags:["purpleteamchest","teamchest"]}
summon chest_minecart 72.50 -28 -59.50 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[-90.0f, 0.0f],CustomDisplayTile:1b,Tags:["teamchest","purpleteamchest"],CustomName:'{"translate":"teamchest.purple","color":"dark_purple","bold":"true","underlined":"true"}',DisplayState:{Name:"minecraft:air"}}
summon armor_stand 72.50 -29.00 -59.50 {NoGravity:1b,Silent:1b,Invulnerable:1b,DisabledSlots:4144959,Invisible:1b,Tags:["chestdisplay","purplechestdisplay"],Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:49,Count:1b}},{}]}