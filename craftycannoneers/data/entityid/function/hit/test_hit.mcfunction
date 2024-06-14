scoreboard players operation $tempuuid playerUUID = @s playerUUID
tag @s add hitter
execute store success score $arrow CmdData if entity @s[advancements={entityid:hit={arrow=true}}]
execute if entity @s[advancements={entityid:hit={target=true}}] run function entityid:hit/find_entity
advancement revoke @s only entityid:hit
scoreboard players reset $tempuuid playerUUID
tag @s remove hitter