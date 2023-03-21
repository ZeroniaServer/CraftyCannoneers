tag @s add self
execute positioned ~ ~1.6 ~ summon area_effect_cloud run function version:1_1_0/creditsname
tag @s remove self
data modify entity @s CustomNameVisible set value 0b
tag @s add NameUpdated