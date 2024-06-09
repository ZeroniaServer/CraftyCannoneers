#Used for utilkill system
scoreboard players operation #current KillerUUID = @s KillerUUID
execute if entity @s[team=Orange] as @a[team=Purple] if score @s playerUUID = #current KillerUUID run scoreboard players add @s kill 1
execute if entity @s[team=Orange] as @a[team=Purple] if score @s playerUUID = #current KillerUUID unless score @s HitmarkerType matches 1 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[team=Orange] as @a[team=Purple] if score @s playerUUID = #current KillerUUID unless score @s HitmarkerType matches 1 run scoreboard players set @s HitmarkerType 2
execute if entity @s[team=Purple] as @a[team=Orange] if score @s playerUUID = #current KillerUUID run scoreboard players add @s kill 1
execute if entity @s[team=Purple] as @a[team=Orange] if score @s playerUUID = #current KillerUUID unless score @s HitmarkerType matches 1 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[team=Purple] as @a[team=Orange] if score @s playerUUID = #current KillerUUID unless score @s HitmarkerType matches 1 run scoreboard players set @s HitmarkerType 2
scoreboard players reset #current KillerUUID
advancement revoke @s only weapons:bomb/utilkill
scoreboard players reset @s KillerUUID