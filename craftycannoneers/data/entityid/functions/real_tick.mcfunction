execute as @e[type=#entityid:clickable] unless score @s entityidset matches 1 run function entityid:assign_id
execute as @e[type=#entityid:targets] unless score @s entityidset matches 1 run function entityid:assign_id
execute as @e[type=#entityid:sources] unless score @s entityidset matches 1 run function entityid:assign_id