execute as @s at @s if score @s z matches 1.. run tp @s ~ ~ ~-1
execute as @s at @s if score @s z matches 1.. run scoreboard players remove @s z 1

execute as @s at @s if score @s y matches 1.. run tp @s ~ ~1 ~
execute as @s at @s if score @s y matches 1.. run scoreboard players remove @s y 1

execute as @s if score @s z matches 1.. run function game:modifiers/seastorms/windposrecursive
execute as @s if score @s y matches 1.. run function game:modifiers/seastorms/windposrecursive