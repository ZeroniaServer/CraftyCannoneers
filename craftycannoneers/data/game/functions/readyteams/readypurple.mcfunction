playsound readyup master @s ~ ~ ~ 1 0
title @a[tag=!inParkour,team=!Spectator] actionbar ["",{"translate":"game.marked_ready","color":"aqua","with":[{"selector":"@s","bold":true},{"translate":"game.marked_ready.purple","color":"dark_purple","bold":true},{"translate":"game.marked_ready.ready","color":"green","bold":true,"underlined":true}]}]
tag @a[team=Purple,tag=ClickedReady] remove ClickedReady
tag @s add ClickedReady
scoreboard players add $PurpleReady CmdData 1
execute if score $PurpleReady CmdData matches 2.. run scoreboard players set $PurpleReady CmdData 0
function game:setreadysign
trigger readyup set 0