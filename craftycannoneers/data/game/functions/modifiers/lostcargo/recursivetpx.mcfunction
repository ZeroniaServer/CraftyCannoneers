execute if score @s[tag=Purple] x matches 1.. at @s run tp @s ~1 ~ ~
execute if score @s[tag=Orange] x matches 1.. at @s run tp @s ~-1 ~ ~
scoreboard players remove @s x 1
execute if score @s x matches 1.. at @s run function game:modifiers/lostcargo/recursivetpx