title @s title ["",{"translate":"game.full","color":"red","bold":true}]
execute unless score $InOrange CmdData >= $MaxTeamSize CmdData run title @s subtitle ["",{"translate":"game.try_join","color":"dark_aqua","bold":false,"with":[{"translate":"game.orange","color":"gold","bold":true},{"translate":"game.team","color":"dark_aqua","bold":false}]}]
execute if score $InOrange CmdData >= $MaxTeamSize CmdData run title @s subtitle ["",{"translate":"game.watch_game","color":"gray","bold":false}]
title @s times 0 30 5
tag @s add tryJoinPurple