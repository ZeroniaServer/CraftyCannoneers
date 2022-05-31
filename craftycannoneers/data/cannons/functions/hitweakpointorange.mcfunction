scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute as @a[team=Orange] if score @s playerUUID = $tempuuid playerUUID run advancement grant @s only tutorial:destroy_weakpoint
tag @s remove HitWeakpoint
scoreboard players reset $tempuuid playerUUID