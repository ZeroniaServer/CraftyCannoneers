data modify storage craftycannoneers:cannonball Motion set from entity @s Motion
tag @s add phaser
execute at @s summon marker run function cannons:phasetp
data modify entity @s Motion set from storage craftycannoneers:cannonball Motion
tag @s remove phaser