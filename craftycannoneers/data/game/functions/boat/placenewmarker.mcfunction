execute if entity @s[tag=1] run summon marker 109 -31 0 {Tags:["1","respawnboat"],Rotation:[0.0f,0.0f]}
execute if entity @s[tag=2] run summon marker 31 -31 0 {Tags:["2","respawnboat"],Rotation:[-180.0f,0.0f]}
execute if entity @s[tag=3] run summon marker 83 -31 12 {Tags:["3","respawnboat"],Rotation:[0.0f,0.0f]}
execute if entity @s[tag=4] run summon marker 57 -31 -12 {Tags:["4","respawnboat"],Rotation:[-180.0f,0.0f]}
execute as @e[type=marker,tag=respawnboat] at @s run function game:boat/placenew