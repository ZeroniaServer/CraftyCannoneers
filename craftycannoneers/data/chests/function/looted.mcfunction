#Common
execute if entity @s[tag=CChestHopper] on vehicle run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=21]

#Uncommon
execute if entity @s[tag=UCChestHopper] on vehicle run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=25]

#Rare
execute if entity @s[tag=RChestHopper] on vehicle run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=28]

#Locked
execute if entity @s[tag=lockedchest] on vehicle run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=72]

#Cargo
execute if entity @s[tag=CargoHopper] on vehicle run tag @s add ContainerLooted

#Grave
execute if entity @s[tag=grave] on vehicle run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=136]
execute if entity @s[tag=grave] on vehicle unless score @s CmdData matches 31.. run scoreboard players set @s CmdData 31

#Global
execute unless entity @s[tag=CargoHopper] on vehicle run tag @s add Looted
tag @s add Looted