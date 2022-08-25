title @s title ["",{"text":"Team Full!","color":"red","bold":true}]
execute unless score $InOrange CmdData >= $MaxTeamSize CmdData run title @s subtitle ["",{"text":"Join ","color":"dark_aqua","bold":false},{"text":"Orange","color":"gold","bold":true},{"text":" instead.","color":"dark_aqua","bold":false}]
execute if score $InOrange CmdData >= $MaxTeamSize CmdData run title @s subtitle ["",{"text":"Feel free to spectate this game instead.","color":"gray","bold":false}]
title @s times 0 30 5
tag @s add tryJoinPurple