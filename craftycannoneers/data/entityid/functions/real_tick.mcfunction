execute as @e[type=#entityid:clickable] unless score @s entityidset matches 1 run function entityid:assign_id
schedule function entityid:real_tick 1t append