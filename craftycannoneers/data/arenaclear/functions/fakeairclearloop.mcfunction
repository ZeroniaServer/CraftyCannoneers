execute at @s run fill ~200 ~ ~ ~ ~ ~100 air replace #game:fakeair
execute at @s run tp @s ~ ~1 ~

scoreboard players add @s CmdData 1

execute unless score @s CmdData matches 50.. at @s run function arenaclear:fakeairclearloop
kill @s[scores={CmdData=50..}]