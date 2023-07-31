data modify entity @s Pos set from storage craftycannoneers:cannonball Motion
execute positioned 0. 0 0. facing entity @s feet run tp @s 0 -10000 0 ~ ~
execute rotated as @s positioned ^ ^ ^0.5 as @e[type=armor_stand,tag=phaser,limit=1] rotated as @s run tp @s ~ ~ ~ ~ ~
kill