tag @s add 135
execute positioned -241.5 -26.675 -39.5 rotated 135 0 run function tutorial:trainingdummies/spawn
tag @s remove 135

tag @s add 90
execute positioned -239.5 -26.675 -45.5 rotated 90 0 run function tutorial:trainingdummies/spawn
tag @s remove 90

tag @s add 45
execute positioned -241.5 -26.675 -49.5 rotated 45 0 run function tutorial:trainingdummies/spawn
execute positioned -247.5 -25.675 -58.5 rotated 45 0 run function tutorial:trainingdummies/spawn
tag @s remove 45

execute positioned -250.5 -25.675 -59.5 rotated 0 0 run function tutorial:trainingdummies/spawn

kill @s[type=marker]