scoreboard players operation $temp rockID = @s rockID
execute as @e[type=snowball] if score @s rockID = $temp rockID run tag @s add pair
execute if entity @e[type=snowball,tag=pair] run tp @s @e[type=snowball,tag=pair,limit=1,sort=nearest]
execute if entity @e[type=snowball,tag=pair] run data modify entity @s data.Motion set from entity @e[type=snowball,tag=pair,limit=1,sort=nearest] Motion
execute if entity @e[type=snowball,tag=pair] run data modify entity @s data.Rotation set from entity @e[type=snowball,tag=pair,limit=1,sort=nearest] Rotation
execute run scoreboard players operation $temp rockOwner = @s rockOwner
execute as @a if score @s playerUUID = $temp rockOwner run tag @s add thrower
execute unless entity @e[type=snowball,tag=pair] run function everytick:rockkb
tag @a remove thrower
scoreboard players reset $temp rockOwner
scoreboard players reset $temp rockID
execute unless entity @e[type=snowball,tag=pair] run kill @s
tag @e[type=snowball,tag=pair] remove pair