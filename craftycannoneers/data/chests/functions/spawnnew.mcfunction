kill @e[type=marker,tag=ChestSpawner]
summon marker 70 -25 0 {Tags:["ChestSpawner"]}
execute as @e[type=marker,tag=ChestSpawner,tag=!Randomized] at @s run function chests:randompos