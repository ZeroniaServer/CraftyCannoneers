#Kills arrows in the ground
execute as @e[type=arrow,nbt={inGround:1b}] at @s run particle item arrow ~ ~ ~ 0.1 0.1 0.1 0.1 15
execute as @e[type=arrow,nbt={inGround:1b}] at @s run playsound arrowbreak master @a ~ ~ ~ 1 2
kill @e[type=arrow,nbt={inGround:1b}]
# kill @e[type=arrow,predicate=!game:inarena]