scoreboard players add @s CmdData 1
execute as @s[scores={CmdData=1}] run setblock ~ ~ ~ light[level=15]
execute as @s[scores={CmdData=2}] run setblock ~ ~ ~ light[level=14]
execute as @s[scores={CmdData=3}] run setblock ~ ~ ~ light[level=12]
execute as @s[scores={CmdData=4}] run setblock ~ ~ ~ light[level=10]
execute as @s[scores={CmdData=5}] run setblock ~ ~ ~ light[level=8]
execute as @s[scores={CmdData=6}] run setblock ~ ~ ~ light[level=6]
execute as @s[scores={CmdData=7}] run setblock ~ ~ ~ light[level=3]
execute as @s[scores={CmdData=8}] run setblock ~ ~ ~ light[level=1]
execute as @s[scores={CmdData=9}] run fill ~ ~ ~ ~ ~ ~ air replace light
kill @s[scores={CmdData=9..}]