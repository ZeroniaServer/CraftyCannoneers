#Kills arrows in the ground / outside Combat Area
execute at @s[nbt={inGround:1b}] run particle item arrow ~ ~ ~ 0.1 0.1 0.1 0.1 15
execute at @s[nbt={inGround:1b}] run playsound arrowbreak master @a ~ ~ ~ 1 2
kill @s[nbt={inGround:1b}]
kill @s[predicate=game:tutorialbounds,predicate=!tutorial:combatarea]