#> Chest loop
execute as @e[type=armor_stand,tag=chest] run function chests:loop

#> Spawn locked chest
execute unless entity @e[type=armor_stand,tag=LChestAS,limit=1] if score $CombinedDamage CmdData >= $lockboxspawn CmdData run function chests:spawnlocked

#> Check for loaded crossbows
execute as @a[team=!Lobby] run function everytick:cbowcheck