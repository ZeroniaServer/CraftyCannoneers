execute at @s[tag=!ascended] unless predicate game:located_water if block ~ ~ ~ #game:raycast_exclude run function game:modifiers/graverobbery/emerge
execute at @s[tag=!ascended] align y positioned ~ ~1 ~ unless predicate game:located_water at @s run function game:modifiers/graverobbery/emergecheck
execute at @s[tag=!ascended] run tp @s ~ ~0.0625 ~
execute at @s[tag=!ascended] run particle minecraft:bubble_column_up ~ ~ ~ 0.2 0.2 0.2 0.04 1 force @a[predicate=cannons:seeparticles]

execute at @s[tag=!ascended] unless predicate game:located_water if block ~ ~ ~ #game:raycast_exclude run function game:modifiers/graverobbery/emerge
execute at @s[tag=!ascended] align y positioned ~ ~1 ~ unless predicate game:located_water at @s run function game:modifiers/graverobbery/emergecheck
execute at @s[tag=!ascended] run tp @s ~ ~0.0625 ~

execute at @s[tag=!ascended] unless predicate game:located_water if block ~ ~ ~ #game:raycast_exclude run function game:modifiers/graverobbery/emerge
execute at @s[tag=!ascended] align y positioned ~ ~1 ~ unless predicate game:located_water at @s run function game:modifiers/graverobbery/emergecheck
execute at @s[tag=!ascended] run tp @s ~ ~0.0625 ~
execute at @s[tag=!ascended] run particle minecraft:bubble_column_up ~ ~ ~ 0.2 0.2 0.2 0.04 1 force @a[predicate=cannons:seeparticles]

execute at @s[tag=!ascended] unless predicate game:located_water if block ~ ~ ~ #game:raycast_exclude run function game:modifiers/graverobbery/emerge
execute at @s[tag=!ascended] align y positioned ~ ~1 ~ unless predicate game:located_water run function game:modifiers/graverobbery/emergecheck
execute at @s[tag=!ascended] run tp @s ~ ~0.0625 ~

tag @s remove ascend