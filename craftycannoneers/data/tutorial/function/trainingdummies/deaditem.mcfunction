scoreboard players add @s CmdData 1
execute at @s[tag=wheat,scores={CmdData=36}] run particle item{item:"wheat"} ~ ~0.3 ~ 0 0 0 0.1 12
execute at @s[tag=pumpkin,scores={CmdData=36}] run particle block{block_state:"carved_pumpkin"} ~ ~0.3 ~ 0 0 0 0.1 12
execute at @s[tag=hat,scores={CmdData=36}] run particle block{block_state:"black_wool"} ~ ~0.3 ~ 0 0 0 0.1 12
kill @s[scores={CmdData=40..}]