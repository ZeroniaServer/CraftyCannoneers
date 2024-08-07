#Used for utilkill system
scoreboard players operation #current KillerUUID = @s KillerUUID
execute if entity @s[team=Orange] as @a[team=Purple] if score @s playerUUID = #current KillerUUID run scoreboard players add @s kill 1
execute if entity @s[team=Orange,tag=GoldKilled] as @a[team=Purple] if score @s playerUUID = #current KillerUUID run loot give @s loot cannons:coins
execute if entity @s[team=Orange,tag=GoldKilled] as @a[team=Purple] if score @s playerUUID = #current KillerUUID at @s run playsound entity.item.pickup player @s ~ ~ ~ 0.25 2
execute if entity @s[team=Orange] as @a[team=Purple] if score @s playerUUID = #current KillerUUID unless score @s HitmarkerType matches 1 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[team=Orange] as @a[team=Purple] if score @s playerUUID = #current KillerUUID unless score @s HitmarkerType matches 1 run scoreboard players set @s HitmarkerType 2
execute if entity @s[team=Purple] as @a[team=Orange] if score @s playerUUID = #current KillerUUID run scoreboard players add @s kill 1
execute if entity @s[team=Purple,tag=GoldKilled] as @a[team=Orange] if score @s playerUUID = #current KillerUUID run loot give @s loot cannons:coins
execute if entity @s[team=Purple,tag=GoldKilled] as @a[team=Orange] if score @s playerUUID = #current KillerUUID at @s run playsound entity.item.pickup player @s ~ ~ ~ 0.25 2
execute if entity @s[team=Purple] as @a[team=Orange] if score @s playerUUID = #current KillerUUID unless score @s HitmarkerType matches 1 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[team=Purple] as @a[team=Orange] if score @s playerUUID = #current KillerUUID unless score @s HitmarkerType matches 1 run scoreboard players set @s HitmarkerType 2

scoreboard players reset #current KillerUUID
advancement revoke @s only cannons:utilkill
advancement revoke @s only cannons:cbkill
scoreboard players reset @s KillerUUID