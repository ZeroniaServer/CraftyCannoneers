scoreboard players operation $temp rockID = @s rockID
execute as @e[type=snowball] if score @s rockID = $temp rockID run tag @s add pair
execute if entity @e[type=snowball,tag=pair] run tp @s @e[type=snowball,tag=pair,limit=1,sort=nearest]
execute if entity @e[type=snowball,tag=pair] run data modify entity @s data.Motion set from entity @e[type=snowball,tag=pair,limit=1,sort=nearest] Motion
execute if entity @e[type=snowball,tag=pair] run data modify entity @s data.Rotation set from entity @e[type=snowball,tag=pair,limit=1,sort=nearest] Rotation
scoreboard players operation $temp rockOwner = @s rockOwner
execute as @a if score @s playerUUID = $temp rockOwner run tag @s add thrower
execute unless entity @e[type=snowball,tag=pair] if entity @p[team=!Spectator,team=!Lobby,tag=!thrower,distance=..3] run function everytick:rockkb
tag @a remove thrower
scoreboard players reset $temp rockOwner
scoreboard players reset $temp rockID
execute unless entity @e[type=snowball,tag=pair] run playsound minecraft:block.basalt.hit master @a ~ ~ ~ 0.5 1
execute unless entity @e[type=snowball,tag=pair] run particle minecraft:item snowball ~ ~ ~ 0 0 0 0.05 5
execute unless entity @e[type=snowball,tag=pair] run kill @s
tag @e[type=snowball,tag=pair] remove pair