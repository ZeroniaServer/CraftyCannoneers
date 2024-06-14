scoreboard players add @s CmdData 1
execute if score @s CmdData matches 1 run setblock ~ ~ ~ light[level=15]
execute if score @s CmdData matches 2 run setblock ~ ~ ~ light[level=14]
execute if score @s CmdData matches 3 run setblock ~ ~ ~ light[level=12]
execute if score @s CmdData matches 4 run setblock ~ ~ ~ light[level=10]
execute if score @s CmdData matches 5 run setblock ~ ~ ~ light[level=8]
execute if score @s CmdData matches 6 run setblock ~ ~ ~ light[level=6]
execute if score @s CmdData matches 7 run setblock ~ ~ ~ light[level=3]
execute if score @s CmdData matches 8 run setblock ~ ~ ~ light[level=1]
execute if score @s CmdData matches 9 run fill ~ ~ ~ ~ ~ ~ air replace light
kill @s[scores={CmdData=9..}]