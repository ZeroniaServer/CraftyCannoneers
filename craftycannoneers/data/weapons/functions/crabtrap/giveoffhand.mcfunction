#> Detecting cases
execute if entity @s[predicate=weapons:empty_offhand] run tag @s add emptyOffhand
execute if entity @s[predicate=weapons:crab_trap_empty_offhand] run tag @s add stackOffhand
execute if entity @s[predicate=weapons:crab_trap_offhand_64] run tag @s add fullStackOffhand

#> If offhand is empty, replace with 1 crab trap and use blank NBT to prevent animation
tag @s add self
execute if entity @s[tag=emptyOffhand] run scoreboard players set @e[type=marker,tag=CrabTrapSpawn,tag=current,limit=1] spawnPlaceable 0
data modify storage craftycannoneers:crabtrap function set value "replace entity @a[tag=self,tag=emptyOffhand,limit=1] weapon.offhand"
execute as @e[type=marker,tag=CrabTrapSpawn,tag=current,limit=1] run function weapons:crabtrap/givewithdura with storage craftycannoneers:crabtrap
item modify entity @s[tag=emptyOffhand] weapon.offhand weapons:blank

#> If offhand has empty crab trap (under a stack), give 2 more and then restore the original stack amount to prevent animation
execute store result score @s hasCrabTraps run data get entity @s Inventory[{Slot:-106b}].count
item modify entity @s[tag=stackOffhand,tag=!fullStackOffhand] weapon.offhand weapons:add_two
scoreboard players add @s[tag=stackOffhand,tag=!fullStackOffhand] hasCrabTraps 1
loot replace entity @s[tag=stackOffhand,tag=!fullStackOffhand] weapon.offhand loot weapons:crab_trap_return

#> If offhand had a stack of empty crab traps, replace with a full stack and use blank NBT to prevent animation
scoreboard players set @s[tag=fullStackOffhand] spawnPlaceable 0
loot replace entity @s[tag=fullStackOffhand] weapon.offhand loot weapons:crab_trap_stack
item modify entity @s[tag=fullStackOffhand] weapon.offhand weapons:blank

#> If all else fails, give a new barrel somewhere
execute as @e[type=marker,tag=CrabTrapSpawn,tag=current,limit=1] run loot give @a[tag=self,tag=!emptyOffhand,tag=!stackOffhand,limit=1] loot weapons:crab_trap_return

#> Reset
tag @s remove self
tag @s[tag=emptyOffhand] remove emptyOffhand
tag @s[tag=stackOffhand] remove stackOffhand
tag @s[tag=fullStackOffhand] remove fullStackOffhand
scoreboard players reset @s[scores={spawnPlaceable=0..}] spawnPlaceable