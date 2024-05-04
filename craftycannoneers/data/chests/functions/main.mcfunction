#> Chest loop
execute as @e[type=armor_stand,tag=chest] run function chests:loop

#> Spawn locked chest
execute unless entity @e[type=armor_stand,tag=LChestAS,limit=1] if score $CombinedDamage CmdData >= $lockboxspawn CmdData run function chests:spawnlocked

#> Crossbow predicates
tag @a[tag=!loaded,predicate=game:crossbow_loaded_mainhand] add loaded
tag @a[tag=!loaded,predicate=game:crossbow_loaded_offhand] add loaded
tag @a[tag=loaded,predicate=game:crossbow_mainhand] remove loaded
tag @a[tag=loaded,predicate=game:crossbow_offhand] remove loaded
#> Check for loaded crossbows
execute as @a[team=!Lobby] run function everytick:cbowcheck

#> Demo
function chests:demo/loop
