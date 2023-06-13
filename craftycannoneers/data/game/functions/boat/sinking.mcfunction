scoreboard players add @s CmdData 1
execute at @s[scores={CmdData=1}] run function game:boat/startsink
execute at @s[scores={CmdData=20..}] run function game:boat/boatbreak
execute at @s[scores={CmdData=20..}] run function game:boat/replace