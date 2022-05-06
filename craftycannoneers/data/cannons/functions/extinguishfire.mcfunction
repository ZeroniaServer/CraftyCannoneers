gamerule doFireTick false
summon marker 39 -40 -68 {Tags:["FireRemover"]}
summon marker 34 -40 43 {Tags:["FireRemover"]}

execute as @e[tag=FireRemover] at @s run function cannons:extinguishloop
gamerule doFireTick true