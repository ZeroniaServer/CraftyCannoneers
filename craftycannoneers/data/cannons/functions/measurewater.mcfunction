data modify storage craftycannoneers:water ocean_floor set string entity @s Pos[1] 1 -1
execute at @s positioned over world_surface run tp @s ~ ~ ~
execute at @s run function cannons:measurewater2 with storage craftycannoneers:water
data modify storage craftycannoneers:water depth set from entity @s Pos[1]
data remove storage craftycannoneers:water ocean_floor
kill