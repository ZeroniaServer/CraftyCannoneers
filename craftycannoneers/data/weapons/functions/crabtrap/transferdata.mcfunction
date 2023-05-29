execute if score $emptytrap CmdData matches 1 run tag @s add Empty
execute store result entity @s item.tag.durability int 1 run scoreboard players get $trapdura TrapDurability
scoreboard players operation @s TrapDurability = $trapdura TrapDurability
data modify entity @s item.tag.id set from entity @s data.id
data modify entity @s item.tag.owner set from entity @a[tag=placer,limit=1] UUID
tag @s remove new
execute if entity @s[tag=!Empty] run function weapons:crabtrap/release