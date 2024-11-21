#Common
execute if entity @s[tag=CChestFake] on vehicle run item replace entity @s armor.head with diamond_hoe[custom_model_data={floats:[21.0f]}]

#Uncommon
execute if entity @s[tag=UCChestFake] on vehicle run item replace entity @s armor.head with diamond_hoe[custom_model_data={floats:[25.0f]}]

#Rare
execute if entity @s[tag=RChestFake] on vehicle run item replace entity @s armor.head with diamond_hoe[custom_model_data={floats:[28.0f]}]

#Locked
execute if entity @s[tag=fakelockedchest] on vehicle run item replace entity @s armor.head with diamond_hoe[custom_model_data={floats:[72.0f]}]

execute on vehicle run tag @s add Looted
tag @s add Looted