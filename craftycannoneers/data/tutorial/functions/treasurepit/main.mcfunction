execute as @a[team=Lobby] run function tutorial:treasurepit/players

#> Spawn fake treasures
execute unless entity @e[type=armor_stand,tag=CChestFakeC] run summon armor_stand -238 -29.05 -20 {Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["fakechest","CChestFakeC","NewFake"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:19}}],Passengers:[{id:"hopper_minecart",LootTable:"tutorial:common_treasure",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"chest.common","color":"dark_gray","bold":true,"underlined":true}',Tags:["CChestFake","fakechest"]}]}
execute unless entity @e[type=armor_stand,tag=UCChestFakeC] run summon armor_stand -237 -29.05 -17 {Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["fakechest","UCChestFakeC","NewFake"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:23}}],Passengers:[{id:"hopper_minecart",LootTable:"tutorial:uncommon_treasure",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"chest.uncommon","color":"dark_aqua","bold":true,"underlined":true}',Tags:["UCChestFake","fakechest"]}]}
execute unless entity @e[type=armor_stand,tag=RChestFakeC] run summon armor_stand -233 -29.05 -18 {Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["fakechest","RChestFakeC","NewFake"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:26}}],Passengers:[{id:"hopper_minecart",LootTable:"tutorial:rare_treasure",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"chest.rare","color":"dark_purple","bold":true,"underlined":true}',Tags:["RChestFake","fakechest"]}]}
execute unless entity @e[type=armor_stand,tag=LChestFakeC] run function tutorial:treasurepit/placelocked

#> Chest functionality
execute as @e[type=armor_stand,tag=fakechest] run function tutorial:treasurepit/chests
execute as @e[type=hopper_minecart,tag=fakechest] run function tutorial:treasurepit/chests
execute as @e[type=chest_minecart,tag=fakechest] run function tutorial:treasurepit/chests

#> Locked Chest notifications
execute as @e[type=armor_stand,tag=LChestFakeC] at @s run function tutorial:treasurepit/lockedchestnotif