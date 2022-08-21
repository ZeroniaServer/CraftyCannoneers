execute as @a[team=Lobby,gamemode=!spectator,predicate=tutorial:treasurepit,tag=!InPit] run clear @s

execute as @a[team=Lobby,gamemode=!spectator,predicate=tutorial:treasurepit,tag=!InPit] run function lobby:hats
execute as @a[team=Lobby,gamemode=!spectator,predicate=tutorial:treasurepit,tag=!InPit] run item replace entity @s hotbar.4 with ender_eye{NoDrop:1b,CustomModelData:1,Key:1b,display:{Name:'[{"text":"Skeleton Key","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Use this key to unlock ","italic":false,"color":"white"}]','[{"text":"any kind of locked Chests!","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]']}}

execute as @a[team=Lobby,gamemode=!spectator,predicate=tutorial:treasurepit,tag=!InPit] at @s run playsound ding master @s ~ ~ ~ 1 0.6
execute as @a[team=Lobby,gamemode=!spectator,predicate=tutorial:treasurepit,tag=!InPit] run title @s title {"text":"Treasure Pit","color":"aqua"}
execute as @a[team=Lobby,gamemode=!spectator,predicate=tutorial:treasurepit,tag=!InPit] run title @s subtitle {"text":"(Learn about Treasure Chests)","color":"yellow"}

execute as @a[team=Lobby,gamemode=!spectator,predicate=tutorial:treasurepit,tag=!InPit] run tag @s add InPit

execute as @a[team=Lobby,predicate=!tutorial:treasurepit,tag=InPit] run title @s title {"text":" "}
execute as @a[team=Lobby,predicate=!tutorial:treasurepit,tag=InPit] run title @s subtitle {"text":" "}
execute as @a[team=Lobby,predicate=!tutorial:treasurepit,tag=InPit] run clear @s
execute as @a[team=Lobby,predicate=!tutorial:treasurepit,tag=InPit] run function lobby:items
execute as @a[team=Lobby,predicate=!tutorial:treasurepit,tag=InPit] run tag @s remove InPit

#> Spawn fake treasures
execute positioned -235 -28 -19 if entity @a[team=Lobby,distance=..10] unless entity @e[type=armor_stand,tag=CChestFakeC] run summon armor_stand -238 -29.05 -20 {PersistenceRequired:1b,Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["fakechest","CChestFakeC","NewFake"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:19}}],Passengers:[{id:"hopper_minecart",PersistenceRequired:1b,LootTable:"tutorial:common_treasure",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"text":"Common Treasure Chest","color":"dark_gray","bold":"true","underlined":"true"}',NoAI:1b,Tags:["CChestFake","fakechest"]}]}
execute positioned -235 -28 -19 if entity @a[team=Lobby,distance=..10] unless entity @e[type=armor_stand,tag=UCChestFakeC] run summon armor_stand -237 -29.05 -17 {PersistenceRequired:1b,Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["fakechest","UCChestFakeC","NewFake"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:23}}],Passengers:[{id:"hopper_minecart",PersistenceRequired:1b,LootTable:"tutorial:uncommon_treasure",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"text":"Uncommon Treasure Chest","color":"dark_aqua","bold":"true","underlined":"true"}',NoAI:1b,Tags:["UCChestFake","fakechest"]}]}
execute positioned -235 -28 -19 if entity @a[team=Lobby,distance=..10] unless entity @e[type=armor_stand,tag=RChestFakeC] run summon armor_stand -233 -29.05 -18 {PersistenceRequired:1b,Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["fakechest","RChestFakeC","NewFake"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:26}}],Passengers:[{id:"hopper_minecart",PersistenceRequired:1b,LootTable:"tutorial:rare_treasure",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"text":"Rare Treasure Chest","color":"dark_purple","bold":"true","underlined":"true"}',NoAI:1b,Tags:["RChestFake","fakechest"]}]}
execute positioned -235 -28 -19 if entity @a[team=Lobby,distance=..10] unless entity @e[type=armor_stand,tag=LChestFakeC] run summon armor_stand -232 -29.05 -21 {PersistenceRequired:1b,Rotation:[90.0f,0.0f],Small:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:["fakechest","LChestFakeC","NewFake"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:69}}]}

execute as @e[type=#game:chest,tag=fakechest] unless score @s CmdData matches 11.. run scoreboard players add @s CmdData 1
execute as @e[type=#game:chest,tag=fakechest,scores={CmdData=..10}] at @s run particle block sand ~ ~ ~ 0 0 0 0.1 2
execute as @e[type=#game:chest,tag=fakechest,scores={CmdData=..10}] at @s run particle block mud ~ ~ ~ 0 0 0 0.1 3
execute as @e[type=#game:chest,tag=fakechest,scores={CmdData=..10}] at @s run playsound chesttutorial master @a ~ ~ ~ 1 1
execute as @e[type=#game:chest,tag=fakechest,scores={CmdData=..10}] at @s run playsound chestrise master @a ~ ~ ~ 1 1
execute as @e[type=#game:chest,tag=fakechest,scores={CmdData=..10}] at @s run tp @s ~ ~0.1 ~

#> Particles
#Common
execute as @e[type=armor_stand,tag=CChestFakeC,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust light_gray_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @a[team=Lobby,distance=..7]
execute as @e[type=armor_stand,tag=CChestFakeC,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust light_gray_concrete ~ ~1 ~ 0 0 0 0.1 1 normal @a[team=Lobby,distance=7..12]
execute as @e[type=armor_stand,tag=CChestFakeC,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust light_gray_concrete ~ ~2 ~ 0 0 0 0.1 1 normal @a[team=Lobby,distance=13..]
#Uncommon
execute as @e[type=armor_stand,tag=UCChestFakeC,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust light_blue_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @a[team=Lobby,distance=..7]
execute as @e[type=armor_stand,tag=UCChestFakeC,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust light_blue_concrete ~ ~1 ~ 0 0 0 0.1 1 normal @a[team=Lobby,distance=7..12]
execute as @e[type=armor_stand,tag=UCChestFakeC,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust light_blue_concrete ~ ~2 ~ 0 0 0 0.1 1 normal @a[team=Lobby,distance=13..]
#Rare
execute as @e[type=armor_stand,tag=RChestFakeC,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust purple_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @a[team=Lobby,distance=..7]
execute as @e[type=armor_stand,tag=RChestFakeC,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust purple_concrete ~ ~1 ~ 0 0 0 0.1 1 normal @a[team=Lobby,distance=7..12]
execute as @e[type=armor_stand,tag=RChestFakeC,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust purple_concrete ~ ~2 ~ 0 0 0 0.1 1 normal @a[team=Lobby,distance=13..]
#Locked
execute as @e[type=armor_stand,tag=LChestFakeC,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust red_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @a[team=Lobby,distance=..7]
execute as @e[type=armor_stand,tag=LChestFakeC,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust red_concrete ~ ~1 ~ 0 0 0 0.1 1 normal @a[team=Lobby,distance=7..12]
execute as @e[type=armor_stand,tag=LChestFakeC,tag=!Looted,scores={CmdData=31..}] at @s run particle falling_dust red_concrete ~ ~2 ~ 0 0 0 0.1 1 normal @a[team=Lobby,distance=13..]

#Common
execute as @e[type=hopper_minecart,tag=CChestFake,tag=!Opened] at @s if data entity @s Items run item replace entity @e[type=armor_stand,tag=CChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:20}
execute as @e[type=hopper_minecart,tag=CChestFake,tag=!Opened] at @s if data entity @s Items run playsound block.chest.open master @a ~ ~ ~ 1 1.3
execute as @e[type=hopper_minecart,tag=CChestFake,tag=!Opened] at @s if data entity @s Items run tag @s add Opened

execute as @e[type=hopper_minecart,tag=CChestFake,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run playsound chestempty master @a ~ ~ ~ 1 0.6
execute as @e[type=hopper_minecart,tag=CChestFake,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run item replace entity @e[type=armor_stand,tag=CChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:21}
execute as @e[type=hopper_minecart,tag=CChestFake,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @e[type=armor_stand,tag=CChestFakeC,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[type=hopper_minecart,tag=CChestFake,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @s add Looted
execute as @e[type=hopper_minecart,tag=CChestFake,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s unless entity @a[team=Lobby,distance=..6] run kill @s

execute as @e[type=hopper_minecart,tag=CChestFake,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run item replace entity @e[type=armor_stand,tag=CChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:21}
execute as @e[type=hopper_minecart,tag=CChestFake,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run tag @e[type=armor_stand,tag=CChestFakeC,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[type=hopper_minecart,tag=CChestFake,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run tp @s 0 -1000 0
execute as @e[type=hopper_minecart,tag=CChestFake,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run kill @s

#Uncommon
execute as @e[type=hopper_minecart,tag=UCChestFake,tag=!Opened] at @s if data entity @s Items run item replace entity @e[type=armor_stand,tag=UCChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:24}
execute as @e[type=hopper_minecart,tag=UCChestFake,tag=!Opened] at @s if data entity @s Items run playsound block.chest.open master @a ~ ~ ~ 1 1.1
execute as @e[type=hopper_minecart,tag=UCChestFake,tag=!Opened] at @s if data entity @s Items run tag @s add Opened

execute as @e[type=hopper_minecart,tag=UCChestFake,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run playsound chestempty master @a ~ ~ ~ 1 0.6
execute as @e[type=hopper_minecart,tag=UCChestFake,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run item replace entity @e[type=armor_stand,tag=UCChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:25}
execute as @e[type=hopper_minecart,tag=UCChestFake,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @e[type=armor_stand,tag=UCChestFakeC,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[type=hopper_minecart,tag=UCChestFake,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @s add Looted
execute as @e[type=hopper_minecart,tag=UCChestFake,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s unless entity @a[team=Lobby,distance=..6] run kill @s

execute as @e[type=hopper_minecart,tag=UCChestFake,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run item replace entity @e[type=armor_stand,tag=UCChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:25}
execute as @e[type=hopper_minecart,tag=UCChestFake,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run tag @e[type=armor_stand,tag=UCChestFakeC,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[type=hopper_minecart,tag=UCChestFake,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run tp @s 0 -1000 0
execute as @e[type=hopper_minecart,tag=UCChestFake,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run kill @s

#Rare
execute as @e[type=hopper_minecart,tag=RChestFake,tag=!Opened] at @s if data entity @s Items run item replace entity @e[type=armor_stand,tag=RChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:27}
execute as @e[type=hopper_minecart,tag=RChestFake,tag=!Opened] at @s if data entity @s Items run playsound block.chest.open master @a ~ ~ ~ 1 0.7
execute as @e[type=hopper_minecart,tag=RChestFake,tag=!Opened] at @s if data entity @s Items run tag @s add Opened

execute as @e[type=hopper_minecart,tag=RChestFake,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run playsound chestempty master @a ~ ~ ~ 1 0.6
execute as @e[type=hopper_minecart,tag=RChestFake,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run item replace entity @e[type=armor_stand,tag=RChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:28}
execute as @e[type=hopper_minecart,tag=RChestFake,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @e[type=armor_stand,tag=RChestFakeC,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[type=hopper_minecart,tag=RChestFake,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @s add Looted
execute as @e[type=hopper_minecart,tag=RChestFake,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s unless entity @a[team=Lobby,distance=..6] run kill @s

execute as @e[type=hopper_minecart,tag=RChestFake,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run item replace entity @e[type=armor_stand,tag=RChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:28}
execute as @e[type=hopper_minecart,tag=RChestFake,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run tag @e[type=armor_stand,tag=RChestFakeC,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[type=hopper_minecart,tag=RChestFake,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run tp @s 0 -1000 0
execute as @e[type=hopper_minecart,tag=RChestFake,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run kill @s

#Locked
execute as @e[type=chest_minecart,tag=fakelockedchest,tag=!Opened] at @s if data entity @s Items run item replace entity @e[type=armor_stand,tag=LChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:71}
execute as @e[type=chest_minecart,tag=fakelockedchest,tag=!Opened] at @s if data entity @s Items run playsound block.chest.open master @a ~ ~ ~ 1 0.7
execute as @e[type=chest_minecart,tag=fakelockedchest,tag=!Opened] at @s if data entity @s Items run playsound lockedtreasureopen master @a ~ ~ ~ 1 2
execute as @e[type=chest_minecart,tag=fakelockedchest,tag=!Opened] at @s if data entity @s Items run tag @s add Opened

execute as @e[type=chest_minecart,tag=fakelockedchest,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run playsound chestempty master @a ~ ~ ~ 1 0.6
execute as @e[type=chest_minecart,tag=fakelockedchest,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run item replace entity @e[type=armor_stand,tag=LChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:72}
execute as @e[type=chest_minecart,tag=fakelockedchest,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @e[type=armor_stand,tag=LChestFakeC,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[type=chest_minecart,tag=fakelockedchest,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s run tag @s add Looted
execute as @e[type=chest_minecart,tag=fakelockedchest,tag=Opened,tag=!Looted,nbt={Items:[]}] at @s unless entity @a[team=Lobby,distance=..6] run kill @s

execute as @e[type=chest_minecart,tag=fakelockedchest,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run item replace entity @e[type=armor_stand,tag=LChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:72}
execute as @e[type=chest_minecart,tag=fakelockedchest,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run tag @e[type=armor_stand,tag=LChestFakeC,limit=1,sort=nearest,distance=..1] add Looted
execute as @e[type=chest_minecart,tag=fakelockedchest,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run tp @s 0 -1000 0
execute as @e[type=chest_minecart,tag=fakelockedchest,tag=Opened,tag=!Looted] at @s unless entity @a[team=Lobby,distance=..7] run kill @s

execute as @e[type=armor_stand,tag=LChestFakeC,tag=Unlocked,tag=!Spawned] at @s run summon chest_minecart ~ ~-0.05 ~ {PersistenceRequired:1b,LootTable:"tutorial:locked_treasure",Silent:1b,Invulnerable:1b,Rotation:[-90.0f, 0.0f],CustomDisplayTile:1b,Tags:["fakechest","fakelockedchest"],CustomName:'{"text":"Locked Treasure Chest","color":"dark_red","bold":"true","underlined":"true"}',DisplayState:{Name:"minecraft:air"}}
execute as @e[type=armor_stand,tag=LChestFakeC,tag=Unlocked,tag=!Spawned] at @s run scoreboard players set @e[type=chest_minecart,tag=fakechest] CmdData 11
execute as @e[type=armor_stand,tag=LChestFakeC,tag=Unlocked,tag=!Spawned] at @s run item replace entity @s armor.head with diamond_hoe{CustomModelData:70}
execute as @e[type=armor_stand,tag=LChestFakeC,tag=Unlocked,tag=!Spawned] at @s run scoreboard players set @e[type=chest_minecart,tag=lockedchest,limit=1,sort=nearest,distance=..1] CmdData 30
execute as @e[type=armor_stand,tag=LChestFakeC,tag=Unlocked,tag=!Spawned] run tag @s add Spawned

execute as @e[type=chest_minecart,tag=fakelockedchest] at @s run tp @s @e[type=armor_stand,tag=LChestFakeC,tag=Unlocked,tag=Spawned,limit=1,sort=nearest,distance=..2]

#> Despawn looted fakes
execute as @e[type=#game:chest,tag=fakechest,tag=Looted] run scoreboard players add @s CmdData 1
execute as @e[type=#game:chest,tag=fakechest,tag=Looted,scores={CmdData=11..21}] at @s run particle block sand ~ ~ ~ 0 0 0 0.1 2
execute as @e[type=#game:chest,tag=fakechest,tag=Looted,scores={CmdData=11..21}] at @s run particle block mud ~ ~ ~ 0 0 0 0.1 3
execute as @e[type=#game:chest,tag=fakechest,tag=Looted,scores={CmdData=11..21}] at @s run playsound chesttutorial master @a ~ ~ ~ 1 1
execute as @e[type=#game:chest,tag=fakechest,tag=Looted,scores={CmdData=11..21}] at @s run playsound chestbury master @a ~ ~ ~ 1 1
execute as @e[type=#game:chest,tag=fakechest,tag=Looted,scores={CmdData=11..23}] at @s run tp @s ~ ~-0.1 ~
execute as @e[type=#game:chest,tag=fakechest,tag=Looted,scores={CmdData=40..}] at @s run tp @s ~ ~-200 ~
execute as @e[type=#game:chest,tag=fakechest,tag=Looted,scores={CmdData=40..}] at @s run kill @s

scoreboard players add @e[type=#game:chest,tag=fakechest,tag=Opened] eyeclick 1
execute as @e[type=#game:chest,tag=fakechest,tag=Opened,scores={eyeclick=140..}] run data remove entity @s Items