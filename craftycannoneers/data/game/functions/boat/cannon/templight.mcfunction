execute if entity @s[tag=!placed] run fill ~-1 ~ ~-1 ~1 ~ ~1 light[level=15] replace air
tag @s add placed
execute positioned ~ ~-1 ~ unless entity @e[type=boat,tag=OnFire,limit=1,distance=..2] at @s run function game:boat/cannon/removelight