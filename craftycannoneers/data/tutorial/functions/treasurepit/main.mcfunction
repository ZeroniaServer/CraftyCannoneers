execute as @a[team=Lobby] run function tutorial:treasurepit/players

#> Spawn fake treasures
execute unless entity @e[type=armor_stand,tag=CChestFakeC] run summon armor_stand -238 -29.05 -20 {Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["fakechest","CChestFakeC","NewFake"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:19}}],Passengers:[{id:"hopper_minecart",LootTable:"minecraft:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'[{"translate":"space.-8"},{"text":"\\uE028","color":"#7b7b00"},{"translate":"space.-169"},{"translate":"chest.common","color":"#a9a500","bold":true,"underlined":true},{"translate":"space.-4096"}]',Tags:["CChestFake","fakechest"]}]}
execute unless entity @e[type=armor_stand,tag=UCChestFakeC] run summon armor_stand -237 -29.05 -17 {Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["fakechest","UCChestFakeC","NewFake"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:23}}],Passengers:[{id:"hopper_minecart",LootTable:"minecraft:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'[{"translate":"space.-8"},{"text":"\\uE029","color":"#7b7b00"},{"translate":"space.-169"},{"translate":"chest.uncommon","color":"#a9a600","bold":true,"underlined":true},{"translate":"space.-4096"}]',Tags:["UCChestFake","fakechest"]}]}
execute unless entity @e[type=armor_stand,tag=RChestFakeC] run summon armor_stand -233 -29.05 -18 {Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["fakechest","RChestFakeC","NewFake"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:26}}],Passengers:[{id:"hopper_minecart",LootTable:"minecraft:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'[{"translate":"space.-8"},{"text":"\\uE02A","color":"#7b7b00"},{"translate":"space.-169"},{"translate":"chest.rare","color":"#a9a700","bold":true,"underlined":true},{"translate":"space.-4096"}]',Tags:["RChestFake","fakechest"]}]}
execute unless entity @e[type=armor_stand,tag=LChestFakeC] run function tutorial:treasurepit/placelocked
execute unless entity @e[type=item_display,tag=CargoBarrelFake] positioned -232 -30 -15 summon marker run function tutorial:treasurepit/spawnbarrel

#> Chest functionality
execute as @e[type=armor_stand,tag=fakechest] run function tutorial:treasurepit/chests
execute as @e[type=item_display,tag=CargoBarrelFake] run function tutorial:treasurepit/barrel