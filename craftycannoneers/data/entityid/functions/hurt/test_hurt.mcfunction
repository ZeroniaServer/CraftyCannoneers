tag @s add victim
execute if entity @s[advancements={entityid:hurt={source=true}}] run function entityid:hurt/find_entity
advancement revoke @s only entityid:hurt
tag @s remove victim