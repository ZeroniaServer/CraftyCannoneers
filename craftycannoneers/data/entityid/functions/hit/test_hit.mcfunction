scoreboard players operation $tempuuid playerUUID = @s playerUUID
tag @s add hitter
execute if entity @s[advancements={entityid:hit={target=true}}] run function entityid:hit/find_entity
advancement revoke @s only entityid:hit
scoreboard players reset $tempuuid playerUUID
tag @s remove hitter