execute store result score $tempuuid playerUUID run data get entity @s Owner[0]
execute as @a[team=Lobby,tag=InCombat] if score @s playerUUID = $tempuuid playerUUID run loot give @s loot weapons:harpoon
scoreboard players reset $tempuuid playerUUID
kill @s