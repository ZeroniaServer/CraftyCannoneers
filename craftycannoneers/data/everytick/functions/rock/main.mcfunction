execute as @e[type=snowball,tag=!init] at @s run function everytick:rock/init
execute as @e[type=marker,tag=rocktracker] at @s run function everytick:rock/tp

execute as @a[scores={throwsb=1..}] at @s run function everytick:rock/spawn
scoreboard players reset @a[scores={throwsb=1..}]