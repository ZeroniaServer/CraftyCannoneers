execute as @e[type=marker,tag=ShipRestore] at @s run clone ~ ~-1 ~ ~-22 ~1 ~-62 ~978 ~-1 ~-62
scoreboard players add @e[type=marker,tag=ShipRestore] CmdData 1
execute as @e[type=marker,tag=ShipRestore] at @s run tp @s ~ ~1 ~
kill @e[type=marker,tag=ShipRestore,scores={CmdData=50..}]