#> Rise
execute at @s[tag=NewChest] run function chests:rise

#> Particles
execute at @s[tag=!Looted,scores={CmdData=31..}] run function chests:particles

#> Locked Chest
execute at @s[tag=LChestAS] run function chests:lockedchest

#> Bury
execute at @s[tag=Looted,scores={CmdData=30..220}] run function chests:bury