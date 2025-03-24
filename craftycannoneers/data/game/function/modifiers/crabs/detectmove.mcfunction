execute on vehicle unless predicate game:still on passengers run tag @s add Moving
item replace entity @s[tag=Moving] container.0 with diamond_hoe[custom_model_data={floats:[118.0f]}]
item replace entity @s[tag=!Moving] container.0 with diamond_hoe[custom_model_data={floats:[117.0f]}]

#> TODO don't play step sounds every tick (I think this may be too much but Im not sure)
execute at @s[tag=Moving,predicate=!game:inwater] run function game:modifiers/crabs/stepsounds