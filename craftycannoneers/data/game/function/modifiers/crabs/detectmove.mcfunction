execute on vehicle unless entity @s[nbt={Motion:[0.0d,0.0d,0.0d]}] on passengers run tag @s add Moving
item replace entity @s[tag=Moving] container.0 with diamond_hoe[custom_model_data=118]
item replace entity @s[tag=!Moving] container.0 with diamond_hoe[custom_model_data=117]

#> TODO don't play step sounds every tick (I think this may be too much but I'm not sure)
execute at @s[tag=Moving,predicate=!game:inwater] run function game:modifiers/crabs/stepsounds