scoreboard players add @s CmdData 1
execute at @s[scores={CmdData=80..}] run particle block{block_state:"soul_sand"} ~ ~0.2 ~ 0 0 0 0.1 6
kill @s[scores={CmdData=80..}]