#> Chest loop
execute as @e[type=armor_stand,tag=chest] run function chests:loop
execute as @e[type=hopper_minecart,tag=chest] at @s run function chests:aschests
execute as @e[type=hopper_minecart,tag=barrel] at @s run function chests:aschests
execute as @e[type=chest_minecart,tag=chest] at @s run function chests:aschests

#> Spawn locked chest
execute unless entity @e[type=armor_stand,tag=LChestAS,limit=1] if score $CombinedDamage CmdData >= $lockboxspawn CmdData run function chests:spawnlocked

#> Crossbow predicates
tag @a[tag=!loaded,predicate=game:crossbow_loaded_mainhand] add loaded
tag @a[tag=!loaded,predicate=game:crossbow_loaded_offhand] add loaded
tag @a[tag=loaded,predicate=game:crossbow_mainhand] remove loaded
tag @a[tag=loaded,predicate=game:crossbow_offhand] remove loaded