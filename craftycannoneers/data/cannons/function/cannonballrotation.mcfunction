execute at @s[scores={PowerL=1..}] run tp @s ~ ~ ~ ~1 ~
scoreboard players remove @s[scores={PowerL=1..}] PowerL 1

execute at @s[scores={PowerR=1..}] run tp @s ~ ~ ~ ~-1 ~
scoreboard players remove @s[scores={PowerR=1..}] PowerR 1

execute at @s[scores={AccurL=1..}] run tp @s ~ ~ ~ ~0.2 ~
scoreboard players remove @s[scores={AccurL=1..}] AccurL 1

execute at @s[scores={AccurR=1..}] run tp @s ~ ~ ~ ~-0.2 ~
scoreboard players remove @s[scores={AccurR=1..}] AccurR 1

execute at @s[scores={PowerV=1..}] run tp @s ~ ~ ~ ~ ~-1.2
scoreboard players remove @s[scores={PowerV=1..}] PowerV 1

execute if entity @s[scores={AccurL=1..}] run function cannons:cannonballrotation
execute if entity @s[scores={AccurR=1..}] run function cannons:cannonballrotation
execute if entity @s[scores={PowerL=1..}] run function cannons:cannonballrotation
execute if entity @s[scores={PowerR=1..}] run function cannons:cannonballrotation
execute if entity @s[scores={PowerV=1..}] run function cannons:cannonballrotation