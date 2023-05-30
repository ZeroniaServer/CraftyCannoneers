execute if score $emptytrap CmdData matches 1 run tag @s add Empty
execute store result entity @s item.tag.durability int 1 run scoreboard players get $trapdura TrapDurability
scoreboard players operation @s TrapDurability = $trapdura TrapDurability
data modify entity @s item.tag.id set from entity @s data.id
data modify entity @s item.tag.owner set from entity @a[tag=placer,limit=1] UUID
tag @s remove new
data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},start_interpolation:-1,interpolation_duration:0}
execute if entity @s[tag=!Empty] run function weapons:crabtrap/release