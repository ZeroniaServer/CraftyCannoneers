playsound unready master @s ~ ~ ~ 1 0.6
tag @a[team=Purple] remove ClickedReady
title @a[tag=!inParkour,team=!Spectator] actionbar ["",{"selector":"@s","bold":true},{"text":" marked ","color":"aqua"},{"text":"Purple","color":"dark_purple","bold":true},{"text":" team as ","color":"aqua"},{"text":"Not Ready.","color":"red","bold":true,"underlined":true}]
scoreboard players set $PurpleReady CmdData 0
execute if score $PurpleReady CmdData matches 1 run data merge block -44 -28 0 {Text4:'{"extra":[{"color":"dark_purple","text":"Purple: "},{"color":"#55FF55","text":"✔","bold":true}],"text":""}'}
execute if score $PurpleReady CmdData matches 0 run data merge block -44 -28 0 {Text4:'{"extra":[{"color":"dark_purple","text":"Purple: "},{"color":"red","text":"❌","bold":true}],"text":""}'}
trigger readyup set 0