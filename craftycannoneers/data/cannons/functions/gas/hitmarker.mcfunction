execute if predicate cannons:ships/purple run scoreboard players operation $hitmarkuuid playerUUID = @s playerUUID
execute unless entity @s[tag=BlastBarrel] if predicate cannons:ships/purple as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID run scoreboard players add @s MVPdamage 15
execute if predicate cannons:ships/purple as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID run function game:mvpstats/ingame_check
execute if predicate cannons:ships/purple as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2.. run scoreboard players reset @s HitmarkerTimer
execute if predicate cannons:ships/purple as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2.. run scoreboard players set @s HitmarkerType 1
execute if predicate cannons:ships/purple run scoreboard players reset $hitmarkuuid playerUUID
execute if predicate cannons:ships/orange run scoreboard players operation $hitmarkuuid playerUUID = @s playerUUID
execute unless entity @s[tag=BlastBarrel] if predicate cannons:ships/orange as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID run scoreboard players add @s MVPdamage 15
execute if predicate cannons:ships/orange as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID run function game:mvpstats/ingame_check
execute if predicate cannons:ships/orange as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2.. run scoreboard players reset @s HitmarkerTimer
execute if predicate cannons:ships/orange as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2.. run scoreboard players set @s HitmarkerType 1
execute if predicate cannons:ships/orange run scoreboard players reset $hitmarkuuid playerUUID
execute if predicate cannons:ships/tutorial run scoreboard players operation $hitmarkuuid playerUUID = @s playerUUID
execute if predicate cannons:ships/tutorial as @a[team=Lobby] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2.. run scoreboard players reset @s HitmarkerTimer
execute if predicate cannons:ships/tutorial as @a[team=Lobby] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2.. run scoreboard players set @s HitmarkerType 1
execute if predicate cannons:ships/tutorial run scoreboard players reset $hitmarkuuid playerUUID