item replace entity @s container.0 with diamond_hoe{CustomModelData:117}
execute unless entity @s[tag=hashorn] run return 0
playsound entity.item.break master @a ~ ~ ~ 1 1
particle item goat_horn ~ ~0.1 ~ 0 0 0 0.1 15 force
execute on passengers run item replace entity @s container.0 with air
tag @s remove hasitem
tag @s remove hashorn