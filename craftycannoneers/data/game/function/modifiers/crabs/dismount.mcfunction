execute store result score $crabid CmdData run data get entity @s UUID[0]
execute on passengers run scoreboard players operation @s click = $crabid CmdData
execute on passengers run ride @s dismount
tag @s add dismounted