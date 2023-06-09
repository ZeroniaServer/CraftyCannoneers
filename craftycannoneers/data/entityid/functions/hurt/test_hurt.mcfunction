tag @s add victim
execute if entity @s[advancements={entityid:hurt={arrow=true}}] run function entityid:hurt/find_entity
advancement revoke @s only entityid:hurt
tag @s remove victim