scoreboard players add @s CmdData 1
execute at @s[scores={CmdData=70}] run function tutorial:trainingdummies/spawn
kill @s[scores={CmdData=70..}]