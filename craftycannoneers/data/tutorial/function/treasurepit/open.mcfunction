#Common
execute if entity @s[tag=CChestFake] on vehicle run item replace entity @s armor.head with diamond_hoe[custom_model_data={floats:[20.0f]}]
execute if entity @s[tag=CChestFake] run playsound block.chest.open master @a ~ ~ ~ 1 1.3

#Uncommon
execute if entity @s[tag=UCChestFake] on vehicle run item replace entity @s armor.head with diamond_hoe[custom_model_data={floats:[24.0f]}]
execute if entity @s[tag=UCChestFake] run playsound block.chest.open master @a ~ ~ ~ 1 1.1

#Rare
execute if entity @s[tag=RChestFake] on vehicle run item replace entity @s armor.head with diamond_hoe[custom_model_data={floats:[27.0f]}]
execute if entity @s[tag=RChestFake] run playsound block.chest.open master @a ~ ~ ~ 1 0.7

#Locked
execute if entity @s[tag=fakelockedchest] on vehicle run item replace entity @s armor.head with diamond_hoe[custom_model_data={floats:[71.0f]}]
execute if entity @s[tag=fakelockedchest] run playsound block.chest.open master @a ~ ~ ~ 1 0.7
execute if entity @s[tag=fakelockedchest] run playsound lockedtreasureopen master @a ~ ~ ~ 1 2

#Cargo
execute at @s[tag=CargoHopperFake] on vehicle run item replace entity @s container.0 with diamond_hoe[custom_model_data={floats:[115.0f]}]
execute at @s[tag=CargoHopperFake] run playsound block.barrel.open master @a ~ ~ ~ 1 1.3

#Global
tag @s add LoadLoot
tag @s add Opened