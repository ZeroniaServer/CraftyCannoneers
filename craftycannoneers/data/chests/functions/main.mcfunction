#> Chest loop
execute as @e[type=#game:chest,tag=chest] run function chests:loop

#> Spawn locked chest
execute unless entity @e[type=armor_stand,tag=LChestAS] if score $CombinedDamage CmdData >= $lockboxspawn CmdData run function chests:spawnlocked

#> Crossbow predicates
tag @a[predicate=game:crossbow_loaded_mainhand] add loaded
tag @a[predicate=game:crossbow_loaded_offhand] add loaded
tag @a[predicate=game:crossbow_mainhand] remove loaded
tag @a[predicate=game:crossbow_offhand] remove loaded