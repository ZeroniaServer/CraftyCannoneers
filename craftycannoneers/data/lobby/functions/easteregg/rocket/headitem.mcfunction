scoreboard players add @e[type=item,tag=RRHeadItem] CmdData 1
execute as @e[type=item,tag=RRHeadItem,scores={CmdData=80..}] at @s run particle block soul_sand ~ ~0.2 ~ 0 0 0 0.1 6
kill @e[type=item,tag=RRHeadItem,scores={CmdData=80..}]