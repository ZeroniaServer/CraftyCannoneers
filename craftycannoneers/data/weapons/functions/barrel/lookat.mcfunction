advancement revoke @s only weapons:barrel/lookat
execute if entity @e[type=interaction,tag=BlastBarrel,limit=1,distance=..8] run tag @s add lookAtBarrel
effect give @s[tag=lookAtBarrel] weakness infinite 0 true
attribute @s[tag=lookAtBarrel] generic.attack_damage modifier add 9c55d773-f866-4def-9740-6253d5ebb737 "nodamage" -100 add_value