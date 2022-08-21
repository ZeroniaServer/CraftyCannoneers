execute if score $dust6 CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=OnDock]
execute if entity @s[tag=1,tag=!end] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2,tag=!end] at @s run tp @s ~ ~0.2 ~0.2
execute if entity @s[tag=1,tag=end] at @s run tp @s ~ ~-2 ~2
execute if entity @s[tag=2,tag=end] at @s run tp @s ~ ~-2 ~-2
tag @s[tag=end] remove end