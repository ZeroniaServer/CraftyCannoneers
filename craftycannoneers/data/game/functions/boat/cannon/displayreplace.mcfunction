execute store result score @s eyeclick run data get entity @s Rotation[0]
execute if score @s eyeclick matches 180 run scoreboard players set @s eyeclick -180
function game:boat/rotate/tree/root