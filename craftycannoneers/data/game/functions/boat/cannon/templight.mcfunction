execute if entity @s[tag=!placed] run fill ~-1 ~ ~-1 ~1 ~1 ~1 light[level=14] replace air
tag @s add placed

execute positioned ~ ~-1 ~ unless entity @e[type=boat,tag=OnFire,limit=1,distance=..2] at @s[tag=!flash] run function game:boat/cannon/removelight

scoreboard players add @s[tag=flash] CmdData 1
execute at @s[tag=flash,scores={CmdData=6..}] run function game:boat/cannon/removelight