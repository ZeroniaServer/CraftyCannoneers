#Common
execute if entity @s[tag=CChestHopper] on vehicle run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data={floats:[21.0f]}]

#Uncommon
execute if entity @s[tag=UCChestHopper] on vehicle run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data={floats:[25.0f]}]

#Rare
execute if entity @s[tag=RChestHopper] on vehicle run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data={floats:[28.0f]}]

#Locked
execute if entity @s[tag=lockedchest] on vehicle run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data={floats:[72.0f]}]

#Cargo
execute if entity @s[tag=CargoHopper] on vehicle run tag @s add ContainerLooted

#Grave
execute if entity @s[tag=grave] on vehicle run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data={floats:[136.0f]}]
execute if entity @s[tag=grave] on vehicle unless score @s CmdData matches 31.. run scoreboard players set @s CmdData 31

#Global
execute unless entity @s[tag=CargoHopper] on vehicle run tag @s add Looted
tag @s add Looted