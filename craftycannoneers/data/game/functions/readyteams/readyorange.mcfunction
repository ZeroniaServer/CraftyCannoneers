playsound readyup master @s ~ ~ ~ 1 0
title @a[tag=!inParkour,team=!Spectator] actionbar ["",{"translate":"game.marked_ready","color":"aqua","with":[{"selector":"@s","bold":true},{"translate":"game.orange","color":"gold","bold":true},{"translate":"game.team","color":"aqua"},{"translate":"game.marked_ready.ready","color":"green","bold":true,"underlined":true}]}]
tag @a[team=Orange,tag=ClickedReady] remove ClickedReady
tag @s add ClickedReady
scoreboard players add $OrangeReady CmdData 1
execute if score $OrangeReady CmdData matches 2.. run scoreboard players set $OrangeReady CmdData 0
execute if score $OrangeReady CmdData matches 1 run data merge block -44 -28 0 {Text3:'{"extra":[{"color":"gold","translate":"game.orange"},{"color":"gold","text":": "},{"color":"#55FF55","text":"✔","bold":true}],"text":""}'}
execute if score $OrangeReady CmdData matches 0 run data merge block -44 -28 0 {Text3:'{"extra":[{"color":"gold","translate":"game.orange"},{"color":"gold","text":": "},{"color":"red","text":"❌","bold":true}],"text":""}'}
trigger readyup set 0