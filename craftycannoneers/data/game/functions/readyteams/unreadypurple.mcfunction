playsound unready master @s ~ ~ ~ 1 0.6
tag @a[team=Purple] remove ClickedReady
title @a[tag=!inParkour,team=!Spectator] actionbar ["",{"translate":"game.marked_ready","color":"aqua","with":[{"selector":"@s","bold":true},{"translate":"game.purple","color":"dark_purple","bold":true},{"translate":"game.team","color":"aqua"},{"translate":"game.marked_ready.not","color":"red","bold":true,"underlined":true}]}]
scoreboard players set $PurpleReady CmdData 0
execute if score $PurpleReady CmdData matches 1 run data merge block -44 -28 0 {Text4:'{"extra":[{"color":"dark_purple","translate":"game.purple"},{"color":"dark_purple","text":": "},{"color":"#55FF55","text":"✔","bold":true}],"text":""}'}
execute if score $PurpleReady CmdData matches 0 run data merge block -44 -28 0 {Text4:'{"extra":[{"color":"dark_purple","translate":"game.purple"},{"color":"dark_purple","text":": "},{"color":"red","text":"❌","bold":true}],"text":""}'}
trigger readyup set 0