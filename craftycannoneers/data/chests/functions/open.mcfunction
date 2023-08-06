#Common
execute at @s[tag=CChestHopper] on vehicle run item replace entity @s armor.head with diamond_hoe{CustomModelData:20}
execute at @s[tag=CChestHopper] run playsound block.chest.open master @a ~ ~ ~ 1 1.3

#Uncommon
execute at @s[tag=UCChestHopper] on vehicle run item replace entity @s armor.head with diamond_hoe{CustomModelData:24}
execute at @s[tag=UCChestHopper] run playsound block.chest.open master @a ~ ~ ~ 1 1.1

#Rare
execute at @s[tag=RChestHopper] on vehicle run item replace entity @s armor.head with diamond_hoe{CustomModelData:27}
execute at @s[tag=RChestHopper] run playsound block.chest.open master @a ~ ~ ~ 1 0.7

#Locked
execute at @s[tag=lockedchest] on vehicle run item replace entity @s armor.head with diamond_hoe{CustomModelData:71}
execute at @s[tag=lockedchest] run playsound block.chest.open master @a ~ ~ ~ 1 0.7
execute at @s[tag=lockedchest] run playsound lockedtreasureopen master @a ~ ~ ~ 1 2

#Cargo
execute at @s[tag=CargoHopper] on vehicle run item replace entity @s container.0 with diamond_hoe{CustomModelData:115}
execute at @s[tag=CargoHopper] run playsound block.barrel.open master @a ~ ~ ~ 1 1.3

#Grave
execute at @s[tag=grave] on vehicle run item replace entity @s armor.head with diamond_hoe{CustomModelData:135}
execute at @s[tag=grave] run playsound graveopen1 master @a ~ ~ ~ 1 1.2
execute at @s[tag=grave] run playsound graveopen2 master @a ~ ~ ~ 1 0
#soul sounds are cool
execute at @s[tag=grave] run playsound soulshriek master @a ~ ~ ~ 1 1
execute at @s[tag=grave] run playsound soulshriek master @a ~ ~ ~ 1 1
execute at @s[tag=grave] run playsound soulshriek master @a ~ ~ ~ 1 1
execute at @s[tag=grave] run playsound soulshriek master @a ~ ~ ~ 1 0.8
execute at @s[tag=grave] run playsound soulshriek master @a ~ ~ ~ 1 1.1
execute at @s[tag=grave] run playsound soulshriek master @a ~ ~ ~ 1 0
execute at @s[tag=grave] run particle sculk_soul ~ ~0.4 ~ 0 0 0 0.06 12 force @a[team=!Lobby]
execute at @s[tag=grave] if predicate game:located_water run particle minecraft:bubble_column_up ~ ~ ~ 0 1 0 0 20 force @a[team=!Lobby]

tag @s add LoadLoot
tag @s add Opened