execute as @s[scores={PowerL=1..}] at @s run tp @s ~ ~ ~ ~2 ~
scoreboard players remove @s[scores={PowerL=1..}] PowerL 1

execute as @s[scores={PowerR=1..}] at @s run tp @s ~ ~ ~ ~-2 ~
scoreboard players remove @s[scores={PowerR=1..}] PowerR 1

execute as @s[scores={PowerV=1..}] at @s run tp @s ~ ~ ~ ~ ~-0.2
scoreboard players remove @s[scores={PowerV=1..}] PowerV 1

execute as @s if entity @s[scores={PowerL=1..}] run function cannons:cannonballrotation
execute as @s if entity @s[scores={PowerR=1..}] run function cannons:cannonballrotation
execute as @s if entity @s[scores={PowerV=1..}] run function cannons:cannonballrotation