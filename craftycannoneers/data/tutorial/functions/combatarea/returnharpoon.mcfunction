execute store result score $tempuuid playerUUID run data get entity @s Owner[0]
execute as @a[team=Lobby,tag=InCombat] if score @s playerUUID = $tempuuid playerUUID run tag @s add owner
execute as @a[tag=owner,limit=1] run clear @s trident
execute as @a[tag=owner,limit=1] run loot give @s loot weapons:harpoon
tag @a[tag=owner,limit=1] remove owner
scoreboard players reset $tempuuid playerUUID
kill @s