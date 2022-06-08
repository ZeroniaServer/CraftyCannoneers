scoreboard players operation $tempuuid playerUUID = @s playerUUID
tag @s add clicker
execute if entity @s[advancements={cannons:click={villager=true}}] run function cannons:entityid/find_entity
advancement revoke @s only cannons:click
tag @s remove clicker