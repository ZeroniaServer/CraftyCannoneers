setblock -69 -64 0 yellow_shulker_box
execute on passengers run item replace block -69 -64 0 container.0 from entity @s container.0
execute on passengers run item replace entity @s container.0 with air
loot spawn ~ ~0.1 ~ mine -69 -64 0 air{drop_contents:1b}
setblock -69 -64 0 bedrock
tag @s remove hasitem
tag @s add roam
tag @s remove follow
tag @s remove steal
scoreboard players reset @s crabtime
execute if entity @s[tag=chase] on vehicle run function game:modifiers/crabs/return