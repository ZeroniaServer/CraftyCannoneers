execute as @e[type=armor_stand,tag=ShipRestore] at @s run clone ~ ~-1 ~ ~-22 ~1 ~-62 ~978 ~-1 ~-62
scoreboard players add @e[type=armor_stand,tag=ShipRestore] CmdData 1
execute as @e[type=armor_stand,tag=ShipRestore] at @s run tp @s ~ ~1 ~
kill @e[type=armor_stand,tag=ShipRestore,scores={CmdData=50..}]