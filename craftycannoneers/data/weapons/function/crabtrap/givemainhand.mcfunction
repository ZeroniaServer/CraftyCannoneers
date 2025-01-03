#> Detecting cases
execute if entity @s[predicate=weapons:empty_mainhand] run tag @s add emptyMainhand
execute if entity @s[predicate=weapons:crab_trap_empty_mainhand] run tag @s add stackMainhand
execute if entity @s[predicate=weapons:crab_trap_mainhand_64] run tag @s add fullStackMainhand

#> If mainhand is empty, replace with 1 crab trap and use blank NBT to prevent animation
tag @s add self
execute if entity @s[tag=emptyMainhand] run scoreboard players set @e[type=marker,tag=CrabTrapSpawn,tag=current,limit=1] spawnPlaceable 0
data modify storage craftycannoneers:crabtrap function set value "replace entity @a[tag=self,tag=emptyMainhand,limit=1] weapon.mainhand"
execute as @e[type=marker,tag=CrabTrapSpawn,tag=current,limit=1] run function weapons:crabtrap/givewithdura with storage craftycannoneers:crabtrap
item modify entity @s[tag=emptyMainhand] weapon.mainhand weapons:blank

#> If mainhand has empty crab trap (under a stack), give 2 more and then restore the original stack amount to prevent animation
scoreboard players reset @s hasCrabTraps
execute if entity @s[tag=stackMainhand,tag=!fullStackMainhand] store result score @s hasCrabTraps run data get entity @s SelectedItem.count
item modify entity @s[tag=stackMainhand,tag=!fullStackMainhand] weapon.mainhand weapons:add_two
scoreboard players add @s[tag=stackMainhand,tag=!fullStackMainhand] hasCrabTraps 1
loot replace entity @s[tag=stackMainhand,tag=!fullStackMainhand] weapon.mainhand loot weapons:crab_trap_return

#> If mainhand had a stack of empty crab traps, replace with a full stack and use blank NBT to prevent animation
scoreboard players set @s[tag=fullStackMainhand] spawnPlaceable 0
loot replace entity @s[tag=fullStackMainhand] weapon.mainhand loot weapons:crab_trap_stack
item modify entity @s[tag=fullStackMainhand] weapon.mainhand weapons:blank

#> If all else fails, give a new crab trap somewhere
execute as @e[type=marker,tag=CrabTrapSpawn,tag=current,limit=1] run loot give @a[tag=self,tag=!emptyMainhand,tag=!stackMainhand,limit=1] loot weapons:crab_trap_return

#> Reset
tag @s remove self
tag @s[tag=emptyMainhand] remove emptyMainhand
tag @s[tag=stackMainhand] remove stackMainhand
tag @s[tag=fullStackMainhand] remove fullStackMainhand
scoreboard players reset @s[scores={spawnPlaceable=0..}] spawnPlaceable