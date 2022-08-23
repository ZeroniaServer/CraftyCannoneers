scoreboard players add @s CmdData 1

execute at @s run particle soul ~ ~ ~ 0 0 0 0.03 1 force
execute at @s[scores={CmdData=15..}] unless entity @e[type=armor_stand,tag=GasAS,distance=..3] unless entity @e[type=armor_stand,tag=GasBubble,tag=!New,distance=..2] run function cannons:gas/summonbubble