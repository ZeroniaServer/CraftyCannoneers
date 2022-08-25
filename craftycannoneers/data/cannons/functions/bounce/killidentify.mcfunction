execute if score @s bounceID = $temp bounceID run tag @s add pair
execute at @s[tag=pair] run function weapons:bomb/killslime
tag @s[tag=pair] remove pair