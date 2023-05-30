particle item mooshroom_spawn_egg{CustomModelData:15} ~ ~0.5 ~ 0.2 0.25 0.2 0.1 40 force
## TODO play break sound
execute store result entity @s item.tag.durability int 1 run scoreboard players get @s TrapDurability
execute if score @s TrapDurability matches 0.. run loot spawn ~ ~0.1 ~ loot weapons:crab_trap
execute on vehicle run kill
kill @s