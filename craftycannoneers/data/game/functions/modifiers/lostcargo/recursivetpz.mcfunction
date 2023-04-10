execute if score @s[tag=Purple] z matches 1.. at @s run tp @s ~ ~ ~1
execute if score @s[tag=Orange] z matches 1.. at @s run tp @s ~ ~ ~-1
scoreboard players remove @s z 1
execute if score @s z matches 1.. at @s run function game:modifiers/lostcargo/recursivetpz