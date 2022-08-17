scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute as @a[team=Lobby] if score @s playerUUID = $tempuuid playerUUID run scoreboard players reset @s HitmarkerTimer
execute as @a[team=Lobby] if score @s playerUUID = $tempuuid playerUUID run scoreboard players set @s HitmarkerType 1
tag @s remove HitWeakpointFake
scoreboard players reset $tempuuid playerUUID