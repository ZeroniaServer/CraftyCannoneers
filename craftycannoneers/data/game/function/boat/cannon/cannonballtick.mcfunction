scoreboard players operation $current playerUUID = @s playerUUID
scoreboard players operation $current PowerM = @s PowerM
scoreboard players operation $current drag = @s drag
scoreboard players operation $current gravity = @s gravity
execute if score @s PowerM matches ..1 as @e[type=armor_stand,tag=NewCannonball] at @s run rotate @s ~ ~-3
execute if score @s PowerM matches 2 as @e[type=armor_stand,tag=NewCannonball] at @s run rotate @s ~ ~-10
execute if score @s PowerM matches 3 as @e[type=armor_stand,tag=NewCannonball] at @s run rotate @s ~ ~-20
execute if score @s PowerM matches 4 as @e[type=armor_stand,tag=NewCannonball] at @s run rotate @s ~ ~-30
execute if score @s PowerM matches 5.. as @e[type=armor_stand,tag=NewCannonball] at @s run rotate @s ~ ~-40
execute as @e[type=armor_stand,tag=NewCannonball] run function game:boat/cannon/prepcannonball