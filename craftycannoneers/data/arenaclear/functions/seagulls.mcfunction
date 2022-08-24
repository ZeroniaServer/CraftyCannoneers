kill @e[type=armor_stand,tag=seagull]
kill @e[type=marker,tag=seagull]
summon marker 28 27 39 {Tags:["seagullSpawner","seagull"],Rotation:[36.0f,0.0f]}
summon marker 106 33 -27 {Tags:["seagullSpawner","seagull"],Rotation:[-12.0f,0.0f]}
summon marker 70 18 0 {Tags:["seagullSpawner","seagull"]}

execute as @e[type=marker,tag=seagullSpawner] run function arenaclear:spawnseagulls