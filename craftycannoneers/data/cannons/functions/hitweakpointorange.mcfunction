scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute as @a[team=Orange] if score @s playerUUID = $tempuuid playerUUID run advancement grant @s only tutorial:destroy_weakpoint
execute as @a[team=Orange] if score @s playerUUID = $tempuuid playerUUID run tellraw @a[team=Orange] ["",{"selector":"@s"},{"text":" destroyed an exposed weakpoint!","color":"dark_aqua"}]
tag @s remove HitWeakpointOrange
scoreboard players reset $tempuuid playerUUID