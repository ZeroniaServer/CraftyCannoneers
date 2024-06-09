data modify storage craftycannoneers:villagers angle1 set from entity @s Rotation[0]
data modify storage craftycannoneers:villagers angle2 set from entity @s Rotation[1]
execute if entity @s[tag=Purple] run function arenaclear:traderpurple with storage craftycannoneers:villagers
execute if entity @s[tag=Orange] run function arenaclear:traderorange with storage craftycannoneers:villagers
function arenaclear:kill