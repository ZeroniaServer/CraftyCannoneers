scoreboard players add @s CmdData 1
execute at @s[tag=East] run tp @s ~3 ~ ~ 
execute at @s[tag=West] run tp @s ~-3 ~ ~
execute at @s run particle minecraft:small_gust ~ ~ ~ 2.2 0.1 0.1 0.05 6 force @a[predicate=cannons:seeparticles]
kill @s[scores={CmdData=46..}]