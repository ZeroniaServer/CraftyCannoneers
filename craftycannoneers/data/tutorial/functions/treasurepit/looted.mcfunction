#Common
execute if entity @s[tag=CChestFake] run item replace entity @e[type=armor_stand,tag=CChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:21}
execute if entity @s[tag=CChestFake] run tag @e[type=armor_stand,tag=CChestFakeC,limit=1,sort=nearest,distance=..1] add Looted

#Uncommon
execute if entity @s[tag=UCChestFake] run item replace entity @e[type=armor_stand,tag=UCChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:25}
execute if entity @s[tag=UCChestFake] run tag @e[type=armor_stand,tag=UCChestFakeC,limit=1,sort=nearest,distance=..1] add Looted

#Rare
execute if entity @s[tag=RChestFake] run item replace entity @e[type=armor_stand,tag=RChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:28}
execute if entity @s[tag=RChestFake] run tag @e[type=armor_stand,tag=RChestFakeC,limit=1,sort=nearest,distance=..1] add Looted

#Locked
execute if entity @s[tag=fakelockedchest] run item replace entity @e[type=armor_stand,tag=LChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:72}
execute if entity @s[tag=fakelockedchest] run tag @e[type=armor_stand,tag=LChestFakeC,limit=1,sort=nearest,distance=..1] add Looted

tag @s add Looted