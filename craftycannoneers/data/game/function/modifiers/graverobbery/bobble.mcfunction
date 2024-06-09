scoreboard players add @s eyeclick 1
execute if score @s eyeclick matches 1..7 run tp @s ~ ~0.01 ~
execute if score @s eyeclick matches 8..14 run tp @s ~ ~-0.01 ~
execute if score @s eyeclick matches 14.. run scoreboard players set @s eyeclick 0