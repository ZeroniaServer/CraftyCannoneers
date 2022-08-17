#Kills arrows in the ground
execute as @e[type=arrow,nbt={inGround:1b},predicate=!tutorial:combatarea,predicate=!tutorial:combatarea2] at @s run particle item arrow ~ ~ ~ 0.1 0.1 0.1 0.1 15
execute as @e[type=arrow,nbt={inGround:1b},predicate=!tutorial:combatarea,predicate=!tutorial:combatarea2] at @s run playsound arrowbreak master @a ~ ~ ~ 1 2
kill @e[type=arrow,nbt={inGround:1b},predicate=!tutorial:combatarea,predicate=!tutorial:combatarea2]
kill @e[type=arrow,predicate=game:tutorialbounds,predicate=!tutorial:combatarea,predicate=!tutorial:combatarea2]