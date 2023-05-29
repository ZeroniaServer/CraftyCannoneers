#> Detecting cases
execute if entity @s[predicate=weapons:empty_offhand] run tag @s add emptyOffhand

## TODO add stack cases and shit idk :skull:

#> If offhand is empty, replace with 1 crab trap and use blank NBT to prevent animation
scoreboard players set @s[tag=emptyOffhand] spawnPlaceable 0
tag @s add self
execute as @e[type=marker,tag=CrabTrapSpawn,tag=current,limit=1] run loot replace entity @a[tag=self,tag=emptyOffhand,limit=1] weapon.offhand loot weapons:crab_trap_return
tag @s remove self
item modify entity @s[tag=emptyOffhand] weapon.offhand weapons:blank

#> If all else fails, give a new crab trap somewhere
execute as @e[type=marker,tag=CrabTrapSpawn,tag=current,limit=1] run loot give @a[tag=self,tag=!emptyOffhand,limit=1] loot weapons:crab_trap_return

#> Reset
tag @s[tag=emptyOffhand] remove emptyOffhand
scoreboard players reset @s[scores={spawnPlaceable=0..}]