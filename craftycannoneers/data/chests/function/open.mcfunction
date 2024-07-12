#Common
execute at @s[tag=CChestHopper] on vehicle run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=20]
execute at @s[tag=CChestHopper] run playsound block.chest.open master @a ~ ~ ~ 0.8 1.3

#Uncommon
execute at @s[tag=UCChestHopper] on vehicle run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=24]
execute at @s[tag=UCChestHopper] run playsound block.chest.open master @a ~ ~ ~ 0.8 1.1

#Rare
execute at @s[tag=RChestHopper] on vehicle run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=27]
execute at @s[tag=RChestHopper] run playsound block.chest.open master @a ~ ~ ~ 0.8 0.7

#Locked
execute at @s[tag=lockedchest] on vehicle run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=71]
execute at @s[tag=lockedchest] run playsound block.chest.open master @a ~ ~ ~ 0.8 0.7
execute at @s[tag=lockedchest] run playsound lockedtreasureopen master @a ~ ~ ~ 0.8 2

#Cargo
execute at @s[tag=CargoHopper] on vehicle run item replace entity @s container.0 with minecraft:diamond_hoe[custom_model_data=115]
execute at @s[tag=CargoHopper] run playsound block.barrel.open master @a ~ ~ ~ 0.8 1.3

#Grave
execute at @s[tag=grave] on vehicle run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=135]
execute at @s[tag=grave] run playsound graveopen1 master @a ~ ~ ~ 0.8 1.2
execute at @s[tag=grave] run playsound graveopen2 master @a ~ ~ ~ 0.8 0
#soul sounds are cool
execute at @s[tag=grave] run playsound soulshriek master @a ~ ~ ~ 0.8 1
execute at @s[tag=grave] run playsound soulshriek master @a ~ ~ ~ 0.8 1
execute at @s[tag=grave] run playsound soulshriek master @a ~ ~ ~ 0.8 1
execute at @s[tag=grave] run playsound soulshriek master @a ~ ~ ~ 0.8 0.8
execute at @s[tag=grave] run playsound soulshriek master @a ~ ~ ~ 0.8 1.1
execute at @s[tag=grave] run playsound soulshriek master @a ~ ~ ~ 0.8 0
execute at @s[tag=grave] run particle sculk_soul ~ ~0.4 ~ 0 0 0 0.06 12 force @a[team=!Lobby]
execute at @s[tag=grave] if predicate game:located_water run particle minecraft:bubble_column_up ~ ~ ~ 0 0.8 0 0 20 force @a[team=!Lobby]

tag @s add LoadLoot
tag @s add Opened