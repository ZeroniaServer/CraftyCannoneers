execute as @a[scores={throwsb=1..}] at @s run function lobby:rock/spawn
scoreboard players reset @a[scores={throwsb=1..}]

execute as @e[type=marker,tag=rocktracker] at @s run function lobby:rock/tp