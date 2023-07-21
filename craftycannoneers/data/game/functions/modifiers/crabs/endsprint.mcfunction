tag @s remove itemsprint
scoreboard players reset @s CmdData
execute on passengers at @s[nbt={item:{id:"minecraft:goat_horn"}}] run function game:modifiers/crabs/startrave