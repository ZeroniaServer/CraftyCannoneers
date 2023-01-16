playsound readyup master @s ~ ~ ~ 1 0
title @a[tag=!inParkour,team=!Spectator] actionbar ["",{"selector":"@s","bold":true},{"translate":"game.marked_ready.1","color":"aqua"},{"translate":"game.purple","color":"dark_purple","bold":true},{"translate":"game.marked_ready.2","color":"aqua"},{"translate":"game.marked_ready.ready","color":"green","bold":true,"underlined":true}]
tag @a[team=Purple,tag=ClickedReady] remove ClickedReady
tag @s add ClickedReady
scoreboard players add $PurpleReady CmdData 1
execute if score $PurpleReady CmdData matches 2.. run scoreboard players set $PurpleReady CmdData 0
execute if score $PurpleReady CmdData matches 1 run data merge block -44 -28 0 {Text4:'{"extra":[{"color":"dark_purple","translate":"game.purple"},{"color":"dark_purple","text":": "},{"color":"#55FF55","text":"✔","bold":true}],"text":""}'}
execute if score $PurpleReady CmdData matches 0 run data merge block -44 -28 0 {Text4:'{"extra":[{"color":"dark_purple","translate":"game.purple"},{"color":"dark_purple","text":": "},{"color":"red","text":"❌","bold":true}],"text":""}'}
trigger readyup set 0