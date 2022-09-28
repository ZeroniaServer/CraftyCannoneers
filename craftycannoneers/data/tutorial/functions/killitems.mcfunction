execute store result score @s playerUUID run data get entity @s Thrower[0]
execute if score @s playerUUID = $tempuuid playerUUID run kill @s