advancement revoke @s only weapons:barrel/lookat
execute if entity @e[type=interaction,tag=BlastBarrel,limit=1,distance=..8] run tag @s add lookAtBarrel
effect give @s[tag=lookAtBarrel] weakness infinite 0 true