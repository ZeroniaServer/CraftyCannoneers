title @s title ["",{"text":"Team Full!","color":"red","bold":true}]
execute unless score $InPurple CmdData >= $MaxTeamSize CmdData run title @s subtitle ["",{"text":"Join ","color":"dark_aqua","bold":false},{"text":"Purple","color":"dark_purple","bold":true},{"text":" instead.","color":"dark_aqua","bold":false}]
execute if score $InPurple CmdData >= $MaxTeamSize CmdData run title @s subtitle ["",{"text":"Feel free to spectate this game instead.","color":"gray","bold":false}]
title @s times 0 30 5
tag @s add tryJoinOrange