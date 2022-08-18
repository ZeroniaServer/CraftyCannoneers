execute store result score $tempuuid playerUUID run data get entity @s Owner[0]
execute as @a[team=Lobby,predicate=tutorial:combatarea] if score @s playerUUID = $tempuuid playerUUID run tag @s add owner
loot give @a[tag=owner] loot weapons:harpoon
scoreboard players reset $tempuuid playerUUID
tag @a remove owner
kill @s