#> Detecting cases
execute if entity @s[predicate=weapons:empty_mainhand] run tag @s add emptyMainhand
execute if entity @s[predicate=weapons:barrel_mainhand] run tag @s add stackMainhand
execute if entity @s[predicate=weapons:barrel_mainhand_64] run tag @s add fullStackMainhand

#> If mainhand is empty, replace with 1 barrel and use blank NBT to prevent animation
scoreboard players set @s[tag=emptyMainhand] spawnPlaceable 0
loot replace entity @s[tag=emptyMainhand] weapon.mainhand loot weapons:barrel
item modify entity @s[tag=emptyMainhand] weapon.mainhand weapons:blank

#> If mainhand has barrel (under a stack), give 2 more and then restore the original stack amount to prevent animation
scoreboard players reset @s hasBarrels
execute if entity @s[tag=stackMainhand,tag=!fullStackMainhand] store result score @s hasBarrels run data get entity @s SelectedItem.count
item modify entity @s[tag=stackMainhand,tag=!fullStackMainhand] weapon.mainhand weapons:add_two
scoreboard players add @s[tag=stackMainhand,tag=!fullStackMainhand] hasBarrels 1
loot replace entity @s[tag=stackMainhand,tag=!fullStackMainhand] weapon.mainhand loot weapons:barrel_return

#> If mainhand had a stack of barrels, replace with a full stack and use blank NBT to prevent animation
scoreboard players set @s[tag=fullStackMainhand] spawnPlaceable 0
loot replace entity @s[tag=fullStackMainhand] weapon.mainhand loot weapons:barrel_stack
item modify entity @s[tag=fullStackMainhand] weapon.mainhand weapons:blank

#> If all else fails, give a new barrel somewhere
execute if entity @s[tag=!emptyMainhand,tag=!stackMainhand] run loot give @s loot weapons:barrel

#> Reset
tag @s[tag=emptyMainhand] remove emptyMainhand
tag @s[tag=stackMainhand] remove stackMainhand
tag @s[tag=fullStackMainhand] remove fullStackMainhand
scoreboard players reset @s[scores={spawnPlaceable=0..}] spawnPlaceable