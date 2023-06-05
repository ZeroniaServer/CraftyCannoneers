execute store result score $temp crabs run data get entity @s Item.Count
scoreboard players operation $curr crabs += $temp crabs
scoreboard players reset $temp crabs
execute if entity @s[tag=!ctrap] on origin run function game:invcount
tag @s[tag=!ctrap] add ctrap