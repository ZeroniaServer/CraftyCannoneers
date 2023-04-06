#Common
execute if entity @s[tag=CChestFake] run item replace entity @e[type=armor_stand,tag=CChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:20}
execute if entity @s[tag=CChestFake] run tag @s add LoadLoot
execute if entity @s[tag=CChestFake] run playsound block.chest.open master @a ~ ~ ~ 1 1.3

#Uncommon
execute if entity @s[tag=UCChestFake] run item replace entity @e[type=armor_stand,tag=UCChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:24}
execute if entity @s[tag=UCChestFake] run tag @s add LoadLoot
execute if entity @s[tag=UCChestFake] run playsound block.chest.open master @a ~ ~ ~ 1 1.1

#Rare
execute if entity @s[tag=RChestFake] run item replace entity @e[type=armor_stand,tag=RChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:27}
execute if entity @s[tag=RChestFake] run tag @s add LoadLoot
execute if entity @s[tag=RChestFake] run playsound block.chest.open master @a ~ ~ ~ 1 0.7

#Locked
execute if entity @s[tag=fakelockedchest] run item replace entity @e[type=armor_stand,tag=LChestFakeC,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:71}
execute if entity @s[tag=fakelockedchest] run tag @s add LoadLoot
execute if entity @s[tag=fakelockedchest] run playsound block.chest.open master @a ~ ~ ~ 1 0.7
execute if entity @s[tag=fakelockedchest] run playsound lockedtreasureopen master @a ~ ~ ~ 1 2

#Global
tag @s add Opened