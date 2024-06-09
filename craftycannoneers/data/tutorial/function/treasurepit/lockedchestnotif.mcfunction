scoreboard players set @s click 0
execute unless entity @a[predicate=chests:key,distance=..7] unless entity @a[predicate=chests:key_offhand,distance=..7] run scoreboard players set @s click 1
execute if score @s click matches 1 store result entity @s width float 0.98 store result entity @s height float 0.7 run return 1
execute store result entity @s width float 1 store result entity @s height float 1 run return 0