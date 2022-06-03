scoreboard players add $highest rockID 1
summon marker ~ ~ ~ {Tags:["rocktracker"]}
scoreboard players operation @e[type=marker,tag=rocktracker,tag=!init,limit=1,sort=nearest] rockID = $highest rockID
scoreboard players operation @s rockID = $highest rockID
execute store result score @s rockOwner run data get entity @s Owner[0]
scoreboard players operation $temp rockOwner = @s rockOwner
execute as @a if score @s playerUUID = $temp rockOwner run data modify entity @e[type=marker,tag=rocktracker,tag=!init,limit=1,sort=nearest] data.OwnerRotation set from entity @s Rotation
scoreboard players reset $temp rockOwner
scoreboard players operation @e[type=marker,tag=rocktracker,tag=!init,limit=1,sort=nearest] rockOwner = @s rockOwner
tag @e[type=marker,tag=rocktracker,tag=!init,limit=1,sort=nearest] add init
tag @s add init