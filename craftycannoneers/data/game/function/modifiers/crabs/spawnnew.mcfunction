kill @e[type=marker,tag=CrabSpawner]
summon marker 70 -25 0 {Tags:["CrabSpawner"]}
execute as @e[type=marker,tag=CrabSpawner,tag=!Randomized] at @s run function game:modifiers/crabs/randompos