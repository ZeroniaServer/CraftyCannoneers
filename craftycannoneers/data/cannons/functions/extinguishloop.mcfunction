execute as @s at @s run fill ~200 ~ ~ ~ ~ ~100 air replace fire
execute as @s at @s run tp @s ~ ~1 ~
execute as @s at @s run particle flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s CmdData 1

execute as @s unless entity @s[scores={CmdData=50..}] at @s run function cannons:extinguishloop
kill @s[scores={CmdData=50..}]