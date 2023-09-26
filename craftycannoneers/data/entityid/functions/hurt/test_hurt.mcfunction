tag @s add victim
execute if entity @s[advancements={entityid:hurt={arrow=true}}] run function entityid:hurt/find_entity
execute if entity @s[advancements={entityid:hurt={rock=true}}] run function lobby:rock/giverock
advancement revoke @s only entityid:hurt
tag @s remove victim