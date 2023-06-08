execute store result score @s eyeclick run data get entity @s Rotation[0]
scoreboard players set @s[scores={eyeclick=180}] eyeclick -180
scoreboard players operation @s eyeclick /= 2 const
function game:boat/rotate/tree/root