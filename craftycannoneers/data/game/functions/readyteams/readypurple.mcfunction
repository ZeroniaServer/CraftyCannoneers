playsound readyup master @s ~ ~ ~ 1 0
title @a[tag=!inParkour,team=!Spectator] actionbar ["",{"selector":"@s","bold":true},{"text":" marked ","color":"aqua"},{"text":"Purple","color":"dark_purple","bold":true},{"text":" team as ","color":"aqua"},{"text":"Ready!","color":"green","bold":true,"underlined":true}]
tag @a[team=Purple,tag=ClickedReady] remove ClickedReady
tag @s add ClickedReady
scoreboard players add $PurpleReady CmdData 1
execute if score $PurpleReady CmdData matches 2.. run scoreboard players set $PurpleReady CmdData 0
execute if score $PurpleReady CmdData matches 1 run data modify block -44 -28 0 front_text.messages[3] set value '{"extra":[{"color":"dark_purple","text":"Purple: "},{"color":"#55FF55","text":"✔","bold":true}],"text":""}'
execute if score $PurpleReady CmdData matches 0 run data modify block -44 -28 0 front_text.messages[3] set value '{"extra":[{"color":"dark_purple","text":"Purple: "},{"color":"red","text":"❌","bold":true}],"text":""}'
trigger readyup set 0