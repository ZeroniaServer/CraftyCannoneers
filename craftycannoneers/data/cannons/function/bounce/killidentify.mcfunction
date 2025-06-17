execute if score @s bounceID = $temp bounceID run tag @s add pair
execute at @s[tag=pair] run scoreboard players set @s CmdData 4
tag @s[tag=pair] remove pair