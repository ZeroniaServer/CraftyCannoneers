scoreboard players add @s CmdData 1
execute as @s[scores={CmdData=1}] at @s run function game:boat/startsink
execute at @s[scores={CmdData=20..}] run function game:boat/replace