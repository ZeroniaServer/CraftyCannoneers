tag @s remove Respawn

execute store result storage craftycannoneers:barrel x int 1 run random value 0..3
execute store result storage craftycannoneers:barrel z int 1 run random value 0..7
function game:modifiers/lostcargo/setlocation with storage craftycannoneers:barrel

execute at @s if entity @e[type=marker,tag=BarrelSpawn,tag=Picked,distance=..1] run tag @s add Nope
kill @s[tag=Nope]
tag @s[tag=!Nope] add Picked