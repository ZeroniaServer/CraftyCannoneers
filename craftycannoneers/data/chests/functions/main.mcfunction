#> Chest loop
execute as @e[type=armor_stand,tag=chest] run function chests:loop

#> Spawn locked chest
execute unless entity @e[type=armor_stand,tag=LChestAS,limit=1] if score $CombinedDamage CmdData >= $lockboxspawn CmdData run function chests:spawnlocked

#> Crossbow loaded check
execute as @a[tag=!loaded] if items entity @s weapon.* crossbow[charged_projectiles] run tag @s add loaded
execute as @a[tag=loaded] unless items entity @s weapon.* crossbow[charged_projectiles] run tag @s remove loaded