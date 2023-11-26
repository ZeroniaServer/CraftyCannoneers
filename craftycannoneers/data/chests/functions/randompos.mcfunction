execute at @s run function chests:randomtype

tag @s add Randomized

execute at @s run spreadplayers ~ ~ 0 24 false @s
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tp @s ~ ~-1 ~

execute at @s unless entity @s[tag=Nope] unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run function chests:spawnnew
execute at @s unless block ~ ~-1 ~ sand unless block ~ ~-1 ~ grass_block run tag @s add Nope

execute at @s unless entity @s[tag=Nope] unless block ~ ~ ~ air run function chests:spawnnew
execute at @s unless block ~ ~ ~ air run tag @s add Nope

execute at @s unless entity @s[tag=Nope] if entity @e[type=armor_stand,tag=chest,distance=..8] run function chests:spawnnew
execute at @s if entity @e[type=armor_stand,tag=chest,distance=..8] run tag @s add Nope

execute at @s if entity @s[tag=!Nope] if entity @e[type=armor_stand,tag=chest,distance=..8] run function chests:spawnnew
execute at @s if entity @s[tag=!Nope] unless entity @e[type=armor_stand,tag=chest,distance=..8] as @e[type=item_display,tag=BlastBarrel,distance=..1] at @s run function weapons:barrel/break
execute at @s if entity @s[tag=!Nope] unless entity @e[type=armor_stand,tag=chest,distance=..8] as @e[type=item_display,tag=CrabTrap,distance=..1] at @s run function weapons:crabtrap/break
execute at @s if entity @s[tag=!Nope,tag=Common] unless entity @e[type=armor_stand,tag=chest,distance=..8] run summon armor_stand ~ ~-1 ~ {Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["chest","CChestAS","NewChest"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:19}}],Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'[{"translate":"space.-8"},{"text":"\\uE028","color":"white"},{"translate":"space.-169"},{"translate":"chest.common","color":"#a9a500","bold":true,"underlined":true}]',Tags:["CChestHopper","chest"]}]}
execute at @s if entity @s[tag=!Nope,tag=Uncommon] unless entity @e[type=armor_stand,tag=chest,distance=..8] run summon armor_stand ~ ~-1 ~ {Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["chest","UCChestAS","NewChest"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:23}}],Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'[{"translate":"space.-8"},{"text":"\\uE029","color":"white"},{"translate":"space.-169"},{"translate":"chest.uncommon","color":"#a9a600","bold":true,"underlined":true}]',Tags:["UCChestHopper","chest"]}]}
execute at @s if entity @s[tag=!Nope,tag=Rare] unless entity @e[type=armor_stand,tag=chest,distance=..8] run summon armor_stand ~ ~-1 ~ {Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["chest","RChestAS","NewChest"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:26}}],Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'[{"translate":"space.-8"},{"text":"\\uE02A","color":"white"},{"translate":"space.-169"},{"translate":"chest.rare","color":"#a9a700","bold":true,"underlined":true}]',Tags:["RChestHopper","chest"]}]}
execute as @e[type=armor_stand,tag=NewChest,tag=!Rotated] at @s run function chests:randomrotation
execute at @s if entity @s[tag=!Nope] if entity @e[type=armor_stand,tag=chest,distance=..8] run kill @s