#Common
execute if entity @s[tag=CChestHopper] run item replace entity @e[type=armor_stand,tag=CChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:21}
execute if entity @s[tag=CChestHopper] run tag @e[type=armor_stand,tag=CChestAS,limit=1,sort=nearest,distance=..1] add Looted

#Uncommon
execute if entity @s[tag=UCChestHopper] run item replace entity @e[type=armor_stand,tag=UCChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:25}
execute if entity @s[tag=UCChestHopper] run tag @e[type=armor_stand,tag=UCChestAS,limit=1,sort=nearest,distance=..1] add Looted

#Rare
execute if entity @s[tag=RChestHopper] run item replace entity @e[type=armor_stand,tag=RChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:28}
execute if entity @s[tag=RChestHopper] run tag @e[type=armor_stand,tag=RChestAS,limit=1,sort=nearest,distance=..1] add Looted

#Locked
execute if entity @s[tag=lockedchest] run item replace entity @e[type=armor_stand,tag=LChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:72}
execute if entity @s[tag=lockedchest] run tag @e[type=armor_stand,tag=LChestAS,limit=1,sort=nearest,distance=..1] add Looted

#Cargo
execute if entity @s[tag=CargoHopper] run tag @e[type=item_display,tag=CargoBarrel,limit=1,sort=nearest,distance=..1] add ContainerLooted

#Grave
execute if entity @s[tag=grave] on vehicle run item replace entity @s armor.head with diamond_hoe{CustomModelData:136}
execute if entity @s[tag=grave] on vehicle run tag @s add Looted

tag @s add Looted