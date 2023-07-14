scoreboard players operation $currentdesp playerUUID = @s playerUUID
execute as @e[type=armor_stand,tag=PlayerCannonball] at @s if score @s playerUUID = $currentdesp playerUUID run function cannons:playercbkill
scoreboard players reset $currentdesp playerUUID