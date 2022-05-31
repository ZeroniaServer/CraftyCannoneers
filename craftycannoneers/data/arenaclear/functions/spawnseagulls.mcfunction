kill @e[type=armor_stand,tag=seagull]
kill @e[type=marker,tag=seagull]
summon marker 28 27 39 {Tags:["seagullSpawner","seagull"],Rotation:[36.0f,0.0f]}
summon marker 106 33 -27 {Tags:["seagullSpawner","seagull"],Rotation:[-12.0f,0.0f]}
summon marker 70 18 0 {Tags:["seagullSpawner","seagull"]}

execute as @e[type=marker,tag=seagullSpawner] at @s run summon armor_stand ^ ^ ^4 {Tags:["seagull","SeagullDeco","1"],Marker:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:59}}]}
execute as @e[tag=seagullSpawner] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[type=marker,tag=seagullSpawner] at @s run summon armor_stand ^ ^ ^4 {Tags:["seagull","SeagullDeco","2"],Marker:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:59}}]}
execute as @e[tag=seagullSpawner] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[type=marker,tag=seagullSpawner] at @s run summon armor_stand ^ ^ ^4 {Tags:["seagull","SeagullDeco","3"],Marker:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:59}}]}
execute as @e[tag=seagullSpawner] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[type=marker,tag=seagullSpawner] at @s run summon armor_stand ^ ^ ^4 {Tags:["seagull","SeagullDeco","4"],Marker:1b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:59}}]}

