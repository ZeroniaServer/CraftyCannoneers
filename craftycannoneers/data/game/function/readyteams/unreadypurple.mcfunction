playsound unready master @s ~ ~ ~ 1 0.6
tag @a[team=Purple] remove ClickedReady
title @a[tag=!inParkour,team=!Spectator] actionbar ["",{translate:"game.marked_ready",color:"aqua",with:[{selector:"@s",bold:true},{translate:"game.marked_ready.purple",color:"dark_purple",bold:true},{translate:"game.marked_ready.not",color:"red",bold:true,underlined:true}]}]
scoreboard players set $PurpleReady CmdData 0
function game:setreadysign
trigger readyup set 0