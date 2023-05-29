#> Detecting cases
execute if entity @s[predicate=weapons:empty_mainhand] run tag @s add emptyMainhand

## TODO add stack cases and shit idk :skull:

#> If mainhand is empty, replace with 1 crab trap and use blank NBT to prevent animation
scoreboard players set @s[tag=emptyMainhand] spawnPlaceable 0
tag @s add self
execute as @e[type=marker,tag=CrabTrapSpawn,tag=current,limit=1] run loot replace entity @a[tag=self,tag=emptyMainhand,limit=1] weapon.mainhand loot weapons:crab_trap_return
tag @s remove self
item modify entity @s[tag=emptyMainhand] weapon.mainhand weapons:blank

#> If all else fails, give a new crab trap somewhere
execute as @e[type=marker,tag=CrabTrapSpawn,tag=current,limit=1] run loot give @a[tag=self,tag=!emptyMainhand,limit=1] loot weapons:crab_trap_return

#> Reset
tag @s[tag=emptyMainhand] remove emptyMainhand
scoreboard players reset @s[scores={spawnPlaceable=0..}]