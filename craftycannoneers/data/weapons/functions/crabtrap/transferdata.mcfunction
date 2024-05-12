execute if score $emptytrap CmdData matches 1 run tag @s add Empty
scoreboard players operation @s TrapDurability = $trapdura TrapDurability
data modify entity @s item.components."minecraft:custom_data".owner set from entity @a[tag=placer,limit=1] UUID
tag @s remove new
execute if entity @s[tag=!Empty] run function weapons:crabtrap/release