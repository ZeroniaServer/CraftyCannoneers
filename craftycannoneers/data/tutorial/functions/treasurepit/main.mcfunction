execute as @a[team=Lobby] run function tutorial:treasurepit/players

#> Spawn fake treasures
execute positioned -235 -28 -19 if entity @a[team=Lobby,distance=..10] unless entity @e[type=armor_stand,tag=CChestFakeC] run summon armor_stand -238 -29.05 -20 {PersistenceRequired:1b,Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["fakechest","CChestFakeC","NewFake"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:19}}],Passengers:[{id:"hopper_minecart",PersistenceRequired:1b,LootTable:"tutorial:common_treasure",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"text":"Common Treasure Chest","color":"dark_gray","bold":"true","underlined":"true"}',NoAI:1b,Tags:["CChestFake","fakechest"]}]}
execute positioned -235 -28 -19 if entity @a[team=Lobby,distance=..10] unless entity @e[type=armor_stand,tag=UCChestFakeC] run summon armor_stand -237 -29.05 -17 {PersistenceRequired:1b,Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["fakechest","UCChestFakeC","NewFake"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:23}}],Passengers:[{id:"hopper_minecart",PersistenceRequired:1b,LootTable:"tutorial:uncommon_treasure",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"text":"Uncommon Treasure Chest","color":"dark_aqua","bold":"true","underlined":"true"}',NoAI:1b,Tags:["UCChestFake","fakechest"]}]}
execute positioned -235 -28 -19 if entity @a[team=Lobby,distance=..10] unless entity @e[type=armor_stand,tag=RChestFakeC] run summon armor_stand -233 -29.05 -18 {PersistenceRequired:1b,Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["fakechest","RChestFakeC","NewFake"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:26}}],Passengers:[{id:"hopper_minecart",PersistenceRequired:1b,LootTable:"tutorial:rare_treasure",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"text":"Rare Treasure Chest","color":"dark_purple","bold":"true","underlined":"true"}',NoAI:1b,Tags:["RChestFake","fakechest"]}]}
execute positioned -235 -28 -19 if entity @a[team=Lobby,distance=..10] unless entity @e[type=armor_stand,tag=LChestFakeC] run summon armor_stand -232 -29.05 -21 {PersistenceRequired:1b,Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["fakechest","LChestFakeC","NewFake"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:69}}]}

#> Chest functionality
execute as @e[type=#game:chest,tag=fakechest] run function tutorial:treasurepit/chests