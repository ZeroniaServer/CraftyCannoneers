clone ~ ~-1 ~ ~-22 ~1 ~-62 ~986 ~-1 ~-62
scoreboard players add @s CmdData 1
tp @s ~ ~1 ~
execute if entity @s[scores={CmdData=50..}] run scoreboard players set $shipstatus CmdData 1
execute if entity @s[scores={CmdData=50..}] run schedule function tutorial:cannondock/restoreweakpoints 2s replace
kill @s[scores={CmdData=50..}]