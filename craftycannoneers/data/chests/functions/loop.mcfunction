#> Rise
execute at @s[type=armor_stand,tag=NewChest] run function chests:rise

#> Particles
execute at @s[type=armor_stand,tag=!Looted,scores={CmdData=31..}] run function chests:particles

#> Open
execute at @s[type=hopper_minecart,tag=!Opened] if data entity @s Items run function chests:open
execute at @s[type=chest_minecart,tag=!Opened] if data entity @s Items run function chests:open

#> Once opened
execute at @s[type=hopper_minecart,tag=Opened,tag=!Looted] run function chests:opened
execute at @s[type=chest_minecart,tag=Opened,tag=!Looted] run function chests:opened

#> Locked Chest
execute at @s[type=armor_stand,tag=LChestAS] run function chests:lockedchest

#> Bury
execute at @s[tag=Looted,scores={CmdData=30..220}] run function chests:bury

#> Prevent certain items from being stored in chests
execute at @s[type=hopper_minecart] run function chests:preventitems
execute at @s[type=chest_minecart] run function chests:preventitems