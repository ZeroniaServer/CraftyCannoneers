scoreboard players add @s death 1
execute at @s[scores={death=15..}] if score @s playerUUID matches -2147483648.. run scoreboard players operation @e[type=marker,tag=GasCloud,distance=..4] playerUUID = @s playerUUID
execute at @s[scores={death=15..}] run tag @e[type=marker,tag=GasCloud,distance=..4] add GasExplode