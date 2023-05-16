playsound unready master @s ~ ~ ~ 1 0.6
tag @a[team=Orange] remove ClickedReady
title @a[tag=!inParkour,team=!Spectator] actionbar ["",{"selector":"@s","bold":true},{"text":" marked ","color":"aqua"},{"text":"Orange","color":"gold","bold":true},{"text":" team as ","color":"aqua"},{"text":"Not Ready.","color":"red","bold":true,"underlined":true}]
scoreboard players set $OrangeReady CmdData 0
execute if score $OrangeReady CmdData matches 1 run data modify block -44 -28 0 front_text.messages[2] set value '{"extra":[{"color":"gold","text":"Orange: "},{"color":"#55FF55","text":"✔","bold":true}],"text":""}'
execute if score $OrangeReady CmdData matches 0 run data modify block -44 -28 0 front_text.messages[2] set value '{"extra":[{"color":"gold","text":"Orange: "},{"color":"red","text":"❌","bold":true}],"text":""}'
trigger readyup set 0