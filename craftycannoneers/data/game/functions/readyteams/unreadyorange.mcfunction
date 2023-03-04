playsound unready master @s ~ ~ ~ 1 0.6
tag @a[team=Orange] remove ClickedReady
title @a[tag=!inParkour,team=!Spectator] actionbar ["",{"translate":"game.marked_ready","color":"aqua","with":[{"selector":"@s","bold":true},{"translate":"game.orange","color":"gold","bold":true},{"translate":"game.team","color":"aqua"},{"translate":"game.marked_ready.not","color":"red","bold":true,"underlined":true}]}]
scoreboard players set $OrangeReady CmdData 0
function game:setreadysign
trigger readyup set 0