gamerule doFireTick false
summon marker 39 -40 -68 {Tags:["FireRemover","Purple"]}
summon marker 34 -40 43 {Tags:["FireRemover","Orange"]}

execute as @e[type=marker,tag=FireRemover] at @s run function cannons:extinguishloop
gamerule doFireTick true