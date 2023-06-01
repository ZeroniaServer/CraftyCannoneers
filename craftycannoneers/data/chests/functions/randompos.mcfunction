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

execute at @s unless entity @s[tag=Nope] if entity @e[type=#game:chest,tag=chest,distance=..8] run function chests:spawnnew
execute at @s if entity @e[type=#game:chest,tag=chest,distance=..8] run tag @s add Nope

execute at @s if entity @s[tag=!Nope,tag=!SpawnNew] if entity @e[type=#game:chest,tag=chest,distance=..8] run function chests:spawnnew
execute at @s if entity @s[tag=!Nope,tag=!SpawnNew,tag=Common] unless entity @e[type=#game:chest,tag=chest,distance=..8] run summon armor_stand ~ ~-1 ~ {Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["chest","CChestAS","NewChest"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:19}}],Passengers:[{id:"hopper_minecart",LootTable:"chests:common_treasure",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"text":"Common Treasure Chest","color":"dark_gray","bold":true,"underlined":true}',NoAI:1b,Tags:["CChestHopper","chest"]}]}
execute at @s if entity @s[tag=!Nope,tag=!SpawnNew,tag=Uncommon] unless entity @e[type=#game:chest,tag=chest,distance=..8] run summon armor_stand ~ ~-1 ~ {Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["chest","UCChestAS","NewChest"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:23}}],Passengers:[{id:"hopper_minecart",LootTable:"chests:uncommon_treasure",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"text":"Uncommon Treasure Chest","color":"dark_aqua","bold":true,"underlined":true}',NoAI:1b,Tags:["UCChestHopper","chest"]}]}
execute at @s if entity @s[tag=!Nope,tag=!SpawnNew,tag=Rare] unless entity @e[type=#game:chest,tag=chest,distance=..8] run summon armor_stand ~ ~-1 ~ {Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["chest","RChestAS","NewChest"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:26}}],Passengers:[{id:"hopper_minecart",LootTable:"chests:rare_treasure",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"text":"Rare Treasure Chest","color":"dark_purple","bold":true,"underlined":true}',NoAI:1b,Tags:["RChestHopper","chest"]}]}
execute as @e[type=armor_stand,tag=NewChest,tag=!Rotated] at @s run function chests:randomrotation
execute at @s if entity @s[tag=!Nope,tag=!SpawnNew] if entity @e[type=#game:chest,tag=chest,distance=..8] run kill @s
execute at @s if entity @s[tag=!Nope,tag=!SpawnNew] if entity @e[type=#game:chest,tag=chest,distance=..8] run tag @s add SpawnNew