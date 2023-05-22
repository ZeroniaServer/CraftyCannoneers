tag @s add steal
tag @s remove follow
tag @s remove roam
scoreboard players reset @s crabtime
scoreboard players set @s crabmode 100
execute on vehicle on controller run data merge entity @s {Attributes:[{Name:"generic.follow_range",Base:16}]}