scoreboard players operation $temp rockID = @s rockID
execute as @e[type=snowball] if score @s rockID = $temp rockID run tag @s add pair
scoreboard players reset $temp rockID
execute as @e[type=snowball,tag=pair] store result entity @s Air double 1 run scoreboard players get $toggle CmdData
execute if entity @e[type=snowball,tag=pair] run tp @s @e[type=snowball,tag=pair,limit=1,sort=nearest]
execute unless entity @e[type=snowball,tag=pair] run playsound rockhit master @a ~ ~ ~ 0.5 1
execute unless entity @e[type=snowball,tag=pair] run particle item snowball ~ ~ ~ 0 0 0 0.05 5
execute unless entity @e[type=snowball,tag=pair] run kill @s
tag @e[type=snowball,tag=pair] remove pair