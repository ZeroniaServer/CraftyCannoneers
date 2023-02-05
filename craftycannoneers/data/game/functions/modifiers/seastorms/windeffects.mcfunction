scoreboard players add @s CmdData 1
execute at @s[tag=East] run tp @s ~3 ~ ~ 
execute at @s[tag=West] run tp @s ~-3 ~ ~
execute at @s run particle minecraft:cloud ~ ~ ~ 2.2 0 0 0.05 2 force 
kill @s[scores={CmdData=46..}]