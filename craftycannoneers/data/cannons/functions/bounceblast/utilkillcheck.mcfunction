#Used for utilkill system
scoreboard players operation #current KillerUUID = @s KillerUUID
execute if entity @s[team=Orange] as @a[team=Purple] if score @s playerUUID = #current KillerUUID run scoreboard players add @s kill 1
execute if entity @s[team=Purple] as @a[team=Orange] if score @s playerUUID = #current KillerUUID run scoreboard players add @s kill 1
scoreboard players reset #current KillerUUID
advancement revoke @s only cannons:utilkillbounce
scoreboard players reset @s KillerUUID