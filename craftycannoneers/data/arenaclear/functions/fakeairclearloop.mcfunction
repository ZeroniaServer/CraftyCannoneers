execute at @s run fill ~200 ~ ~ ~ ~ ~100 air replace cave_air
execute at @s run fill ~200 ~ ~ ~ ~ ~100 air replace light
execute at @s run fill ~200 ~ ~ ~ ~ ~100 air replace fire
execute at @s run tp @s ~ ~1 ~

scoreboard players add @s CmdData 1

execute unless entity @s[scores={CmdData=50..}] at @s run function arenaclear:fakeairclearloop
kill @s[scores={CmdData=50..}]