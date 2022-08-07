execute if entity @s[tag=!Hit1,predicate=cannons:ships/tutorial] run scoreboard players operation $hitmarkuuid playerUUID = @s playerUUID
execute if entity @s[tag=!Hit1,predicate=cannons:ships/tutorial] as @a[team=Lobby] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=!Hit1,predicate=cannons:ships/tutorial] as @a[team=Lobby] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. run scoreboard players set @s HitmarkerType 0
execute if entity @s[predicate=cannons:ships/tutorial] run scoreboard players reset $hitmarkuuid

scoreboard players reset @s CalcAir1
scoreboard players reset @s CalcAir2

kill @s