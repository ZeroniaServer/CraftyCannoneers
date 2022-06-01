scoreboard players operation $currentdesp playerUUID = @s playerUUID

execute as @e[type=armor_stand,tag=PlayerCannonball] at @s if score @s playerUUID = $currentdesp playerUUID run kill @e[type=armor_stand,tag=PCannonballdeco,limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=PlayerCannonball] at @s if score @s playerUUID = $currentdesp playerUUID run kill @s
scoreboard players reset $currentdesp playerUUID