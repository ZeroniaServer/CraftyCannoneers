#Common
execute if entity @s[tag=CChestFake] on vehicle run item replace entity @s armor.head with diamond_hoe{CustomModelData:21}

#Uncommon
execute if entity @s[tag=UCChestFake] on vehicle run item replace entity @s armor.head with diamond_hoe{CustomModelData:25}

#Rare
execute if entity @s[tag=RChestFake] on vehicle run item replace entity @s armor.head with diamond_hoe{CustomModelData:28}

#Locked
execute if entity @s[tag=fakelockedchest] on vehicle run item replace entity @s armor.head with diamond_hoe{CustomModelData:72}

execute on vehicle run tag @s add Looted
tag @s add Looted