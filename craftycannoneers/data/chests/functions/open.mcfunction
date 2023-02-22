#Common
execute at @s[tag=CChestHopper] run item replace entity @e[type=armor_stand,tag=CChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:20}
execute at @s[tag=CChestHopper] run tag @s add LoadLoot
execute at @s[tag=CChestHopper] run playsound block.chest.open master @a ~ ~ ~ 1 1.3

#Uncommon
execute at @s[tag=UCChestHopper] run item replace entity @e[type=armor_stand,tag=UCChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:24}
execute at @s[tag=UCChestHopper] run tag @s add LoadLoot
execute at @s[tag=UCChestHopper] run playsound block.chest.open master @a ~ ~ ~ 1 1.1

#Rare
execute at @s[tag=RChestHopper] run item replace entity @e[type=armor_stand,tag=RChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:27}
execute at @s[tag=RChestHopper] run tag @s add LoadLoot
execute at @s[tag=RChestHopper] run playsound block.chest.open master @a ~ ~ ~ 1 0.7

#Locked
execute at @s[tag=lockedchest] run item replace entity @e[type=armor_stand,tag=LChestAS,limit=1,sort=nearest,distance=..1] armor.head with diamond_hoe{CustomModelData:71}
execute at @s[tag=lockedchest] run playsound block.chest.open master @a ~ ~ ~ 1 0.7
execute at @s[tag=lockedchest] run tag @s add LoadLoot
execute at @s[tag=lockedchest] run playsound lockedtreasureopen master @a ~ ~ ~ 1 2

tag @s add Opened