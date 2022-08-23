scoreboard players add @s CmdData 1
data merge entity @s[scores={CmdData=8}] {Small:0b}
execute at @s[scores={CmdData=1}] run playsound gas master @a ~ ~ ~ 1 1.3
execute at @s[scores={CmdData=6}] run playsound gasshot master @a ~ ~ ~ 1 1.3
execute at @s[scores={CmdData=12}] run playsound gas master @a ~ ~ ~ 0.4 1.5
scoreboard players set @s[scores={CmdData=13..}] CmdData 11

execute at @s run particle dust 0 1 0.2 2 ~ ~1 ~ 1.2 0.5 1.3 0.2 9 force
execute at @s run particle dust 0 1 0.6 2 ~ ~1 ~ 1 1 1 0.2 5 force
execute at @s run particle soul ~ ~ ~ 1.5 1.2 1.5 0.05 6 force
execute at @s run tp @s ~ ~0.002 ~

execute at @s unless entity @e[type=marker,tag=GasCloud,distance=..1] run kill @s